/************************************************************************/
/*									*/
/*  This is the CMEM_RCC driver	 					*/
/*  Its purpose is to provide user applications with contiguous data 	*/
/*  buffers for DMA operations. 					*/
/*									*/
/*  12. Dec. 01  MAJO  created						*/
/*									*/
/*******C 2005 - The software with that certain something****************/

/************************************************************************/
/*NOTES:								*/
/*- This driver should work on kernels from 2.6.9 onwards		*/
/************************************************************************/

#include <linux/init.h>           //MJ: for 2.6, p30
#include <linux/module.h>
#include <linux/moduleparam.h>    //MJ: for 2.6, p30
#include <linux/kernel.h>
#include <linux/stat.h>           //MJ: for 2.6, e.g. for module_param
#include <linux/fs.h>
#include <linux/sched.h>          //MJ: for current->pid (first needed with SLC6)
#include <linux/string.h>
#include <linux/errno.h>
#include <linux/spinlock.h>       //For the spin-lock
#include <linux/mm.h>
#include <linux/slab.h>
#include <linux/cdev.h>           //e.g. for cdev_alloc
#include <linux/proc_fs.h>
#include <linux/version.h>
#ifdef USE_BPA
  #include <linux/bigphysarea.h>
#endif

#include <asm/io.h>
#include <linux/uaccess.h>
#include <asm/page.h>
#include "cmem_rcc/cmem_rcc_drv.h"

#define MAX_GFPBPA_SIZE (128 * 1024)  //128 GB

// Globals
static int gfpbpainit_level, membpainit_level, debug = 0, errorlog = 1, ram_top = 0, ram_size = 0, gfpbpa_zone = 0, gfpbpa_quantum = 1;
static char *proc_read_text;
static buffer_t *buffer_table;
static u_long gfpbpa_base = 0, gfpbpa_size = 0, membpa = 0, gfpbpa = 0, *sram_p_addr, gfpbpa_array[MAX_GFPBPA_SIZE], gfpbpa_num_pages;
static u_int gfpbpa_order;
static dev_t major_minor;
static struct cdev *cmem_rcc_cdev;
static range_t *membpafree_list = NULL, *gfpbpafree_list = NULL;
static range_t *membpaused_list = NULL, *gfpbpaused_list = NULL;
static DEFINE_SPINLOCK(slock);


/******************************/
/*Standard function prototypes*/
/******************************/
static int cmem_rcc_open(struct inode *inode, struct file *file);
static int cmem_rcc_release(struct inode *inode, struct file *file);
static long cmem_rcc_ioctl(struct file *file, u_int cmd, u_long arg);
static int cmem_rcc_mmap(struct file *file, struct vm_area_struct *vma);
static ssize_t cmem_rcc_proc_write(struct file *file, const char *buffer, size_t count, loff_t *startOffset);
static ssize_t cmem_rcc_proc_read(struct file *file, char *buf, size_t count, loff_t *startOffset);


#if LINUX_VERSION_CODE > KERNEL_VERSION(2,6,17)
void* bigphysarea_alloc_pages(int count, int align, int priority);
void bigphysarea_free_pages(void *base);

void *bigphysarea_alloc_pages(int count, int align, int priority)
{
  kerror(("cmem_rcc: BPA is not supported\n"));
  return(0);
}
void bigphysarea_free_pages(void *base)
{
  kerror(("cmem_rcc: BPA is not supported\n"));
  return;
}
#endif


/***************************************************************/
/* Use /sbin/modinfo <module name> to extract this information */
/***************************************************************/
module_param (debug, int, S_IRUGO | S_IWUSR);  //MJ: for 2.6 p37
MODULE_PARM_DESC(debug, "1 = enable debugging   0 = disable debugging");

module_param (errorlog, int, S_IRUGO | S_IWUSR);  //MJ: for 2.6 p37
MODULE_PARM_DESC(errorlog, "1 = enable error logging   0 = disable error logging");

module_param (ram_top, int, S_IRUGO | S_IWUSR);
MODULE_PARM_DESC(ram_top, "The physical size of the system RAM in MB");

module_param (ram_size, int, S_IRUGO | S_IWUSR);  //MJ: for 2.6 p37
MODULE_PARM_DESC(ram_size, "The amount of RAM in MB that will be used for the internal-BPA (mem= variant)");

module_param (gfpbpa_size, long, S_IRUGO | S_IWUSR);  //MJ: for 2.6 p37
MODULE_PARM_DESC(gfpbpa_size, "The amount of RAM in MB that will be used for the internal-BPA (get_free_pages variant)");

module_param (gfpbpa_quantum, int, S_IRUGO | S_IWUSR);  //MJ: for 2.6 p37
MODULE_PARM_DESC(gfpbpa_quantum, "The size (in MB) of a page allocated via get_free_pages for the internal-BPA (get_free_pages variant)");

module_param (gfpbpa_zone, int, S_IRUGO | S_IWUSR);  //MJ: for 2.6 p37
MODULE_PARM_DESC(gfpbpa_zone, "0: Anywhere in the RAM,  1: In the 32bit address range");

MODULE_DESCRIPTION("Allocation of contiguous memory");
MODULE_AUTHOR("Markus Joos, CERN/EP");
MODULE_LICENSE("Dual BSD/GPL");
MODULE_VERSION("5.0");


// The ordinary device operations
static struct file_operations fops =
{
  .owner          = THIS_MODULE,
  .unlocked_ioctl = cmem_rcc_ioctl,
  .open           = cmem_rcc_open,
  .mmap           = cmem_rcc_mmap,
  .release        = cmem_rcc_release,
  .read           = cmem_rcc_proc_read,
  .write          = cmem_rcc_proc_write,
};

// memory handler functions. MJ: Not actually required. Just for kdebug
static struct vm_operations_struct cmem_rcc_vm_ops =
{
  .close = cmem_rcc_vmaClose,
  .open  = cmem_rcc_vmaOpen,      //MJ: Note the comma at the end of the list!
};


/*****************************/
/* Standard driver functions */
/*****************************/

/****************************/
static int cmem_rcc_init(void)
/****************************/
{
  int ret, start, size, loop, ecode = 0;
  static u_long *sram_k_addr;
  static struct proc_dir_entry *cmem_rcc_file;

  if(ram_size)
  {
    size = ram_size * 1024 * 1024;
    start = (ram_top * 1024 * 1024) - size;
    //Remap the memory that was hidden from Linux
    kdebug(("cmem_rcc(cmem_rcc_init): calling ioremap with start = 0x%08x and size = 0x%08x\n", start, size));
    membpa = (u_long)ioremap(start, size);
    if(membpa == 0)
    {
      kerror(("cmem_rcc(cmem_rcc_init): failed to ioremap hidden memory\n"));
      ecode = -ENOMEM;
      goto fail1;
    }
    kdebug(("cmem_rcc(cmem_rcc_init): hidden memory mapped to address 0x%016lx\n", membpa));

    membpainit_level = 1;
  }
  else
    kdebug(("cmem_rcc(cmem_rcc_init): No hidden memory defined\n"));

  if(gfpbpa_size)
  {
    ret = gfpbpa_init();
    if (ret == 1)
    {
      ecode = -ENOMEM;
      goto fail2;
    }
    gfpbpainit_level = 1;
  }
  else
    kdebug(("cmem_rcc(cmem_rcc_init): An internal BPA was not requested\n"));

  ecode = alloc_chrdev_region(&major_minor, 0, 1, "cmem_rcc"); //MJ: for 2.6 p45
  if (ecode)
  {
    kerror(("cmem_rcc(cmem_rcc_init): failed to obtain device numbers\n"));
    goto fail3;
  }

  proc_read_text = (char *)kmalloc(MAX_PROC_TEXT_SIZE, GFP_KERNEL);
  if (proc_read_text == NULL)
  {
    ecode = -ENOMEM;
    kerror(("cmem_rcc(cmem_rcc_init): error from kmalloc\n"));
    goto fail4;
  }

  // Install /proc entry
  cmem_rcc_file = proc_create("cmem_rcc", 0644, NULL, &fops);
  if (cmem_rcc_file == NULL)
  {
    kerror(("cmem_rcc(cmem_rcc_init): error from call to create_proc_entry\n"));
    ecode = -EFAULT;
    goto fail5;
  }

  // Allocate memory for the buffer table
  kdebug(("cmem_rcc(cmem_rcc_init): MAX_BUFFS        = %d\n", MAX_BUFFS));
  kdebug(("cmem_rcc(cmem_rcc_init): sizeof(buffer_t) = %lu\n", (u_long)sizeof(buffer_t)));
  kdebug(("cmem_rcc(cmem_rcc_init): need %ld bytes\n", MAX_BUFFS * (u_long)sizeof(buffer_t)));
  buffer_table = (buffer_t *)kmalloc(MAX_BUFFS * sizeof(buffer_t), GFP_KERNEL);
  if (buffer_table == NULL)
  {
    kerror(("cmem_rcc(cmem_rcc_init): unable to allocate memory for buffer table\n"));
    ecode = -EFAULT;
    goto fail6;
  }

  // Clear the buffer table
  for(loop = 0; loop < MAX_BUFFS; loop++)
  {
    buffer_table[loop].paddr  = 0;
    buffer_table[loop].size   = 0;
    buffer_table[loop].used   = 0;
    buffer_table[loop].locked = 0;
    buffer_table[loop].type   = 0;
    buffer_table[loop].pid    = 0;
  }

  // Temporarily allocate the first page to get the PCI base address for the auto-map feature in vmeconfig
#ifdef USE_BPA
  sram_k_addr = (u_long *) bigphysarea_alloc_pages(1, 0, GFP_KERNEL);
  if (sram_k_addr)
  {
    //MJ: Rubini does not like virt_to_bus but for the simple thing we want to do here it is probably OK
    sram_p_addr = (u_long *) virt_to_bus(sram_k_addr);
    kdebug(("cmem_rcc(cmem_rcc_init): sram_k_addr = 0x%016lx\n", (u_long)sram_k_addr));
    kdebug(("cmem_rcc(cmem_rcc_init): sram_p_addr = 0x%016lx\n", (u_long)sram_p_addr));
    bigphysarea_free_pages((void *)sram_k_addr);
  }
#else
  sram_k_addr = 0;
#endif
  if (!sram_k_addr)
  {
    kerror(("cmem_rcc(cmem_rcc_init): Failed to determine the BPA base address\n"));
    kerror(("cmem_rcc(cmem_rcc_init): Check if BPA memory has been reserved at boot time\n"));
    sram_p_addr = 0;
  }

  cmem_rcc_cdev = (struct cdev *)cdev_alloc();      //MJ: for 2.6 p55
  cmem_rcc_cdev->ops = &fops;
  ecode = cdev_add(cmem_rcc_cdev, major_minor, 1);  //MJ: for 2.6 p56
  if (ecode)
  {
    kerror(("cmem_rcc(cmem_rcc_init): error from call to cdev_add.\n"));
    goto fail7;
  }

  kdebug(("cmem_rcc(cmem_rcc_init): driver loaded; major device number = %d\n", MAJOR(major_minor)));
  return(0);

  fail7:
    kfree(buffer_table);

  fail6:
    remove_proc_entry("cmem_rcc", NULL);

  fail5:
    kfree(proc_read_text);

  fail4:
    unregister_chrdev_region(major_minor, 1); //MJ: for 2.6 p45

  fail3:
    if (gfpbpainit_level == 1)
    {
      for(loop = 0; loop < gfpbpa_num_pages; loop++)
        free_pages(gfpbpa_array[loop], gfpbpa_order);
    }

  fail2:
    if(membpa)
      iounmap((void *)membpa);

  fail1:
    return(ecode);
}


/********************************/
static void cmem_rcc_cleanup(void)
/********************************/
{
  int loop, loop2;
  struct page *page_ptr;

  // Release orphaned buffers
  for(loop = 0; loop < MAX_BUFFS; loop++)
  {
    if (buffer_table[loop].used)
    {
      if (buffer_table[loop].locked)
      {
        kdebug(("cmem_rcc(cmem_rcc_cleanup): releasing locked buffer: type=%d  paddr=0x%016lx  size=0x%016lx  name=%s\n",
        buffer_table[loop].type, buffer_table[loop].paddr, buffer_table[loop].size, buffer_table[loop].name));
      }
      else
      {
        kdebug(("cmem_rcc(cmem_rcc_cleanup): Releasing orphaned buffer: type=%d  paddr=0x%016lx  size=0x%016lx  name=%s\n",
        buffer_table[loop].type, buffer_table[loop].paddr, buffer_table[loop].size, buffer_table[loop].name));
      }

      if (buffer_table[loop].type == TYPE_GFP)
      {
	// unreserve all pages
	page_ptr = virt_to_page(buffer_table[loop].kaddr);

	for (loop2 = (1 << buffer_table[loop].order); loop2 > 0; loop2--, page_ptr++)
              clear_bit(PG_reserved, &page_ptr->flags);

	// free the area
	free_pages(buffer_table[loop].kaddr, buffer_table[loop].order);
      }
      else if (buffer_table[loop].type == TYPE_OLDBPA)
      {
#ifdef USE_BPA
        bigphysarea_free_pages((void *)buffer_table[loop].kaddr);
#else
        kerror(("cmem_rcc(cmem_rcc_cleanup): Cannot free BPA orphans on a system without BPA support\n"));
#endif
      }

      else if (buffer_table[loop].type == TYPE_MEMBPA)
        membpa_free_pages((void *)buffer_table[loop].kaddr, buffer_table[loop].type);

      else //TYPE_GFPBPA
      {
        membpa_free_pages((void *)buffer_table[loop].kaddr, buffer_table[loop].type);

        // unreserve all pages
        page_ptr = virt_to_page(buffer_table[loop].kaddr);

        for (loop2 = buffer_table[loop].order; loop2 > 0; loop2--, page_ptr++)
          clear_bit(PG_reserved, &page_ptr->flags);
      }
    }
  }

  kdebug(("cmem_rcc(cmem_rcc_cleanup): releasing gfp_bpa pages\n"));
  for(loop = 0; loop < gfpbpa_num_pages; loop++)
  {
    kdebug(("cmem_rcc(cmem_rcc_cleanup): releasing page with kaddr = 0x%016lx\n", gfpbpa_array[loop]));
    free_pages(gfpbpa_array[loop], gfpbpa_order);
  }

  cdev_del(cmem_rcc_cdev);                     //MJ: for 2.6 p56

  // Remove /proc entry
  remove_proc_entry("cmem_rcc", NULL);
  kfree(proc_read_text);

  // Return the buffer table
  kfree(buffer_table);

  // Return the memory for the free lists(s)
  if (membpafree_list)
  {
    kdebug(("cmem_rcc(cmem_rcc_cleanup): freeing membpafree_list\n"));
    kfree(membpafree_list);
  }
  if (gfpbpafree_list)
  {
    kdebug(("cmem_rcc(cmem_rcc_cleanup): freeing gfpbpafree_list\n"));
    kfree(gfpbpafree_list);
  }

  // Unregister the device
  unregister_chrdev_region(major_minor, 1); //MJ: for 2.6 p45

  //Unmap the hidden memory
  if(membpa)
  {
    kdebug(("cmem_rcc(cmem_rcc_cleanup): Calling iounmap for address 0x%016lx\n", membpa));
    iounmap((void *)membpa);
  }
}


module_init(cmem_rcc_init);    //MJ: for 2.6 p16
module_exit(cmem_rcc_cleanup); //MJ: for 2.6 p16


/**************************************************************/
static int cmem_rcc_open(struct inode *inode, struct file *file)
/**************************************************************/
{
  int loop;
  private_stuff *pptr;

  kdebug(("cmem_rcc(cmem_rcc_open): function called for file at 0x%016lx\n", (u_long)file))
  //reserve space to store information about the memory buffers managed by this "file"
  pptr = (private_stuff *)kmalloc(sizeof(private_stuff), GFP_KERNEL);
  if (pptr == NULL)
  {
    kerror(("cmem_rcc(cmem_rcc_open): error from kmalloc\n"));
    return(-EFAULT);
  }

  //Initialize the space
  for (loop = 0; loop < MAX_BUFFS; loop++)
    pptr->buffer[loop] = 0;

  file->private_data = pptr;
  kdebug(("cmem_rcc(cmem_rcc_open): private_data = 0x%016lx\n", (u_long)file->private_data));

  return(0);
}


/*****************************************************************/
static int cmem_rcc_release(struct inode *inode, struct file *file)
/*****************************************************************/
{
  int loop, loop2;
  struct page *page_ptr;
  private_stuff *pptr;

  kdebug(("cmem_rcc(cmem_rcc_release): function called from process %d for file at 0x%016lx\n", current->pid, (u_long)file));
  pptr = (private_stuff *) file->private_data;

  // Release orphaned buffers of the current process
  

//MJ-SMP: protect this fragment (preferrably with a spinlock)
  for(loop = 0; loop < MAX_BUFFS; loop++)
  {
    if ((pptr->buffer[loop] == 1) && (!(buffer_table[loop].locked == 1)))
    {
      if (buffer_table[loop].type == TYPE_GFP)
      {
	// unreserve all pages
	page_ptr = virt_to_page(buffer_table[loop].kaddr);

	for (loop2 = (1 << buffer_table[loop].order); loop2 > 0; loop2--, page_ptr++)
          clear_bit(PG_reserved, &page_ptr->flags);

	// free the area
	free_pages(buffer_table[loop].kaddr, buffer_table[loop].order);
      }
      else if (buffer_table[loop].type == TYPE_OLDBPA)
      {
#ifdef USE_BPA
        bigphysarea_free_pages((void *)buffer_table[loop].kaddr);
#else
        kerror(("cmem_rcc(cmem_rcc_release): Cannot free BPA orphans on a system without BPA support\n"));
#endif
      }
      else if (buffer_table[loop].type == TYPE_MEMBPA)
        membpa_free_pages((void *)buffer_table[loop].kaddr, buffer_table[loop].type);

      else //TYPE_GFPBPA
      {
        membpa_free_pages((void *)buffer_table[loop].kaddr, buffer_table[loop].type);

	// unreserve all pages
	page_ptr = virt_to_page(buffer_table[loop].kaddr);

	for (loop2 = buffer_table[loop].order; loop2 > 0; loop2--, page_ptr++)
          clear_bit(PG_reserved, &page_ptr->flags);
      }

      kdebug(("cmem_rcc(cmem_rcc_release): Releasing orphaned buffer of process %d: type=%d  paddr=0x%016lx  size=0x%016lx  name=%s\n",
      buffer_table[loop].pid, buffer_table[loop].type, buffer_table[loop].paddr, buffer_table[loop].size, buffer_table[loop].name));

      // clear the entry in the buffer table
      buffer_table[loop].paddr = 0;
      buffer_table[loop].kaddr = 0;
      buffer_table[loop].size  = 0;
      buffer_table[loop].type  = 0;
      buffer_table[loop].pid   = 0;
      buffer_table[loop].order = 0;
      buffer_table[loop].used  = 0;
      pptr->buffer[loop] = 0;
    }
  }
//MJ-SMP: end of protected zone

  kfree(pptr);
  return(0);
}


/******************************************************************/
static long cmem_rcc_ioctl(struct file *file, u_int cmd, u_long arg)
/******************************************************************/
{
  private_stuff *pptr;

  int cpid;
  u_long irq_flags;
  cpid = current->pid;

  kdebug(("cmem_rcc(ioctl, %d): cmd = %u (0x%08x)\n", cpid, cmd, cmd));
  pptr = (private_stuff *) file->private_data;

  switch (cmd)
  {
    case CMEM_RCC_GET:
    {
      u_int loop, tnum, ok, pagecount;
      cmem_rcc_t uio_desc;
      struct page *page_ptr;

      if (copy_from_user(&uio_desc, (void *)arg, sizeof(cmem_rcc_t)) !=0)
      {
        kerror(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): error in from copy_from_user\n", cpid));
        return(-CMEM_RCC_CFU);
      }
      kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): uio_desc.order = 0x%08x\n", cpid, uio_desc.order));
      kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): uio_desc.size = 0x%016lx\n", cpid, uio_desc.size));
      //Note: depending on the type of buffer either "order" or "size" is required. The other parameter is dummy
      kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): uio_desc.type = 0x%08x\n", cpid, uio_desc.type));

      spin_lock_irqsave(&slock, irq_flags);
      // Look for a free slot in the buffer table
      ok = 0;
      for(tnum = 0; tnum < MAX_BUFFS; tnum++)
      {
        if (buffer_table[tnum].used == 0)
        {
          buffer_table[tnum].used = 1;  //This is to reserve the entry
          pptr->buffer[tnum] = 1;       //Remember which file this buffer will belong to
          uio_desc.handle = tnum;
          ok = 1;
          kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): tnum = %d\n", cpid, tnum));
          break;
        }
      }
      spin_unlock_irqrestore(&slock, irq_flags);

      if (!ok)
      {
        kerror(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): all buffers are in use\n", cpid));
        return(-CMEM_RCC_OVERFLOW);
      }

      if(uio_desc.type == TYPE_GFP)
      {
	uio_desc.kaddr = 0;
	kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): calling __get_free_pages\n", cpid));

	if(gfpbpa_zone)
	{
	  kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): allocating memory from DMA32 zone\n", cpid));
	  uio_desc.kaddr = __get_free_pages(GFP_DMA32, uio_desc.order);
	}
	else
	{
	  kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): allocating memory from any zone\n", cpid));
	  uio_desc.kaddr = __get_free_pages(GFP_ATOMIC, uio_desc.order);
	}

	kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): __get_free_pages returns address 0x%016lx\n", cpid, (u_long)uio_desc.kaddr));

	if (!uio_desc.kaddr)
	{
          kerror(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): error from __get_free_pages for order=%d\n", cpid, uio_desc.order));
          spin_lock_irqsave(&slock, irq_flags);
          buffer_table[tnum].used = 0;  // No longer required
          pptr->buffer[tnum] = 0;
          spin_unlock_irqrestore(&slock, irq_flags);
          return(-CMEM_RCC_GFP);
	}

        uio_desc.paddr = virt_to_bus((void *) uio_desc.kaddr);
	kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): physical address = 0x%016lx\n", cpid, uio_desc.paddr));

    #ifdef BUILD_64_BIT
        if(gfpbpa_zone && ((uio_desc.paddr >> 32) != 0))
	{
          kerror(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): physical address (0x%016lx) is not below the 4GB limit\n", cpid, uio_desc.paddr));
	  free_pages(uio_desc.kaddr, uio_desc.order);
          spin_lock_irqsave(&slock, irq_flags);
          buffer_table[tnum].used = 0;  // No longer required
          pptr->buffer[tnum] = 0;
          spin_unlock_irqrestore(&slock, irq_flags);
          return(-CMEM_RCC_ABOVE4G);
        }
    #endif

	// Reserve all pages to make them remapable
	page_ptr = virt_to_page(uio_desc.kaddr);

	kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): reserving pages\n", cpid));
	for (loop = (1 << uio_desc.order); loop > 0; loop--, page_ptr++)
          set_bit(PG_reserved, &page_ptr->flags);            //MJ: have a look at the kernel book

	uio_desc.size = PAGE_SIZE * (1 << uio_desc.order);
        buffer_table[tnum].order  = uio_desc.order;
      }
      else
      {
        pagecount = (int)((uio_desc.size - 1) / PAGE_SIZE + 1); // pages
        buffer_table[tnum].order = pagecount;  //MJ note: for the BPA variant we abuse "order". It is not the "order" but the "number of pages"
        kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): requested number of BPA pages = %d\n", cpid, pagecount));

        if(uio_desc.type == TYPE_OLDBPA)
        {
#ifdef USE_BPA
          kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): Pool: BPA\n", cpid));
          uio_desc.kaddr = (u_long)bigphysarea_alloc_pages(pagecount, 0, GFP_KERNEL);
          uio_desc.paddr = virt_to_bus((void *) uio_desc.kaddr);
#else
	  kerror(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): Pool: BPA is not supported\n", cpid));
	  return(-CMEM_RCC_BPA);
#endif
	}
	else if(uio_desc.type == TYPE_GFPBPA)
	{
	  kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): Pool: GFPBPA\n", cpid));
	  uio_desc.kaddr = (u_long)membpa_alloc_pages(pagecount, 0, GFP_KERNEL, uio_desc.type);
	  if (!uio_desc.kaddr)
	  {
            kerror(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): membpa_alloc_pages returns 0\n", cpid));
            kerror(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): uio_desc.handle = %d\n", cpid, uio_desc.handle));
            spin_lock_irqsave(&slock, irq_flags);
            buffer_table[tnum].used = 0;  // No longer required
            pptr->buffer[tnum] = 0;
            spin_unlock_irqrestore(&slock, irq_flags);
            return(-CMEM_RCC_BPA);
	  }

          uio_desc.paddr = virt_to_bus((void *) uio_desc.kaddr);
	  kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET,GFPBPA, %d): uio_desc.kaddr = 0x%016lx\n", cpid, uio_desc.kaddr));
	  kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET,GFPBPA, %d): uio_desc.paddr = 0x%016lx\n", cpid, uio_desc.paddr));

	  // Reserve all pages to make them remapable
          page_ptr = virt_to_page(uio_desc.kaddr);
	  kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): reserving %d pages\n", cpid, pagecount));

	  for (loop = pagecount; loop > 0; loop--, page_ptr++)
	  {
            kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): Calling set_bit for address  = 0x%016lx\n", cpid, (u_long)&page_ptr->flags));
            set_bit(PG_reserved, &page_ptr->flags);            //MJ: have a look at the kernel book   //Ralf crash
	  }
	}
	else
	{
	  kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): Pool: MEMBPA\n", cpid));
	  uio_desc.kaddr = (u_long)membpa_alloc_pages(pagecount, 0, GFP_KERNEL, uio_desc.type);
          uio_desc.paddr = ((ram_top - ram_size) * 1024 * 1024) + uio_desc.kaddr - membpa;
	  kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): uio_desc.kaddr = 0x%016lx\n", cpid, uio_desc.kaddr));
	  kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): uio_desc.paddr = 0x%016lx\n", cpid, uio_desc.paddr));
	}

        uio_desc.size = PAGE_SIZE * pagecount;
	if (uio_desc.kaddr == 0)
	{
	  kerror(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): error on buffer allocation\n", cpid));
          spin_lock_irqsave(&slock, irq_flags);
          buffer_table[tnum].used = 0;  //Not required any more
          pptr->buffer[tnum] = 0;
          spin_unlock_irqrestore(&slock, irq_flags);
	  return(-CMEM_RCC_BPA);
	}
      }

      // Complete the entry in the buffer table
      buffer_table[tnum].size   = uio_desc.size;
      buffer_table[tnum].paddr  = uio_desc.paddr;
      buffer_table[tnum].kaddr  = uio_desc.kaddr;
      buffer_table[tnum].pid    = current->pid;
      buffer_table[tnum].type   = uio_desc.type;
      buffer_table[tnum].locked = 0;
      strcpy(buffer_table[tnum].name, uio_desc.name);

      kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): PAGE_SIZE       = 0x%08x\n", cpid, (u_int)PAGE_SIZE));
      kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): buffer_table[%d].kaddr = 0x%016lx\n", cpid, tnum, buffer_table[tnum].kaddr));
      kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): buffer_table[%d].paddr = 0x%016lx\n", cpid, tnum, buffer_table[tnum].paddr));
      kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): buffer_table[%d].size  = 0x%016lx\n", cpid, tnum, buffer_table[tnum].size));
      kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): buffer_table[%d].name  = %s\n", cpid, tnum, buffer_table[tnum].name));
      kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): buffer_table[%d].order = 0x%08x\n", cpid, tnum, (u_int)buffer_table[tnum].order));
      kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): buffer_table[%d].type  = 0x%08x\n", cpid, tnum, (u_int)buffer_table[tnum].type));
      kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): uio_desc.handle = 0x%08x\n", cpid, (u_int)uio_desc.handle));

      if (copy_to_user((void *)arg, &uio_desc, sizeof(cmem_rcc_t)) != 0)
      {
        kerror(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): error in from copy_to_user\n", cpid));
        return(-CMEM_RCC_CTU);
      }

      kdebug(("cmem_rcc(ioctl,CMEM_RCC_GET, %d): done\n", cpid));
      break;
    }

    case CMEM_RCC_FREE:
    {
      u_int handle, loop;
      struct page *page_ptr;

      if (copy_from_user(&handle, (void *)arg, sizeof(int)) !=0)
      {
        kerror(("cmem_rcc(ioctl,CMEM_RCC_FREE, %d): error in from copy_from_user\n", cpid));
        return(-CMEM_RCC_CFU);
      }

      kdebug(("cmem_rcc(ioctl,CMEM_RCC_FREE, %d): handle = 0x%08x\n", cpid, handle));

//MJ-SMP: protect this fragment (preferrably with a spinlock)
      spin_lock_irqsave(&slock, irq_flags);
      // Check if the handle makes sense
      if (buffer_table[handle].used == 0)
      {
        kerror(("cmem_rcc(ioctl,CMEM_RCC_FREE, %d): Invalid handle\n", cpid));
        return(-CMEM_RCC_ILLHAND);
      }
      buffer_table[handle].used = 0;
      spin_unlock_irqrestore(&slock, irq_flags);
//MJ-SMP: end of protected zone

      if (buffer_table[handle].type == TYPE_GFP)
      {
	// unreserve all pages
	kdebug(("cmem_rcc(ioctl,CMEM_RCC_FREE, %d): unreserving GFP pages\n", cpid));
	page_ptr = virt_to_page(buffer_table[handle].kaddr);

	for (loop = (1 << buffer_table[handle].order); loop > 0; loop--, page_ptr++)
          clear_bit(PG_reserved, &page_ptr->flags);

	// free the area
	free_pages(buffer_table[handle].kaddr, buffer_table[handle].order);
	kdebug(("cmem_rcc(ioctl,CMEM_RCC_FREE, %d): pages freed\n", cpid));
      }
      else if (buffer_table[handle].type == TYPE_OLDBPA)
      {
#ifdef USE_BPA
        bigphysarea_free_pages((void *)buffer_table[handle].kaddr);
        kdebug(("cmem_rcc(ioctl,CMEM_RCC_FREE, %d): BPA memory freed @ address 0x%016lx\n", cpid, buffer_table[handle].kaddr));
#else
        kerror(("cmem_rcc(ioctl,CMEM_RCC_FREE, %d): Connot free BPA memory on a system without BPA support\n", cpid));
#endif
      }
      else if (buffer_table[handle].type == TYPE_MEMBPA)
      {
        membpa_free_pages((void *)buffer_table[handle].kaddr, buffer_table[handle].type);
        kdebug(("cmem_rcc(ioctl,CMEM_RCC_FREE, %d): MEMBPA memory freed @ address 0x%016lx\n", cpid, buffer_table[handle].kaddr));
      }
      else //TYPE_GFPBA
      {
        membpa_free_pages((void *)buffer_table[handle].kaddr, buffer_table[handle].type);
        kdebug(("cmem_rcc(ioctl,CMEM_RCC_FREE, %d): MEMBPA memory freed @ address 0x%016lx\n", cpid, buffer_table[handle].kaddr));

        // unreserve all pages
	kdebug(("cmem_rcc(ioctl,CMEM_RCC_FREE, %d): unreserving GFPBPA pages\n", cpid));
	page_ptr = virt_to_page(buffer_table[handle].kaddr);

	for (loop = buffer_table[handle].order; loop > 0; loop--, page_ptr++)
          clear_bit(PG_reserved, &page_ptr->flags);
	kdebug(("cmem_rcc(ioctl,CMEM_RCC_FREE, %d): pages unreserved\n", cpid));
      }

      // Delete the entry in the buffer table
      buffer_table[handle].paddr  = 0;
      buffer_table[handle].locked = 0;
      buffer_table[handle].pid    = 0;
      buffer_table[handle].kaddr  = 0;
      buffer_table[handle].type   = 0;
      buffer_table[handle].order  = 0;
      buffer_table[handle].size   = 0;  //This enables the entry to be re-used
      pptr->buffer[handle] = 0;

      kdebug(("cmem_rcc(ioctl,CMEM_RCC_FREE, %d): done\n", cpid));
      break;
    }

    case CMEM_RCC_LOCK:
    {
      u_int handle;

      if (copy_from_user(&handle, (void *)arg, sizeof(int)) !=0)
      {
        kerror(("cmem_rcc(ioctl,CMEM_RCC_LOCK, %d): error in from copy_from_user\n", cpid));
        return(-CMEM_RCC_CFU);
      }

      kdebug(("cmem_rcc(ioctl,CMEM_RCC_LOCK, %d): handle = 0x%08x\n", cpid, handle));

      // Check if the handle makes sense
      if (buffer_table[handle].used == 0)
      {
        kerror(("cmem_rcc(ioctl,CMEM_RCC_LOCK, %d): Invalid handle\n", cpid));
        return(-CMEM_RCC_ILLHAND);
      }

      buffer_table[handle].locked = 1;

      kdebug(("cmem_rcc(ioctl,CMEM_RCC_LOCK, %d): done\n", cpid));
      break;
    }

    case CMEM_RCC_UNLOCK:
    {
      u_int handle;

      if (copy_from_user(&handle, (void *)arg, sizeof(int)) !=0)
      {
        kerror(("cmem_rcc(ioctl,CMEM_RCC_UNLOCK, %d): error in from copy_from_user\n", cpid));
        return(-CMEM_RCC_CFU);
      }

      kdebug(("cmem_rcc(ioctl,CMEM_RCC_UNLOCK, %d): handle = 0x%08x\n", cpid, handle));

      // Check if the handle makes sense
      if (buffer_table[handle].used == 0)
      {
        kerror(("cmem_rcc(ioctl,CMEM_RCC_UNLOCK, %d): Invalid handle\n", cpid));
        return(-CMEM_RCC_ILLHAND);
      }

      buffer_table[handle].locked = 0;

      kdebug(("cmem_rcc(ioctl,CMEM_RCC_UNLOCK, %d): done\n", cpid));
      break;
    }

    case CMEM_RCC_GETPARAMS:
    {
      cmem_rcc_t uio_desc;

      if (copy_from_user(&uio_desc, (void *)arg, sizeof(cmem_rcc_t)) !=0)
      {
        kerror(("cmem_rcc(ioctl,CMEM_RCC_GETPARAMS, %d): error in from copy_from_user\n", cpid));
        return(-CMEM_RCC_CFU);
      }

      // Check if the handle makes sense
      if (buffer_table[uio_desc.handle].used == 0)
      {
        kerror(("cmem_rcc(ioctl,CMEM_RCC_GETPARAMS, %d): Invalid handle %d\n", cpid, uio_desc.handle));
        return(-CMEM_RCC_ILLHAND);
      }
      kdebug(("cmem_rcc(ioctl,CMEM_RCC_GETPARAMS, %d): called for handle %d\n", cpid, uio_desc.handle));
      uio_desc.paddr  = buffer_table[uio_desc.handle].paddr;
      uio_desc.uaddr  = buffer_table[uio_desc.handle].uaddr;
      uio_desc.kaddr  = buffer_table[uio_desc.handle].kaddr;
      uio_desc.size   = buffer_table[uio_desc.handle].size;
      uio_desc.order  = buffer_table[uio_desc.handle].order;
      uio_desc.locked = buffer_table[uio_desc.handle].locked;
      uio_desc.type   = buffer_table[uio_desc.handle].type;
      strcpy(uio_desc.name, buffer_table[uio_desc.handle].name);

      if (copy_to_user((void *)arg, &uio_desc, sizeof(cmem_rcc_t)) != 0)
      {
        kerror(("cmem_rcc(ioctl,CMEM_RCC_GETPARAMS, %d): error in from copy_to_user\n", cpid));
        return(-CMEM_RCC_CTU);
      }
      kdebug(("cmem_rcc(ioctl,CMEM_RCC_GETPARAMS, %d): done\n", cpid));
      break;
    }

    case CMEM_RCC_SETUADDR:
    {
      cmem_rcc_t uio_desc;

      if (copy_from_user(&uio_desc, (void *)arg, sizeof(cmem_rcc_t)) !=0)
      {
        kerror(("cmem_rcc(ioctl,CMEM_RCC_SETUADDR, %d): error in from copy_from_user\n", cpid));
        return(-CMEM_RCC_CFU);
      }

      // Check if the handle makes sense
      if (buffer_table[uio_desc.handle].used == 0)
      {
        kerror(("cmem_rcc(ioctl,CMEM_RCC_SETUADDR, %d): Invalid handle\n", cpid));
        return(-CMEM_RCC_ILLHAND);
      }
      kdebug(("cmem_rcc(ioctl,CMEM_RCC_SETUADDR, %d): called for handle %d\n", cpid, uio_desc.handle));
      kdebug(("cmem_rcc(ioctl,CMEM_RCC_SETUADDR, %d): uaddr = 0x%016lx\n", cpid, uio_desc.uaddr));
      buffer_table[uio_desc.handle].uaddr = uio_desc.uaddr;

      kdebug(("cmem_rcc(ioctl,CMEM_RCC_SETUADDR, %d): done\n", cpid));
      break;
    }

    case CMEM_RCC_DUMP:
    {
      char *buf;
      int len, loop;

      kdebug(("cmem_rcc(ioctl,CMEM_RCC_DUMP, %d): called\n", cpid));

      buf = (char *)kmalloc(TEXT_SIZE, GFP_KERNEL);
      if (buf == NULL)
      {
        kerror(("cmem_rcc(ioctl,CMEM_RCC_DUMP, %d): error from kmalloc\n", cpid));
        return(-CMEM_RCC_KMALLOC);
      }

      len = 0;
      len += sprintf(buf + len, "Memory allocated by __get_free_pages\n");
      len += sprintf(buf + len, "  PID |         Phys. address |               Size | Order | Locked | Name\n");
//MJ-SMP: protect this fragment (preferrably with a spinlock)
      for(loop = 0; loop < MAX_BUFFS; loop++)
      {
        if (buffer_table[loop].used && buffer_table[loop].type == TYPE_GFP)
        {
          len += sprintf(buf + len, "%5d |", buffer_table[loop].pid);
          len += sprintf(buf + len, "    0x%016lx |", buffer_table[loop].paddr);
          len += sprintf(buf + len, " 0x%016lx |", buffer_table[loop].size);
          len += sprintf(buf + len, "     %d |", buffer_table[loop].order);
          len += sprintf(buf + len, "    %s |", buffer_table[loop].locked ? "yes" : " no");
          len += sprintf(buf + len, " %s\n", buffer_table[loop].name);
        }
      }

#ifdef USE_BPA
      len += sprintf(buf + len, "Memory allocated by BigPhysArea\n");
      len += sprintf(buf + len, "  PID |         Phys. address |               Size | Locked | Name\n");
      for(loop = 0; loop < MAX_BUFFS; loop++)
      {
        if (buffer_table[loop].used && buffer_table[loop].type == TYPE_OLDBPA)
        {
          len += sprintf(buf + len, "%5d |", buffer_table[loop].pid);
          len += sprintf(buf + len, "    0x%016lx |", buffer_table[loop].paddr);
          len += sprintf(buf + len, " 0x%016lx |", buffer_table[loop].size);
          len += sprintf(buf + len, "    %s |", buffer_table[loop].locked ? "yes" : " no");
          len += sprintf(buf + len, " %s\n", buffer_table[loop].name);
        }
      }
#endif

      if(membpa)
      {
	len += sprintf(buf + len, "Memory allocated by MEMBPA\n");
	len += sprintf(buf + len, "  PID |         Phys. address |               Size | Locked | Name\n");
	for(loop = 0; loop < MAX_BUFFS; loop++)
	{
          if (buffer_table[loop].used && buffer_table[loop].type == TYPE_MEMBPA)
          {
            len += sprintf(buf + len, "%5d |", buffer_table[loop].pid);
            len += sprintf(buf + len, "    0x%016lx |", buffer_table[loop].paddr);
            len += sprintf(buf + len, " 0x%016lx |", buffer_table[loop].size);
            len += sprintf(buf + len, "    %s |", buffer_table[loop].locked ? "yes" : " no");
            len += sprintf(buf + len, " %s\n", buffer_table[loop].name);
          }
	}
      }

      if(gfpbpa)
      {
	len += sprintf(buf + len, "Memory allocated by GFPBPA\n");
	len += sprintf(buf + len, "  PID |         Phys. address |               Size | Locked | Name\n");
	for(loop = 0; loop < MAX_BUFFS; loop++)
	{
          if (buffer_table[loop].used && buffer_table[loop].type == TYPE_GFPBPA)
          {
            len += sprintf(buf + len, "%5d |", buffer_table[loop].pid);
            len += sprintf(buf + len, "    0x%016lx |", buffer_table[loop].paddr);
            len += sprintf(buf + len, " 0x%016lx |", buffer_table[loop].size);
            len += sprintf(buf + len, "    %s |", buffer_table[loop].locked ? "yes" : " no");
            len += sprintf(buf + len, " %s\n", buffer_table[loop].name);
          }
	}
      }
//MJ-SMP: end of protected zone

      if (copy_to_user((void *)arg, buf, TEXT_SIZE * sizeof(char)) != 0)
      {
	kerror(("cmem_rcc(ioctl,CMEM_RCC_DUMP, %d): error from copy_to_user\n", cpid));
	return(-CMEM_RCC_CTU);
      }

      kfree(buf);
      break;
    }
  default:
    {
      kerror(("cmem_rcc(ioctl,default): You should not be here\n"))
    }
  }
  return(0);
}


/******************************************************/
static void cmem_rcc_vmaOpen(struct vm_area_struct *vma)
/******************************************************/
{
  kdebug(("cmem_rcc_vmaOpen: Called\n"));
}


/*******************************************************/
static void cmem_rcc_vmaClose(struct vm_area_struct *vma)
/*******************************************************/
{
  kdebug(("cmem_rcc(cmem_rcc_vmaClose): Virtual address  = 0x%016lx\n", (u_long)vma->vm_start));
  kdebug(("cmem_rcc(cmem_rcc_vmaClose): mmap released\n"));
}


/*********************************************************************/
static int cmem_rcc_mmap(struct file *file, struct vm_area_struct *vma)
/*********************************************************************/
{
  u_long offset, size;

  kdebug(("cmem_rcc(cmem_rcc_mmap): cmem_rcc_mmap called\n"));
#if LINUX_VERSION_CODE < KERNEL_VERSION(3,7,0)
  vma->vm_flags |= VM_RESERVED;
#else
  vma->vm_flags |= VM_DONTEXPAND;
  vma->vm_flags |= VM_DONTDUMP;
#endif
  vma->vm_flags |= VM_LOCKED;
  kdebug(("cmem_rcc(cmem_rcc_mmap): vma->vm_end    = 0x%016lx\n", (u_long)vma->vm_end));
  kdebug(("cmem_rcc(cmem_rcc_mmap): vma->vm_start  = 0x%016lx\n", (u_long)vma->vm_start));
  kdebug(("cmem_rcc(cmem_rcc_mmap): vma->vm_offset = 0x%016lx\n", (u_long)vma->vm_pgoff << PAGE_SHIFT));
  kdebug(("cmem_rcc(cmem_rcc_mmap): vma->vm_flags  = 0x%08x\n", (u_int)vma->vm_flags));

  size = vma->vm_end - vma->vm_start;
  offset = vma->vm_pgoff << PAGE_SHIFT;

#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,18)
  if (remap_page_range(vma, vma->vm_start, offset, size, vma->vm_page_prot))
#else
  if (remap_pfn_range(vma, vma->vm_start, vma->vm_pgoff, size, vma->vm_page_prot))
#endif
  {
    kerror(("cmem_rcc(cmem_rcc_mmap): function remap_page_range failed \n"));
    return(-CMEM_RCC_MMAP);
  }
  kdebug(("cmem_rcc(cmem_rcc_mmap): vma->vm_start(2) = 0x%016lx\n", (u_long)vma->vm_start));

  vma->vm_ops = &cmem_rcc_vm_ops;
  kdebug(("cmem_rcc(cmem_rcc_mmap): cmem_rcc_mmap done\n"));
  return(0);
}


/**********************************************************************************************************/
static ssize_t cmem_rcc_proc_write(struct file *file, const char *buffer, size_t count, loff_t *startOffset)
/**********************************************************************************************************/
{
  int len, loop, loop2;
  struct page *page_ptr;
  char value[100];

  kdebug(("cmem_rcc(cmem_rcc_proc_write): cmem_rcc_proc_write called\n"));

  if(count > 99)
    len = 99;
  else
    len = count;

  if (copy_from_user(value, buffer, len))
  {
    kerror(("cmem_rcc(cmem_rcc_proc_write): error from copy_from_user\n"));
    return(-EFAULT);
  }

  kdebug(("cmem_rcc(cmem_rcc_proc_write): len = %d\n", len));
  value[len - 1] = '\0';
  kdebug(("cmem_rcc(cmem_rcc_proc_write): text passed = %s\n", value));

  if (!strcmp(value, "debug"))
  {
    debug = 1;
    kdebug(("cmem_rcc(cmem_rcc_proc_write): debugging enabled\n"));
  }

  if (!strcmp(value, "nodebug"))
  {
    kdebug(("cmem_rcc(cmem_rcc_proc_write): debugging disabled\n"));
    debug = 0;
  }

  if (!strcmp(value, "elog"))
  {
    kdebug(("cmem_rcc(cmem_rcc_proc_write): error logging enabled\n"))
    errorlog = 1;
  }

  if (!strcmp(value, "noelog"))
  {
    kdebug(("cmem_rcc(cmem_rcc_proc_write): error logging disabled\n"))
    errorlog = 0;
  }

  if (!strcmp(value, "freelock"))
  {
    kdebug(("cmem_rcc(cmem_rcc_proc_write): releasing all locked segments\n"));
//MJ-SMP: protect this fragment (preferrably with a spinlock)
    for(loop = 0; loop < MAX_BUFFS; loop++)
    {
      if (buffer_table[loop].used && buffer_table[loop].locked)
      {
        kdebug(("cmem_rcc(cmem_rcc_proc_write): releasing locked buffer: type=%d  paddr=0x%016lx  size=0x%016lx  name=%s\n", buffer_table[loop].type, buffer_table[loop].paddr, buffer_table[loop].size, buffer_table[loop].name));
	if (buffer_table[loop].type == TYPE_GFP)
	{
	  page_ptr = virt_to_page(buffer_table[loop].kaddr);  // unreserve all pages
	  for (loop2 = (1 << buffer_table[loop].order); loop2 > 0; loop2--, page_ptr++)
            clear_bit(PG_reserved, &page_ptr->flags);
	  free_pages(buffer_table[loop].kaddr, buffer_table[loop].order);  // free the area
	}
	else if (buffer_table[loop].type == TYPE_OLDBPA)
	{
#ifdef USE_BPA
	  bigphysarea_free_pages((void *)buffer_table[loop].kaddr);
#else
          kerror(("cmem_rcc(cmem_rcc_proc_write): Cannot unlock BPA pages on a system witour BPA support\n"));
#endif
	}
        else if (buffer_table[loop].type == TYPE_MEMBPA)
	  membpa_free_pages((void *)buffer_table[loop].kaddr, buffer_table[loop].type);

        else  //TYPE_GFPBPA
	{
	  membpa_free_pages((void *)buffer_table[loop].kaddr, buffer_table[loop].type);
	  //unreserve pages
	  page_ptr = virt_to_page(buffer_table[loop].kaddr);
	  for (loop2 = buffer_table[loop].order; loop2 > 0; loop2--, page_ptr++)
            clear_bit(PG_reserved, &page_ptr->flags);
        }

	// clear the entry in the buffer table
	buffer_table[loop].paddr = 0;
	buffer_table[loop].kaddr = 0;
	buffer_table[loop].size  = 0;
	buffer_table[loop].type  = 0;
	buffer_table[loop].pid   = 0;
	buffer_table[loop].order = 0;
	buffer_table[loop].used  = 0;
      }
    }
//MJ-SMP: end of protected zone
  }

  return len;
}


/************************************************************************************************/
static ssize_t cmem_rcc_proc_read(struct file *file, char *buf, size_t count, loff_t *startOffset)
/************************************************************************************************/
{
  int loop;
  static int len = 0, fuse = 1, bytes_copied = 0;
  unsigned long ret = 0;
  ssize_t retval = 0;

  kdebug(("cmem_rcc(cmem_rcc_proc_read): Called with buf         = 0x%016lx\n", (u_long)buf));
  kdebug(("cmem_rcc(cmem_rcc_proc_read): Called with startOffset = %lld\n", *startOffset));
  kdebug(("cmem_rcc(cmem_rcc_proc_read): Called with count       = %d\n", (int) count));

  if (*startOffset == 0)
  {
    kdebug(("cmem_rcc(cmem_rcc_proc_read): Creating text....\n"));
    bytes_copied = 0;
    len = 0;

    len += sprintf(proc_read_text, "\n");
    len += sprintf(proc_read_text + len, "CMEM RCC driver for release %s (based on tag %s)\n", RELEASE_NAME, CVSTAG);

    len += sprintf(proc_read_text + len, "\nThe driver was loaded with these parameters:\n");
    len += sprintf(proc_read_text + len, "gfpbpa_size = %d\n", (int)gfpbpa_size);
    len += sprintf(proc_read_text + len, "gfpbpa_quantum = %d\n", gfpbpa_quantum);
    len += sprintf(proc_read_text + len, "gfpbpa_zone = %d\n", gfpbpa_zone);

    len += sprintf(proc_read_text + len, "\n__get_free_pages\n");
    len += sprintf(proc_read_text + len, "  PID | Handle |         Phys. address |               Size | Locked | Order| Name\n");
    for(loop = 0; loop < MAX_BUFFS; loop++)
    {
      if (buffer_table[loop].used && buffer_table[loop].type == TYPE_GFP && fuse)
      {
	len += sprintf(proc_read_text + len, "%5d |", buffer_table[loop].pid);
	len += sprintf(proc_read_text + len, "%7d |", loop);
	len += sprintf(proc_read_text + len, "    0x%016lx |", buffer_table[loop].paddr);
	len += sprintf(proc_read_text + len, " 0x%016lx |", buffer_table[loop].size);
	len += sprintf(proc_read_text + len, "    %s |", buffer_table[loop].locked ? "yes" : " no");
	len += sprintf(proc_read_text + len, "    %d |", buffer_table[loop].order);
	len += sprintf(proc_read_text + len, " %s\n", buffer_table[loop].name);
      }

      if (len > (MAX_PROC_TEXT_SIZE - 1000) && fuse)
      {
        len += sprintf(proc_read_text + len, "Proc output getting too big. Truncating\n");
        fuse = 0;
      }
    }

#ifdef USE_BPA
    len += sprintf(proc_read_text + len, "\nBigPhysArea\n");
    len += sprintf(proc_read_text + len, "  PID | Handle |         Phys. address |          Size | Locked | Name\n");
    for(loop = 0; loop < MAX_BUFFS; loop++)
    {
      if (buffer_table[loop].used && buffer_table[loop].type == TYPE_OLDBPA && fuse)
      {
	len += sprintf(proc_read_text + len, "%5d |", buffer_table[loop].pid);
	len += sprintf(proc_read_text + len, "%7d |", loop);
	len += sprintf(proc_read_text + len, "    0x%016lx |", buffer_table[loop].paddr);
	len += sprintf(proc_read_text + len, "    0x%08x |", buffer_table[loop].size);
	len += sprintf(proc_read_text + len, "    %s |", buffer_table[loop].locked ? "yes" : " no");
	len += sprintf(proc_read_text + len, " %s\n", buffer_table[loop].name);
      }

      if (len > (MAX_PROC_TEXT_SIZE - 1000) && fuse)
      {
        len += sprintf(proc_read_text + len, "Proc output getting too big. Truncating\n");
        fuse = 0;
      }
    }
#endif

    if(membpa)
    {
      len += sprintf(proc_read_text + len, "\nMEMBPA (size = %d MB)\n", ram_size);
      len += sprintf(proc_read_text + len, "  PID | Handle |         Phys. address |               Size | Locked | Name\n");
      for(loop = 0; loop < MAX_BUFFS; loop++)
      {
	if (buffer_table[loop].used && buffer_table[loop].type == TYPE_MEMBPA && fuse)
	{
	  len += sprintf(proc_read_text + len, "%5d |", buffer_table[loop].pid);
	  len += sprintf(proc_read_text + len, "%7d |", loop);
	  len += sprintf(proc_read_text + len, "    0x%016lx |", buffer_table[loop].paddr);
	  len += sprintf(proc_read_text + len, " 0x%016lx |", buffer_table[loop].size);
	  len += sprintf(proc_read_text + len, "    %s |", buffer_table[loop].locked ? "yes" : " no");
	  len += sprintf(proc_read_text + len, " %s\n", buffer_table[loop].name);
	}
	if (len > (MAX_PROC_TEXT_SIZE - 1000) && fuse)
	{
          len += sprintf(proc_read_text + len, "Proc output getting too big. Truncating\n");
          fuse = 0;
	}
      }
    }

    if (gfpbpa)
    {
      len += sprintf(proc_read_text + len, "\nGFPBPA (size = %lu MB, base = 0x%016lx)\n", gfpbpa_size, gfpbpa_base);
      len += sprintf(proc_read_text + len, "  PID | Handle |         Phys. address |               Size | Locked | Name\n");
      for(loop = 0; loop < MAX_BUFFS; loop++)
      {
	if (buffer_table[loop].used && buffer_table[loop].type == TYPE_GFPBPA && fuse)
	{
	  len += sprintf(proc_read_text + len, "%5d |", buffer_table[loop].pid);
	  len += sprintf(proc_read_text + len, "%7d |", loop);
	  len += sprintf(proc_read_text + len, "    0x%016lx |", buffer_table[loop].paddr);
	  len += sprintf(proc_read_text + len, " 0x%016lx |", buffer_table[loop].size);
	  len += sprintf(proc_read_text + len, "    %s |", buffer_table[loop].locked ? "yes" : " no");
	  len += sprintf(proc_read_text + len, " %s\n", buffer_table[loop].name);
	}
	if (len > (MAX_PROC_TEXT_SIZE - 1000) && fuse)
	{
          len += sprintf(proc_read_text + len, "Proc output getting too big. Truncating\n");
          fuse = 0;
	}
      }
    }

    len += sprintf(proc_read_text + len, " \n");
    len += sprintf(proc_read_text + len, "The command 'echo <action> > /proc/cmem_rcc', executed as root,\n");
    len += sprintf(proc_read_text + len, "allows you to interact with the driver. Possible actions are:\n");
    len += sprintf(proc_read_text + len, "debug    -> enable debugging\n");
    len += sprintf(proc_read_text + len, "nodebug  -> disable debugging\n");
    len += sprintf(proc_read_text + len, "elog     -> Log errors to /var/log/messages\n");
    len += sprintf(proc_read_text + len, "noelog   -> Do not log errors to /var/log/messages\n");
    len += sprintf(proc_read_text + len, "freelock -> release all locked segments\n");
  }
  kdebug(("cmem_rcc(cmem_rcc_proc_read): len                        = %d\n", len));

  if (*startOffset >= len)
  {
    kdebug(("cmem_rcc(cmem_rcc_proc_read):thats it......\n"));
    return retval;
  } 
  
  if (*startOffset + count > len)
    count = len - *startOffset;

  ret = copy_to_user(buf, proc_read_text + bytes_copied, count);  // ret contains the amount of chars wasn't successfully written to `buf`
  kdebug(("cmem_rcc(cmem_rcc_proc_read): ret = %lu\n", ret));

  bytes_copied = bytes_copied + count - ret;
  kdebug(("cmem_rcc(cmem_rcc_proc_read): bytes_copied = %d\n", bytes_copied));

  *startOffset += count - ret;
  kdebug(("cmem_rcc(cmem_rcc_proc_read): *startOffset = %lld\n", *startOffset));
  
  retval = count - ret;
  kdebug(("cmem_rcc(cmem_rcc_proc_read): returning retval   = %ld\n", retval));
  
  return(retval);
}


/****************************************/
/* Service function (insourcing of BPA) */
/****************************************/


/************************************************/
static int membpa_init2(int priority, u_int btype)
/************************************************/
{
  range_t *free_list;

  if (btype != TYPE_GFPBPA && btype != TYPE_MEMBPA)
  {
    kerror(("cmem_rcc(membpa_init2): ERROR: btype = %d\n", btype));
    return(1);
  }

  kdebug(("cmem_rcc(membpa_init2): called with priority = %d and btype = %d\n", priority, btype));
  if ((btype == TYPE_MEMBPA && membpainit_level == 1) || (btype == TYPE_GFPBPA && gfpbpainit_level == 1))
  {
    free_list = (range_t *)kmalloc(sizeof(range_t), priority);
    if (free_list != NULL)
    {
      free_list->next = NULL;

      if (btype == TYPE_MEMBPA)
      {
        free_list->base = (void *)membpa;
        free_list->size = ram_size * 1024 * 1024;
        membpainit_level = 2;
      }
      else
      {
        free_list->base = (void *)gfpbpa;
        free_list->size = gfpbpa_size * 1024 * 1024;

	kdebug(("cmem_rcc(membpa_init2): gfpbpa_size * 1024 * 1024 = 0x%16lx\n", (gfpbpa_size * 1024 * 1024)));
	kdebug(("cmem_rcc(membpa_init2): free_list->size           = 0x%16lx\n", free_list->size));
	kdebug(("cmem_rcc(membpa_init2): gfpbpa_size               = 0x%16lx\n", gfpbpa_size));

        gfpbpainit_level = 2;
      }

      if(btype == TYPE_MEMBPA)
      {
	kdebug(("cmem_rcc(membpa_init2): Initializing membpafree_list\n"));
	membpafree_list = free_list;
      }
      else
      {
	kdebug(("cmem_rcc(membpa_init2): Initializing gfpbpafree_list\n"));
	gfpbpafree_list = free_list;
      }

      kdebug(("cmem_rcc(membpa_init2): OK\n"));
      return 0;
    }
    kerror(("cmem_rcc(membpa_init2): ERROR: free_list is NULL\n"));
  }
  kerror(("cmem_rcc(membpa_init2): ERROR: init_level != 1\n"));
  return 1;
}


/******************************************************************************/
static void *membpa_alloc_pages(int count, int align, int priority, u_int btype)
/******************************************************************************/
{
  range_t *range, **range_ptr, *new_range, *align_range;
  void *aligned_base = 0;

  kdebug(("cmem_rcc(membpa_alloc_pages): called with count = 0x%08x, align = 0x%08x, priority = 0x%08x,\n", count, align, priority));

  if ((btype == TYPE_MEMBPA && membpainit_level < 2) || (btype == TYPE_GFPBPA && gfpbpainit_level < 2))
  {
    if (membpa_init2(priority, btype))
    {
      kerror(("cmem_rcc(membpa_alloc_pages): error in membpa_init2\n"));
      return(0);
    }
  }

  if (btype == TYPE_GFPBPA)
  {
    kdebug(("cmem_rcc(membpa_alloc_pages): Memory will be allocated from the GFP pool at 0x%016lx\n", (u_long)&gfpbpafree_list));
    range_ptr = &gfpbpafree_list;
  }
  else if (btype == TYPE_MEMBPA)
  {
    kdebug(("cmem_rcc(membpa_alloc_pages): Memory will be allocated from the MEM pool\n"));
    range_ptr = &membpafree_list;
  }
  else
  {
    kerror(("cmem_rcc(membpa_alloc_pages): ERROR: btype = %d\n", btype));
    return(0);
  }

  kdebug(("cmem_rcc(membpa_alloc_pages): range_ptr is at 0x%016lx\n", (u_long)range_ptr));

  new_range   = NULL;
  align_range = NULL;

  if (align == 0)
    align = PAGE_SIZE;
  else
    align = align * PAGE_SIZE;

  kdebug(("cmem_rcc(membpa_alloc_pages): align = %d\n", align));

  // Search a free block which is large enough, even with alignment.
  while (*range_ptr != NULL)
  {
    range = *range_ptr;
    aligned_base = (void *)((((u_long)range->base + align - 1) / align) * align);
    
    if (aligned_base + count * PAGE_SIZE <= range->base + range->size)
      break;

    range_ptr = &range->next;
  }

  if (*range_ptr == NULL)
  {
    kerror(("cmem_rcc(membpa_alloc_pages): ERROR: *range_ptr is NULL\n"));   //MJ: If you get this error you have most likely requested more memory than was available in the buffer allocated at boot time
    return(0);
  }

  range = *range_ptr;
  // When we have to align, the pages needed for alignment can
  // be put back to the free pool.
  // We check here if we need a second range data structure later
  // and allocate it now, so that we don't have to check for a
  // failed kmalloc later.

  if (aligned_base - range->base + count * PAGE_SIZE < range->size)
  {
    new_range = (range_t *)kmalloc(sizeof(range_t), priority);
    if (new_range == NULL)
    {
      kerror(("cmem_rcc(membpa_alloc_pages): ERROR: new_range is NULL\n"));
      return(0);
    }
  }

  if (aligned_base != range->base)
  {
    align_range = (range_t *)kmalloc(sizeof(range_t), priority);
    if (align_range == NULL)
    {
      if (new_range != NULL)
      {
        kfree(new_range);
        kerror(("cmem_rcc(membpa_alloc_pages): ERROR: align_range is NULL\n"));
        return(0);
      }
    }

    align_range->base = range->base;
    align_range->size = aligned_base - range->base;
    range->base = aligned_base;
    range->size -= align_range->size;
    align_range->next = range;
    *range_ptr = align_range;
    range_ptr = &align_range->next;
  }

  if (new_range != NULL)
  {
    // Range is larger than needed, create a new list element for
    // the used list and shrink the element in the free list.
    new_range->base = range->base;
    new_range->size = count * PAGE_SIZE;
    range->base = new_range->base + new_range->size;
    range->size = range->size - new_range->size;
  }
  else
  {
    // Range fits perfectly, remove it from free list.
    *range_ptr = range->next;
    new_range = range;
  }
  // Insert block into used list

  if (btype == TYPE_GFPBPA)
  {
    new_range->next = gfpbpaused_list;
    gfpbpaused_list = new_range;
  }
  else
  {
    new_range->next = membpaused_list;
    membpaused_list = new_range;
  }

  return new_range->base;
}


/****************************************************/
static void membpa_free_pages(void *base, u_int btype)
/****************************************************/
{
  range_t *prev, *next, *range, **range_ptr;

  kdebug(("cmem_rcc(membpa_free_pages): called with base = 0x%016lx and btype = %d\n", (u_long)base, btype));

  if((btype != TYPE_GFPBPA) && (btype != TYPE_MEMBPA))
  {
    kerror(("cmem_rcc(membpa_free_pages): ERROR: btype is %d\n", btype));
    return;
  }

  // Search the block in the used list.
  if (btype == TYPE_GFPBPA)
    range_ptr = &gfpbpaused_list;
  else
    range_ptr = &membpaused_list;

  kdebug(("cmem_rcc(membpa_free_pages): range_ptr is at 0x%016lx\n", (u_long)range_ptr));

  for (; *range_ptr != NULL; range_ptr = &(*range_ptr)->next)
  {
    //kdebug(("cmem_rcc(membpa_free_pages): (*range_ptr)->base is 0x%016lx\n", (u_long)(*range_ptr)->base));
    if ((*range_ptr)->base == base)
       break;
  }

  if (*range_ptr == NULL)
  {
    kerror(("cmem_rcc(membpa_free_pages): membpa_free_pages(0x%016lx), not allocated!\n", (u_long)base));
    return;
  }
  range = *range_ptr;

  // Remove range from the used list:
  *range_ptr = (*range_ptr)->next;

  // The free-list is sorted by address, search insertion point and insert block in free list.
  if (btype == TYPE_GFPBPA)
    range_ptr = &gfpbpafree_list;
  else
    range_ptr = &membpafree_list;
  for (prev = NULL; *range_ptr != NULL; prev = *range_ptr, range_ptr = &(*range_ptr)->next)
    if ((*range_ptr)->base >= base)
      break;

  range->next = *range_ptr;
  *range_ptr  = range;

  // Concatenate free range with neighbors, if possible.
  // Try for upper neighbor (next in list) first, then for lower neighbor (predecessor in list).
  if (range->next != NULL && range->base + range->size == range->next->base)
  {
    next = range->next;
    range->size += range->next->size;
    range->next = next->next;
    kfree(next);
  }

  if (prev != NULL && prev->base + prev->size == range->base)
  {
    prev->size += prev->next->size;
    prev->next = range->next;
    kfree(range);
  }
}


/**************************/
static int gfpbpa_init(void)
/**************************/
{
  u_char *page_pool;
  int min_index, max_index;
  u_int skipit = 0, limit_32, pcnt = 0, block_found = 0, block_start = 0, max_chunk_sum = 0, chunk_sum = 0, chunks_required, pool_index, loop, loop2, chunk_shift, chunk_mask;
  u_long paddr, kaddr;

  page_pool = (u_char *)vmalloc(MAX_GFPBPA_SIZE); //support at most 128 GB of RAM
  if (page_pool == NULL)
  {
    kerror(("cmem_rcc(gfpbpa_init): page_pool is NULL\n"));
    return(1);
  }

  for (loop = 0; loop < MAX_GFPBPA_SIZE; loop++)
    page_pool[loop] = 0;                     //Set all pool entries to "no memory allocated"

  if (gfpbpa_quantum == 1) {chunk_shift = 20; chunk_mask = 0x0fffff;}
  if (gfpbpa_quantum == 2) {chunk_shift = 21; chunk_mask = 0x1fffff;}
  if (gfpbpa_quantum == 4) {chunk_shift = 22; chunk_mask = 0x3fffff;}
  if (gfpbpa_quantum == 8) {chunk_shift = 23; chunk_mask = 0x7fffff;}
  kdebug(("cmem_rcc(gfpbpa_init): gfpbpa_quantum = %d\n", gfpbpa_quantum));
  kdebug(("cmem_rcc(gfpbpa_init): chunk_shift    = %d\n", chunk_shift));
  chunks_required = gfpbpa_size / gfpbpa_quantum;
  kdebug(("cmem_rcc(gfpbpa_init): chunks_required = %d\n", chunks_required));

  limit_32 = (4096 / gfpbpa_quantum) - 1;
  kdebug(("cmem_rcc(gfpbpa_init): limit_32 = %d\n", limit_32));

  if (gfpbpa_quantum != 1 && gfpbpa_quantum != 2 && gfpbpa_quantum != 4 && gfpbpa_quantum != 8)
  {
    kerror(("cmem_rcc(gfpbpa_init): gfpbpa_quantum is not 1, 2, 4 or 8\n"));
    vfree((void *)page_pool);
    return(1);
  }

  if (gfpbpa_size % gfpbpa_quantum)
  {
    kerror(("cmem_rcc(gfpbpa_init): gfpbpa_size is not a multiple of gfpbpa_quantum\n"));
    vfree((void *)page_pool);
    return(1);
  }

  kdebug(("cmem_rcc(gfpbpa_init): Trying to allocate a contiguous buffer of %lu MB in pieces of %d MB\n", gfpbpa_size, gfpbpa_quantum));
  gfpbpa_order = get_order(gfpbpa_quantum * 1024 * 1024);

  //Allocate pages until we have foud a large enough contiguous buffer
  while(pcnt < MAX_GFPBPA_SIZE)
  {
    kdebug(("cmem_rcc(gfpbpa_init): Calling __get_free_pages with order = %d\n", gfpbpa_order));
    kaddr = __get_free_pages(GFP_KERNEL, gfpbpa_order);
    if (!kaddr)
    {
      kdebug(("cmem_rcc(gfpbpa_init): Failed to allocate a buffer\n"));
      break;
    }

    paddr = virt_to_bus((void *)kaddr);
    kdebug(("cmem_rcc(gfpbpa_init): Got buffer @ physical address 0x%016lx (pcnt = %d, kaddr = 0x%016lx)\n", paddr, pcnt, kaddr));

    if (paddr & chunk_mask)
    {
      kerror(("cmem_rcc(gfpbpa_init): paddr (0x%016lx) is not properly aligned to chunk_mask = 0x%08x\n", paddr, chunk_mask));
      vfree((void *)page_pool);
      return(1);
    }

    kdebug(("cmem_rcc(gfpbpa_init): paddr = 0x%016lx\n", paddr));
    pool_index = paddr >> chunk_shift;
    kdebug(("cmem_rcc(gfpbpa_init): pool_index = 0x%08x\n", pool_index));

    if (pool_index > (MAX_GFPBPA_SIZE - 1))
    {
      kerror(("cmem_rcc(gfpbpa_init): pool_index (0x%08x) out of range. You seem to have more than 128 GB of RAM\n", pool_index));

      for(loop = 0; loop < MAX_GFPBPA_SIZE; loop++)   //return memory allocated so far
      {
        if (page_pool[loop])
        {
          paddr = (u_long)loop << chunk_shift;
          kaddr = (u_long)bus_to_virt(paddr);
          kdebug(("cmem_rcc(gfpbpa_init): Returning index %d, paddr = 0x%016lx (kaddr = 0x%016lx)\n", loop, paddr, kaddr));
          free_pages(kaddr, gfpbpa_order);
        }
      }
      vfree((void *)page_pool);
      return(1);
    }
    page_pool[pool_index] = 1;

    min_index = pool_index - chunks_required + 1;
    if (min_index < 0)
      min_index = 0;

    max_index = pool_index + chunks_required - 1;
    if (max_index > MAX_GFPBPA_SIZE)
      max_index = MAX_GFPBPA_SIZE;

    if (gfpbpa_zone) //we want memory in the 32bit range
    {
      if (max_index > limit_32)
        max_index = limit_32;
    }

    max_chunk_sum = 0; 
    
    kdebug(("cmem_rcc(gfpbpa_init): new skipit = %d\n", skipit));    

    if (!skipit)
    { 
      kdebug(("cmem_rcc(gfpbpa_init): max_index = %d, min_index = %d\n", max_index, min_index));
      if (max_index > min_index)
      {
	for (loop = min_index; loop < max_index; loop++)
	{
	  chunk_sum = 0;
	  for (loop2 = 0; loop2 < chunks_required; loop2++)
            chunk_sum += page_pool[loop + loop2];

	  if (chunk_sum == chunks_required)
	  {
            kdebug(("cmem_rcc(gfpbpa_init): BLOCK FOUND\n"));
	    block_found = 1;
	    block_start = loop;
            kdebug(("cmem_rcc(gfpbpa_init): Range = %d to %d\n", block_start, block_start + chunks_required - 1));
	    break;
	  }

	  if (chunk_sum > max_chunk_sum)
	    max_chunk_sum = chunk_sum;
	}	
	kdebug(("cmem_rcc(gfpbpa_init): chunk_sum = %d, max_chunk_sum = %d\n", chunk_sum, max_chunk_sum));
      }
      skipit = chunks_required - max_chunk_sum;
      kdebug(("cmem_rcc(gfpbpa_init): skipit = %d\n", skipit));
    } 
       
    if (skipit)
      skipit--; 
      
    if (block_found)
    {
      kdebug(("cmem_rcc(gfpbpa_init): BLOCK FOUND 2\n"));
      break;
    }

    pcnt++;
  }

  //Return the pages that we don't use
  if (block_found == 0)
  {
    kdebug(("cmem_rcc(gfpbpa_init): No buffer found. Returning all pages\n"));
    for(loop = 0; loop < MAX_GFPBPA_SIZE; loop++)   //return memory allocated so far
    {
      if (page_pool[loop])
      {
	paddr = (u_long)loop << chunk_shift;
	kaddr = (u_long)bus_to_virt(paddr);
	kdebug(("cmem_rcc(gfpbpa_init): Returning index %d, paddr = 0x%016lx, kaddr = 0x%016lx)\n", loop, paddr, kaddr));
	free_pages(kaddr, gfpbpa_order);
      }
    }
  }
  else
  {
    kdebug(("cmem_rcc(gfpbpa_init): Buffer found. Returning unused pages\n"));
    for(loop = 0; loop < MAX_GFPBPA_SIZE; loop++)   //return memory allocated so far
    {
      if (page_pool[loop] && (loop < block_start || loop > (block_start + chunks_required - 1)))
      {
	paddr = (u_long)loop << chunk_shift;
	kaddr = (u_long)bus_to_virt(paddr);
	kdebug(("cmem_rcc(gfpbpa_init): Returning index %d, paddr = 0x%016lx, kaddr = 0x%016lx)\n", loop, paddr, kaddr));
	free_pages(kaddr, gfpbpa_order);
      }
    }
  }

  if(block_found)
  {
    kdebug(("cmem_rcc(gfpbpa_init): Job done. Now copying used pages\n"));
    gfpbpa_num_pages = chunks_required;
    //Copy the pages we want to keep to the global array
    for(loop = 0; loop < chunks_required ; loop++)
    {
      paddr = (u_long)(loop + block_start) << chunk_shift;
      kaddr = (u_long)bus_to_virt(paddr);
      kdebug(("cmem_rcc(gfpbpa_init): Keep page %d with kaddr = 0x%016lx, paddr = 0x%016lx\n", loop + block_start, kaddr, paddr));
      gfpbpa_array[loop] = kaddr;

      if (loop == 0)
        gfpbpa_base = paddr;
    }

    gfpbpa = gfpbpa_array[0];
    kdebug(("cmem_rcc(gfpbpa_init): End of function\n"));
    vfree((void *)page_pool);
    return(0);
  }
  else
  {
    kerror(("cmem_rcc(gfpbpa_init): No suitable buffer found. You have asked for %d chunks but not more then %d could be found\n", chunks_required, max_chunk_sum));
    gfpbpa_num_pages = 0;
    kdebug(("cmem_rcc(gfpbpa_init): End of function\n"));
    vfree((void *)page_pool);
    return(1);
  }
}















