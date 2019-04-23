/**
  *    ------------------------------------------------------------------------------
  *                                                              
  *            NIKHEF - National Institute for Subatomic Physics 
  *  
  *                        Electronics Department                
  *                                                              
  *  ----------------------------------------------------------------------------
  *  @class wupper driver
  *  
  *  
  *  @author      Andrea Borga    (andrea.borga@nikhef.nl)<br>
  *               Frans Schreuder (frans.schreuder@nikhef.nl)<br>
  * 			  Markus Joos<br>
  * 			  Jos Vermeulen<br>
  * 			  Oussama el Kharraz Alami<br>
  *  
  *  
  *  @date        08/09/2015    created
  *  
  *  @version     1.0
  *  
  *  @brief Original version (RobinNP driver) by Barry Green, Will Panduro (RHUL),
  *  Gordon Crone (UCL), Markus Joos (CERN)
  *  Adapted for WUPPER by Jos Vermeulen (Nikhef), Jan. 2015"); 
  * 
  *  @detail
  *  
  *  ----------------------------------------------------------------------------
  *  @TODO
  *   
  *  
  *  ------------------------------------------------------------------------------
  *  Wupper
  *  
  *  \copyright GNU LGPL License
  *  Copyright (c) Nikhef, Amsterdam, All rights reserved. <br>
  *  This library is free software; you can redistribute it and/or
  *  modify it under the terms of the GNU Lesser General Public
  *  License as published by the Free Software Foundation; either
  *  version 3.0 of the License, or (at your option) any later version.
  *  This library is distributed in the hope that it will be useful,
  *  but WITHOUT ANY WARRANTY; without even the implied warranty of
  *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
  *  Lesser General Public License for more details.<br>
  *  You should have received a copy of the GNU Lesser General Public
  *  License along with this library.
  */


#include <linux/version.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/pci.h>
#include <linux/mm.h>
#include <linux/proc_fs.h>
#include <linux/io.h>
#include <linux/errno.h>
#include <linux/types.h>
#include <linux/cdev.h>
#include <linux/pagemap.h>
#include <linux/page-flags.h>
#include <linux/sched.h>
#include <linux/interrupt.h>
#include <linux/time.h>
#include <linux/delay.h>

#include "wupper_common.h"


//MJ: TO-DO
//MJ: All "msi" strings could be changed too "msix" in order to indicate that the driver supports only MSI-X type interrupts

/********/
/*Macros*/
/********/
#ifdef DRIVER_DEBUG
  #define kdebug(x) {if (debug) printk x;}
#else
  #define kdebug(x)
#endif

#ifdef DRIVER_ERROR
  #define kerror(x) {if (errorlog) printk x;}
#else
  #define kerror(x)
#endif


/***********/
/*Constants*/
/***********/
#define PROC_MAX_CHARS        0x10000      //The max. length of the output of /proc/wupper
#define PCI_VENDOR_ID_WUPPER_FW  0x10ee       //Note: The different H/W types (709, 710 and 711) do not have specific F/W files
                                           //      Therefore the device ID refers to the F/W release, not to the type of PCIe card
#define PCI_DEVICE_ID_WUPPER_FW1 0x7039
#define PCI_DEVICE_ID_WUPPER_FW2 0x7038
#define FIRSTMINOR            0
#define MAXMSIX		      8            // Max. number of interrupts (MSI-X) per card


/************/
/*Prototypes*/
/************/
static int wupper_init(void);
static int wupper_Probe(struct pci_dev*, const struct pci_device_id*);
static int fill_proc_read_text(void);
static ssize_t wupper_write_procmem(struct file *file, const char *buffer, size_t count, loff_t *startOffset);
static ssize_t wupper_read_procmem(struct file *file, char *buf, size_t count, loff_t *startOffset);
static void wupper_exit(void);
static void wupper_Remove(struct pci_dev*);
int wupper_mmap(struct file*, struct vm_area_struct*);
static long wupper_ioctl(struct file *file, u_int cmd, u_long arg);
int wupper_open(struct inode*, struct file*);
int wupper_Release(struct inode*, struct file*);
void wupper_vmclose(struct vm_area_struct*);


/************/
/*Structures*/
/************/
static struct pci_device_id WUPPER_IDs[] =
{
  { PCI_DEVICE(PCI_VENDOR_ID_WUPPER_FW, PCI_DEVICE_ID_WUPPER_FW1) },
  { PCI_DEVICE(PCI_VENDOR_ID_WUPPER_FW, PCI_DEVICE_ID_WUPPER_FW2) },
  { 0, },
};

struct file_operations fops =
{
  .owner          = THIS_MODULE,
  .mmap           = wupper_mmap,
  .unlocked_ioctl = wupper_ioctl,
  .open           = wupper_open,
  .read           = wupper_read_procmem,
  .write          = wupper_write_procmem,
  .release        = wupper_Release,
};

// needed by pci_register_driver fcall
static struct pci_driver wupper_PCI_driver =
{
  .name     = "wupper",
  .id_table = WUPPER_IDs,
  .probe    = wupper_Probe,
  .remove   = wupper_Remove,
};

// memory handler functions used by mmap
static struct vm_operations_struct wupper_vm_ops =
{
  .close =  wupper_vmclose,             // mmap-close
};

struct irqInfo_struct
{
  int interrupt;
  int card;
  int reserved;
};

typedef struct
{
  uint32_t dummy[2];
} Dummy64Struct;


typedef struct
{
  Dummy64Struct Dummy0;
} BAR0CommonStruct;


/*********/
/*Globals*/
/*********/
char *devName = "wupper";  //the device name as it will appear in /proc/devices
static char *proc_read_text;
static int debug = 0, errorlog = 1;
int cardsFound = 0, interruptCount = 0;
int msixblock = MAXMSIX, irqFlag[MAXCARDS][MAXMSIX] = {{0}}, msixStatus[MAXCARDS];
int irqMasked[MAXCARDS][MAXMSIX];
u_int irqCount[MAXCARDS][MAXMSIX];
uint32_t* msixBar[MAXCARDS], msixPbaOffset[MAXCARDS];  //MJ: msixPbaOffset is only used in debug commands. Is it needed in the driver? What is it for?
card_params_t cards[MAXCARDS];
struct cdev *wupper_cdev;
dev_t first_dev;
BAR0CommonStruct *registerBase[MAXCARDS];
static struct irqInfo_struct irqInfo[MAXCARDS][MAXMSIX];
struct file *owner[MAXCARDS];

static DECLARE_WAIT_QUEUE_HEAD(waitQueue);
static DEFINE_MUTEX(procMutex);
static DEFINE_MUTEX(ownerMutex);

module_init(wupper_init);
module_exit(wupper_exit);

MODULE_DESCRIPTION("WUPPER driver");
MODULE_AUTHOR("Jos Vermeulen (Nikhef) and Markus Joos (CERN)");
MODULE_LICENSE("Dual BSD/GPL");
//MODULE_DEVICE_TABLE(pci, WUPPER_IDs); //Disabled by MJ in order to prevent the driver from auto loading. The driver will be loaded by /etc/init.d/drivers_wupper

MODULE_PARM_DESC(msixblock, "size of MSI block to enable. Maximum value = MAXMSIX = 8");
module_param(msixblock, int, S_IRUGO);

MODULE_PARM_DESC(debug, "1 = enable debugging   0 = disable debugging");
module_param (debug, int, S_IRUGO | S_IWUSR);

MODULE_PARM_DESC(errorlog, "1 = enable error logging   0 = disable error logging");
module_param (errorlog, int, S_IRUGO | S_IWUSR);

struct msix_entry msixTable[MAXCARDS][MAXMSIX];


/***********************/
static int wupper_init(void)
/***********************/
{
    int stat, cardNumber, interrupt;
    struct proc_dir_entry *procDir;

    for (cardNumber = 0; cardNumber < MAXCARDS; cardNumber++)
    {
       cards[cardNumber].pciDevice = NULL;
       registerBase[cardNumber] = NULL;
       for (interrupt = 0; interrupt < MAXMSIX; interrupt++)
       {
           kdebug(("wupper(wupper_init): initializing IRQ values for interrupt %d ofcard %d\n", interrupt, cardNumber));
           irqCount[cardNumber][interrupt] = 0;
           irqMasked[cardNumber][interrupt] = 0;
           irqFlag[cardNumber][interrupt] = 0;
       }
       owner[cardNumber] = NULL;
    }

    if (msixblock > MAXMSIX)
    {
        kerror(("wupper(wupper_init):msixblock > MAXMSIX - setting to max (%d)\n", MAXMSIX));
        msixblock = MAXMSIX;  //MJ: We could be less friendly and cause the driver installation to fail if the user spceifies and out-of-bounds value
    }

    kdebug(("wupper(wupper_init): registering PCIDriver \n"));
    stat = pci_register_driver(&wupper_PCI_driver);
    if (stat < 0)
    {
        kerror(("wupper(wupper_init): Status %d from pci_register_driver\n", stat));
        return stat;
    }

    stat = alloc_chrdev_region(&first_dev, FIRSTMINOR, MAXCARDS, devName);
    if (stat == 0)
    {
        wupper_cdev = cdev_alloc();
        wupper_cdev->ops = &fops;
        wupper_cdev->owner = THIS_MODULE;
        stat = cdev_add(wupper_cdev, first_dev, 1);
        if (stat == 0)
        {
            procDir = proc_create(devName, 0644, NULL, &fops);
            if (procDir == NULL)
            {
                kerror(("wupper(wupper_init): error from call to create_proc_entry\n"));
                return(-ENOMEM);     //MJ: The error code is a bit random. I have also seen -EINVAL in other driver. Many drivers just return -1
            }
        }
        else
        {
            kerror(("wupper(wupper_init): cdev_add failed, driver will not load\n"));  //Using both printk an kerror does not look tidy
            unregister_chrdev_region(first_dev, MAXCARDS);
            pci_unregister_driver(&wupper_PCI_driver);
            return(stat);
        }
    }
    else
    {
        kerror(("wupper_init: registering WUPPER driver failed.\n"));
        pci_unregister_driver(&wupper_PCI_driver);
        return(stat);
    }

    proc_read_text = (char *)kmalloc(PROC_MAX_CHARS, GFP_KERNEL);
    if (proc_read_text == NULL)
    {
        kerror(("wupper_init: error from kmalloc\n"));  //MJ: Do we have to unregister the driver and pci device if the kmalloc fails?
        return(-ENOMEM);
    }

    printk(KERN_INFO "wupper(wupper_init): WUPPER driver loaded, found %d device(s)\n", cardsFound);
    return 0;
}


/************************/
static void wupper_exit(void)
/************************/
{
    remove_proc_entry(devName, NULL /* parent dir */);
    kdebug(("wupper(wupper_exit): unregister device\n"));
    unregister_chrdev_region(first_dev, MAXCARDS);
    kdebug(("wupper(wupper_exit: unregister driver\n"));
    pci_unregister_driver(&wupper_PCI_driver);
    cdev_del(wupper_cdev);
    kfree(proc_read_text);
    printk(KERN_INFO "wupper(wupper__exit): driver removed\n");
}


/***********************************************/
static irqreturn_t irqHandler(int irq, void *dev)
/***********************************************/
{
    struct irqInfo_struct *info;

    info = (struct irqInfo_struct*) dev;
    irqCount[info->card][info->interrupt] += 1;
    irqFlag[info->card][info->interrupt] = 1;
    wake_up_interruptible(&waitQueue);      //MJ: would it have any performance advantages if we used one wait queue per card?
    return(IRQ_HANDLED);
}


/***********************************************************************/
static int wupper_Probe(struct pci_dev *dev, const struct pci_device_id *id)
/***********************************************************************/
{
    int cardNumber, ret, bufferNumber;
    int interrupt, msixCapOffset, msixData, msixBarNumber, msixTableOffset, msixLength;
    uint32_t msixAddress;
    BAR0CommonStruct *registers;

    cardNumber = 0;
    // Find first available slot
    while (cards[cardNumber].pciDevice != NULL && cardNumber < MAXCARDS)
        cardNumber++;

    if (cardNumber < MAXCARDS)
    {
        kdebug(("wupper(wupper_Probe): Initialising device nr %d (counting from 0)\n", cardsFound));
        ret = pci_enable_device(dev);
        cardsFound++;
        cards[cardNumber].pciDevice = dev;
    }
    else
    {
        kerror(("wupper(wupper_Probe): Too many cards present, only %d is allowed\n", MAXCARDS));
        return(-EINVAL);
    }

    kdebug(("wupper(wupper_Probe): Reading configuration space for card %d :\n", cardNumber));
    cards[cardNumber].baseAddressBAR0 = pci_resource_start(dev, 0);
    cards[cardNumber].sizeBAR0        = pci_resource_len(dev, 0);
    cards[cardNumber].baseAddressBAR1 = pci_resource_start(dev, 1);
    cards[cardNumber].sizeBAR1        = pci_resource_len(dev, 1);
    cards[cardNumber].baseAddressBAR2 = pci_resource_start(dev, 2);
    cards[cardNumber].sizeBAR2        = pci_resource_len(dev, 2);

    kdebug(("wupper(wupper_Probe): ----> BAR0 start %x, end %x, size %x \n",
            cards[cardNumber].baseAddressBAR0,
            (u_int)pci_resource_end(dev, 0),
            cards[cardNumber].sizeBAR0));
    kdebug(("wupper(wupper_Probe): ----> BAR1 start %x, end %x, size %x \n",
            cards[cardNumber].baseAddressBAR1,
            (u_int)pci_resource_end(dev, 1),
            cards[cardNumber].sizeBAR1));

    /* remap the whole bar0 as registers */
    kdebug(("wupper(wupper_Probe): Remapping BAR0 as registers space, card %d, phys add/size: 0x%x 0x%x\n", cardNumber, cards[cardNumber].baseAddressBAR0, cards[cardNumber].sizeBAR0));
    registerBase[cardNumber] = ioremap_nocache(cards[cardNumber].baseAddressBAR0, cards[cardNumber].sizeBAR0);
    registers = registerBase[cardNumber];

    msixCapOffset = pci_find_capability(dev, PCI_CAP_ID_MSIX);
    if (msixCapOffset == 0)
    {
        // card may not have wupper hardware loaded
        kerror(("wupper(wupper_Probe): Failed to map MSI-X BAR for card %d\n", cardNumber));
        msixBar[cardNumber] = NULL;
	return(-ENODEV);
    }

    pci_read_config_dword(dev, msixCapOffset + 4, &msixData);
    msixBarNumber = msixData & 0xf;
    msixTableOffset = msixData & 0xfffffff0;
    kdebug(("wupper(wupper_Probe): MSIX Vector table BAR %d, offset %08x\n", msixBarNumber, msixTableOffset));
    pci_read_config_dword(dev, msixCapOffset + 8, &msixData);
    msixBarNumber = msixData & 0xf;
    msixPbaOffset[cardNumber] = msixData & 0xfffffff0;
    kdebug(("wupper(wupper_Probe): MSIX PBA: BAR %d, offset %08x\n", msixBarNumber, msixPbaOffset[cardNumber]));
    msixAddress = pci_resource_start(dev, msixBarNumber);
    msixLength = pci_resource_len(dev, msixBarNumber);
    msixBar[cardNumber] = ioremap_nocache(msixAddress, msixLength);

    if (msixBar[cardNumber] == NULL)
    {
        kerror(("wupper(wupper_Probe): Failed to map MSI-X BAR\n for card %d\n", cardNumber));
        return(-EINVAL);
    }

    if (debug)
    {
        bufferNumber = msixTableOffset / sizeof(uint32_t);
        for (interrupt = 0; interrupt < MAXMSIX; interrupt++)
        {
            kdebug(("wupper(wupper_Probe): MSI-X table[%d] %08x %08x  %08x  %08x\n", interrupt, msixBar[cardNumber][bufferNumber], msixBar[cardNumber][bufferNumber + 1], msixBar[cardNumber][bufferNumber + 2], msixBar[cardNumber][bufferNumber + 3]));
            bufferNumber += 4;
        }

        if (msixPbaOffset[cardNumber] + 3 * sizeof(uint32_t) < msixLength)
        {
            kdebug(("wupper(wupper_Probe): MSI-X PBA      %08x %08x  %08x  %08x\n",
                    msixBar[cardNumber][msixPbaOffset[cardNumber] / sizeof(uint32_t)],
                    msixBar[cardNumber][msixPbaOffset[cardNumber] / sizeof(uint32_t) + 1],
                    msixBar[cardNumber][msixPbaOffset[cardNumber] / sizeof(uint32_t) + 2],
                    msixBar[cardNumber][msixPbaOffset[cardNumber] / sizeof(uint32_t) + 3]));
        }
        else
            kerror(("wupper(wupper_Probe): PBA offset %x is outside of BAR%d, length=%x \n", msixPbaOffset[cardNumber], msixBarNumber, msixLength));
    }

    // setup interrupts
    for (interrupt = 0; interrupt < msixblock; interrupt++)
    {
        msixTable[cardNumber][interrupt].entry = interrupt;  //MJ: If (msixblock < MAXMSIX) some elements of the array will not be initialized (which may not matter)
        kdebug(("wupper(wupper_Probe): filling interrupt table for interrupt %d, cardnumber %d\n", interrupt, cardNumber));
        kdebug(("wupper(wupper_Probe): entry in table %d\n", msixTable[cardNumber][interrupt].entry));
    }

    msixStatus[cardNumber] = pci_enable_msix_exact(dev, msixTable[cardNumber], msixblock);
    kdebug(("After pci_enable_msix\n"));

    if (debug)
    {
        kdebug(("wupper(wupper_Probe): msix address %08x, length %4x\n", msixAddress, msixLength));
        bufferNumber = msixTableOffset / sizeof(uint32_t);
        for (interrupt = 0; interrupt < msixblock; interrupt++)
        {
            kdebug(("wupper(wupper_Probe): MSI-X table[%d] %08x %08x  %08x  %08x\n", interrupt, msixBar[cardNumber][bufferNumber], msixBar[cardNumber][bufferNumber+1], msixBar[cardNumber][bufferNumber+2], msixBar[cardNumber][bufferNumber+3]));
            bufferNumber += 4;
        }
        if (msixPbaOffset[cardNumber] + 3 * sizeof(uint32_t) < msixLength)
        {
            kdebug(("wupper(wupper_Probe): MSI-X PBA %08x \n", msixBar[cardNumber][msixPbaOffset[cardNumber] / sizeof(uint32_t)]));
        }
        else
            kerror(("wupper(wupper_Probe): PBA offset %x is outside of BAR%d, length=%x \n", msixPbaOffset[cardNumber], msixBarNumber, msixLength));
    }

    if (msixStatus[cardNumber] != 0)
    {
        kerror(("wupper(wupper_Probe): Failed to enable MSI-X interrupt block for card %d, enable returned %d\n", cardNumber, msixStatus[cardNumber]));
    }
    else
    {
        for (interrupt = 0; interrupt < msixblock; interrupt++)
        {
            kdebug(("wupper(wupper_Probe): Trying to register IRQ vector %d\n", msixTable[cardNumber][interrupt].vector));

            irqInfo[cardNumber][interrupt].interrupt = interrupt;  //MJ: If we have two cards then two elements of the array will have the same value (interrupt). Does that matter?
            irqInfo[cardNumber][interrupt].card      = cardNumber;
            irqInfo[cardNumber][interrupt].reserved  = 0;          //MJ: It seems ".reserved" is not used anywhere
            ret = request_irq(msixTable[cardNumber][interrupt].vector, irqHandler, 0, devName, &irqInfo[cardNumber][interrupt]);
            if (ret != 0)
            {
                kerror(("wupper(wupper_Probe): Failed to register interrupt handler for MSI %d\n", interrupt));  //MJ: Why not use kerror?
            }
        }
    }

    // do reset

    if (debug)
    {
        kdebug(("wupper(wupper_Probe): msix address %08x, length %4x\n", msixAddress, msixLength));
        bufferNumber = msixTableOffset / sizeof(uint32_t);
        for (interrupt = 0; interrupt < msixblock; interrupt++)
        {
            kdebug(("wupper(wupper_Probe): MSI-X table[%d] %08x %08x  %08x  %08x\n", interrupt, msixBar[cardNumber][bufferNumber], msixBar[cardNumber][bufferNumber+1], msixBar[cardNumber][bufferNumber+2], msixBar[cardNumber][bufferNumber+3]));
            bufferNumber += 4;
        }

        if (msixPbaOffset[cardNumber] + 3 * sizeof(uint32_t) < msixLength)
        {
            kdebug(("wupper(wupper_Probe): MSI-X PBA %08x %08x  %08x  %08x\n",
                    msixBar[cardNumber][msixPbaOffset[cardNumber] / sizeof(uint32_t)],
                    msixBar[cardNumber][msixPbaOffset[cardNumber] / sizeof(uint32_t) + 1],
                    msixBar[cardNumber][msixPbaOffset[cardNumber] / sizeof(uint32_t) + 2],
                    msixBar[cardNumber][msixPbaOffset[cardNumber] / sizeof(uint32_t) + 3]));
        }
        else
        {
            kerror(("wupper(wupper_Probe): PBA offset %x is outside of BAR%d, length=%x \n", msixPbaOffset[cardNumber], msixBarNumber, msixLength));
        }
    }

    // other initialization ...
    return(0);
}


/*****************************************/
static void wupper_Remove(struct pci_dev *dev)
/*****************************************/
{
    int cardNumber, interrupt;

    kerror(("wupper(wupper_Remove):  called\n"));
    for(cardNumber = 0; cardNumber < MAXCARDS; cardNumber++)
    {
        if (cards[cardNumber].pciDevice == dev)
        {
            kerror(("wupper(wupper_Remove): for card %d\n", cardNumber));
            cards[cardNumber].pciDevice = NULL;
            owner[cardNumber] = NULL;
            cardsFound--;

            if (msixStatus[cardNumber] == 0)
            {
                for (interrupt = 0; interrupt < msixblock; interrupt++)
                {
                    kdebug(("wupper(wupper_Remove): unregestering interrupt %d, vector %d\n", interrupt, msixTable[cardNumber][interrupt].vector));
                    free_irq(msixTable[cardNumber][interrupt].vector, &irqInfo[cardNumber][interrupt]);
                }
            }
            pci_disable_msix(dev);
        }
    }
}


/************************************************/
int wupper_open(struct inode *ino, struct file *file)
/************************************************/
{
    card_params_t *pdata;

    kdebug(("wupper(wupper_open): called\n"));
    pdata = (card_params_t *)kmalloc(sizeof(card_params_t), GFP_KERNEL);
    if (pdata == NULL)
    {
        kerror(("wupper(wupper_open): error from kmalloc\n"))
        return(-ENOMEM);
    }

    pdata->slot = 0;
    file->private_data = (char *)pdata;
    return(0);
}


/***************************************************/
int wupper_Release(struct inode *ino, struct file *file)
/***************************************************/
{
    card_params_t *pdata;
    int card;

    kdebug(("wupper(wupper_release): called\n"));
    for (card = 0; card < MAXCARDS; card++)
    {
        if (owner[card] == file)
            owner[card] = 0;
    }

    pdata = (card_params_t *)file->private_data;
    kdebug(("wupper(wupper_release): Releasing orphaned resources for slot %d\n", pdata->slot))
    kfree(file->private_data);
    return(0);
}


/**********************************************************************************************/
static ssize_t wupper_read_procmem(struct file *file, char *buf, size_t count, loff_t *startOffset)
/**********************************************************************************************/
{  
  static int merror, len = 0, bytes_copied = 0;
  unsigned long ret = 0;
  ssize_t retval = 0;
  
  kdebug(("wupper(wupper_read_proc): Called with buf    = 0x%016lx\n", (u_long)buf));
  kdebug(("wupper(wupper_read_proc): Called with startOffset = %lld\n", *startOffset));
  kdebug(("wupper(wupper_read_proc): Called with count  = %d\n", (int) count));

  merror = mutex_lock_interruptible(&procMutex);
  if (merror)
  {
    kdebug(("wupper(wupper_read_proc): mutex lock not OK. error = %d\n", merror));
    return(0);
  }
  kdebug(("wupper(wupper_read_proc): mutex lock OK\n"));

  if (*startOffset == 0)
  {
    bytes_copied = 0;
    len = fill_proc_read_text();
  }
  kdebug(("wupper(wupper_read_proc): len = %d\n", len));

  if (*startOffset >= len)
  {
    kdebug(("wupper(wupper_read_proc):thats it......\n"));
    mutex_unlock(&procMutex);
    kdebug(("wupper(wupper_read_proc): mutex unlock OK\n"));
    return(retval);
  } 
  
  if (*startOffset + count > len)
    count = len - *startOffset;

  ret = copy_to_user(buf, proc_read_text + bytes_copied, count);  // ret contains the amount of chars wasn't successfully written to `buf`
  kdebug(("wupper(wupper_read_proc): ret = %lu\n", ret));

  bytes_copied = bytes_copied + count - ret;
  kdebug(("wupper(wupper_read_proc): bytes_copied = %d\n", bytes_copied));

  *startOffset += count - ret;
  kdebug(("wupper(wupper_read_proc): *startOffset = %lld\n", *startOffset));
  
  retval = count - ret;
  kdebug(("wupper(wupper_read_proc): returning retval   = %ld\n", retval));
  
  mutex_unlock(&procMutex);
  kdebug(("wupper(wupper_read_proc): mutex unlock OK\n"));

  return(retval);
}


/********************************************************************************************************/
static ssize_t wupper_write_procmem(struct file *file, const char *buffer, size_t count, loff_t *startOffset)
/********************************************************************************************************/
{
  int len;
  char textReceived[100];

  kdebug(("wupper(wupper_write_proc): robin_write_procmem called\n"));

  if (count > 99)
      len = 99;
  else
      len = count;

  if (copy_from_user(textReceived, buffer, len))
  {
    kerror(("wupper(wupper_write_proc): error from copy_from_user\n"));
    return(-EFAULT);
  }

  kdebug(("wupper(wupper_write_proc): len = %d\n", len));
  textReceived[len - 1] = '\0';
  kdebug(("wupper(wupper_write_proc): text passed = %s\n", textReceived));

  if (!strcmp(textReceived, "debug"))
  {
    debug = 1;
    kdebug(("wupper(wupper_write_proc): debugging enabled\n"));
  }

  if (!strcmp(textReceived, "nodebug"))
  {
    kdebug(("wupper(wupper_write_proc): debugging disabled\n"));
    debug = 0;
  }

  if (!strcmp(textReceived, "elog"))
  {
    kdebug(("wupper(wupper_write_proc): Error logging enabled\n"))
    errorlog = 1;
  }

  if (!strcmp(textReceived, "noelog"))
  {
    kdebug(("wupper(wupper_write_proc): Error logging disabled\n"))
    errorlog = 0;
  }
  return(len);
}


/**********************************/
static int fill_proc_read_text(void)
/**********************************/
{
    //MJ-SMP: protect this function (preferrably with a spinlock)  //MJ: Do we need the spinlock?
    int interrupt, cardIndex[MAXCARDS], index;
    u_int len, card;

    index = 0;
    for (card = 0; card < cardsFound; card++)
    {
        while (cards[index].pciDevice == NULL) index++;

        if (index < MAXCARDS)
        {
            cardIndex[card] = index;
            index++;
            kdebug(("wupper(fill_proc_read_text): card %d has index %d\n", card, index));
        }
        else
        {
            kerror(("wupper(fill_proc_read_text): Card indexing error\n"));
            return(0);
        }
    }

    kdebug(("wupper(fill_proc_read_text): Creating text....\n"));
    len = 0;
    len += sprintf(proc_read_text + len, "WUPPER driver for release %s and distributed with driver RPM %s\n", RELEASE_NAME, WUPPER_TAG);
    len += sprintf(proc_read_text + len, "\nDebug                       = %d\n", debug);
    len += sprintf(proc_read_text + len, "Number of cards detected    = %d\n", cardsFound);

    for (card = 0; card < cardsFound; card++)
    {
        // Addresses depend on firmware version
        uint32_t *pp = ioremap_nocache(cards[card].baseAddressBAR2, cards[card].sizeBAR2);

        u_int regmap        = *pp;
        u_int buildDate     = *(pp + 4);
        u_int buildYear     = *(pp + 5);
        u_int buildRevision = *(pp + 8);
        u_int genConstants  = *(pp + 16);

        int buildMonth = (buildDate >> 24) & 0xff;
        int buildDay = (buildDate >> 16) & 0xff;
        int buildHour = (buildDate >> 8) & 0xff;
        int buildMinute = buildDate & 0xff;
        len += sprintf(proc_read_text + len, "\nCard %d: \n", cardIndex[card]);
        len += sprintf(proc_read_text + len, "Reg Map Version             : %d.%d\n", (regmap & 0xFF00) >> 8, regmap & 0x00FF);
        len += sprintf(proc_read_text + len, "Build revision (SVN version): %d, ", buildRevision);
        len += sprintf(proc_read_text + len, "Date: %2x-%x-20%x, time     : %xh%x\n", buildDay, buildMonth, buildYear, buildHour, buildMinute);
        len += sprintf(proc_read_text + len, "Number of descriptors       : %d, ", (genConstants & 0xff));
        len += sprintf(proc_read_text + len, "Number of interrupts        : %d\n", ((genConstants >> 8) & 0xff));

        if (msixBar[cardIndex[card]] != NULL)
        {
            len += sprintf(proc_read_text + len, "Interrupt count |");
            for (interrupt = 0; interrupt < msixblock; interrupt++)
                len += sprintf(proc_read_text + len, " %6d |", irqCount[cardIndex[card]][interrupt]);

            len += sprintf(proc_read_text + len, "\nInterrupt flag  |");
            for (interrupt = 0; interrupt < msixblock; interrupt++)
                len += sprintf(proc_read_text + len, " %6d |", irqFlag[cardIndex[card]][interrupt]);

            len += sprintf(proc_read_text + len, "\nInterrupt mask  |");
            for (interrupt = 0; interrupt < msixblock; interrupt++)
                len += sprintf(proc_read_text + len, " %6d |", irqMasked[cardIndex[card]][interrupt]);

            len += sprintf(proc_read_text + len, "\nMSIX PBA        %08x\n",  msixBar[cardIndex[card]][msixPbaOffset[cardIndex[card]] / sizeof(uint32_t)]);
            len += sprintf(proc_read_text + len, "\n");
        }
        else
            len += sprintf(proc_read_text + len, "No MSIX interrupts for card %d\n\n", card);
    }

    len += sprintf(proc_read_text + len, " \n");
    len += sprintf(proc_read_text + len, "The command 'echo <action> > /proc/wupper', executed as root,\n");
    len += sprintf(proc_read_text + len, "allows you to interact with the driver. Possible actions are:\n");
    len += sprintf(proc_read_text + len, "debug   -> Enable debugging\n");
    len += sprintf(proc_read_text + len, "nodebug -> Disable debugging\n");
    len += sprintf(proc_read_text + len, "elog    -> Log errors to /var/log/message\n");
    len += sprintf(proc_read_text + len, "noelog  -> Do not log errors to /var/log/message\n");
    kdebug(("wupper(fill_proc_read_text): Number of characters created = %d\n", len));
    return(len);
}


/*********************************************************/
int wupper_mmap(struct file *file, struct vm_area_struct *vma)
/*********************************************************/
{
    u32 moff, msize;

    // it should be "shared" memory
    if ((vma->vm_flags & VM_WRITE) && !(vma->vm_flags & VM_SHARED))
    {
        kerror(("wupper(wupper_mmap): writeable mappings must be shared, rejecting\n"));
        return(-EINVAL);
    }

    msize = vma->vm_end - vma->vm_start;
    moff = vma->vm_pgoff;
    kdebug(("wupper(wupper_mmap): offset: 0x%x, size: 0x%x\n", moff, msize));
    moff = moff << PAGE_SHIFT;
    if (moff & ~PAGE_MASK)
    {
        kerror(("wupper(wupper_mmap): offset not aligned: %u\n", moff));
        return(-EINVAL);
    }

#if LINUX_VERSION_CODE < KERNEL_VERSION(3,7,0)
    vma->vm_flags |= VM_RESERVED;
#else
    vma->vm_flags |= VM_DONTEXPAND;
    vma->vm_flags |= VM_DONTDUMP;
#endif

    // we do not want to have this area swapped out, lock it
    vma->vm_flags |= VM_LOCKED;
    if (remap_pfn_range(vma, vma->vm_start, vma->vm_pgoff, msize, vma->vm_page_prot) != 0)
    {
        kerror(("wupper(wupper_mmap): remap page range failed\n"));
        return(-EAGAIN);
    }

    vma->vm_ops = &wupper_vm_ops;
    return(0);
}


/******************************************/
void wupper_vmclose(struct vm_area_struct *vma)
/******************************************/
{
    kdebug(("wupper(wupper_mmap): closing mmap memory\n"));
}


/*************************************************************/
static long wupper_ioctl(struct file *file, u_int cmd, u_long arg)
/*************************************************************/
{
    card_params_t *cardParams;
    static struct vm_area_struct *vmas, uvmas;
    u_int interrupt, card;
    char capabilityId, capabilityIdOffset;
    u_int address;
    u_short deviceControlRegister;
    int tlp, count;
    card_params_t temp;

    kdebug(("wupper(wupper_ioctl): entered\n"));
    vmas = &uvmas;   //MJ: purpose unclear

    switch(cmd)
    {
    case GETCARDS:
        kdebug(("wupper(wupper_ioctl, GETCARDS\n"));
        if (copy_to_user(((int*)arg), &cardsFound, sizeof(int)) != 0)
        {
            kerror(("wupper(wupper_ioctl, GETCARDS) Copy cardsFound to user space failed!\n"));
            return(-EFAULT); 
        }
        break;

    case GET_TLP:
        kdebug(("wupper(wupper_ioctl, GET_TLP)\n"));
        cardParams = (card_params_t *)file->private_data;
        card = cardParams->slot;
        address = 0x34;
        pci_read_config_byte(cards[card].pciDevice, address, &capabilityIdOffset);
        kdebug(("wupper(wupper_ioctl, GET_TLP) first capabilityIdOffset %x\n", (u_char) capabilityIdOffset));
        // count protects against loop not terminating
        count = 0;
        while (count < 10)  //MJ: What is magic about the value 10?
        {
            pci_read_config_byte(cards[card].pciDevice, (u_int) capabilityIdOffset, &capabilityId);
            kdebug(("wupper(wupper_ioctl, GET_TLP) capabilityIdOffset %x capabilityId %x\n", (u_char) capabilityIdOffset, capabilityId));
            if (capabilityId == 0x10)
                break;

            address = (u_int) (capabilityIdOffset + 1);
            pci_read_config_byte(cards[card].pciDevice, address, &capabilityIdOffset);
            kdebug(("wupper(wupper_ioctl, GET_TLP) new capabilityIdOffset %x\n", (u_char) capabilityIdOffset));
            count ++;
        }
        if (count == 10)
        {
            kerror(("wupper(wupper_ioctl, GET_TLP) Did not find capability with TLP id\n"));
            return(-EINVAL);
        }
        address = capabilityIdOffset + 8;
        pci_read_config_word(cards[card].pciDevice, address, &deviceControlRegister);
        kdebug(("wupper(wupper_ioctl, GET_TLP) new deviceControlRegister %x\n", deviceControlRegister));
        tlp = (deviceControlRegister >> 5) & 0x7;
        if (copy_to_user(((int*)arg), &tlp, sizeof(int)) != 0)
        {
            kerror(("wupper(wupper_ioctl, GET_TLP) Copy value of TLP to user space failed!\n"));
            return(-EFAULT);
        }
        break;

    case WAIT_IRQ:    //WAIT_DMA
        kdebug(("wupper(wupper_ioctl, WAIT_IRQ)\n"));
        cardParams = (card_params_t *)file->private_data;
        card = cardParams->slot;
        if (copy_from_user(&interrupt, (void *)arg, sizeof(u_int)) != 0)
        {
            kerror(("wupper(wupper_ioctl, WAIT_IRQ) error from copy_from_user\n"));
            return(-EFAULT);
        }
        if (interrupt >= msixblock)
        {
            kerror(("wupper(wupper_ioctl, WAIT_IRQ) invalid interrupt specified %d\n", interrupt));
            return(-EINVAL);
        }
        wait_event_interruptible(waitQueue, irqFlag[card][interrupt] == 1);
	  //MJ: Rubini recommends to check the return code of wait_event_interruptible.
	  //MJ: in case of a non-zero value -ERESTARTSYS should be returned

        irqFlag[card][interrupt] = 0;  //MJ: if other processes are waiting for the same interrupt, setting irqFlag[card][interrupt] back to 0 may hide the interrupt from them (see below)
	  //MJ: According to Rubini (page 150, 151 of LDD3) there can be problems with race conditions if two processes are waiting for the same interrupt.
	  //MJ: Is that a requirement for us?

        kdebug(("wupper(wupper_ioctl, WAIT_IRQ) finished waiting for IRQ %d\n", interrupt));
        break;

    case CANCEL_IRQ_WAIT:
        kdebug(("wupper(wupper_ioctl) CANCEL_IRQ_WAIT\n"));
        cardParams = (card_params_t *)file->private_data;
        card = cardParams->slot;
	
        if (copy_from_user(&interrupt, (void *)arg, sizeof(u_int)) != 0)
        {
            kerror(("wupper(wupper_ioctl, CANCEL_IRQ_WAIT) error from copy_from_user\n"));
            return(-EFAULT);
        }
        if (interrupt >= msixblock)
        {
            kerror(("wupper(wupper_ioctl, CANCEL_IRQ_WAIT) invalid interrupt specified %d\n", interrupt));
            return(-EINVAL);
        }
	
        kdebug(("wupper(wupper_ioctl, CANCEL_IRQ_WAIT) Cancelling interrupt %d\n", interrupt));
        // set flag to 1, wake_up_interruptible will wake up a process if the flag specified in wait_event_interruptible is set to 1
        irqFlag[card][interrupt] = 1;          //MJ: The access to the interrupt related data structures seems to be vulnerable to race conditions (two processes callinh different ioctls ate the same time)

        // Wake up everybody who was waiting for an interrupt 
        wake_up_interruptible(&waitQueue);   //MJ: Woken up process will not know that the interrupt has not arrived.
        break;

    case CLEAR_IRQ:
        kdebug(("wupper(wupper_ioctl, CLEAR_IRQ)\n"));
        cardParams = (card_params_t *)file->private_data;
        card = cardParams->slot;
	
        if (copy_from_user(&interrupt, (void *)arg, sizeof(u_int)) != 0)
        {
            kerror(("wupper(wupper_ioctl, CLEAR_IRQ) error from copy_from_user\n"));
            return(-EFAULT);
        }
        if (interrupt >= msixblock)
        {
            kerror(("wupper(wupper_ioctl, CLEAR_IRQ) invalid interrupt specified %d\n", interrupt));
            return(-EINVAL);
        }
	
        kdebug(("wupper(wupper_ioctl, CLEAR_IRQ) Clearing interrupt %d\n", interrupt));
	
        // set flag to 0 to clear a potentially pending (unsolicited) interrupt. 
        irqFlag[card][interrupt] = 0;          //MJ: The access to the interrupt related data structures seems to be vulnerable to race conditions (two processes callinh different ioctls ate the same time)
        break;
	
    case RESET_IRQ_COUNTERS:
        kdebug(("wupper(wupper_ioctl, RESET_IRQ_COUNTERS)\n"));
        cardParams = (card_params_t *)file->private_data;
        card = cardParams->slot;
        
	if (copy_from_user(&interrupt, (void *)arg, sizeof(u_int)) != 0)
        {
          kerror(("wupper(wupper_ioctl, RESET_IRQ_COUNTERS) error from copy_from_user\n"));
          return(-EFAULT);
        }
        if (interrupt >= msixblock)
        {
          kerror(("wupper(wupper_ioctl, RESET_IRQ_COUNTERS) invalid interrupt specified %d\n", interrupt));
          return(-EINVAL);
        }	

        kdebug(("wupper(wupper_ioctl, RESET_IRQ_COUNTERS) Resetting counters of interrupt %d\n", interrupt));	
        irqCount[card][interrupt] = 0;

        break;

    case MASK_IRQ:
        cardParams = (card_params_t *)file->private_data;
        card = cardParams->slot;
        if (copy_from_user(&interrupt, (void *)arg, sizeof(u_int)) != 0)
        {
          kerror(("wupper(wupper_ioctl, MASK_IRQ) error from copy_from_user\n"));
          return(-EFAULT);
        }
        if (interrupt >= msixblock)
        {
          kerror(("wupper(wupper_ioctl, MASK_IRQ) invalid interrupt specified %d\n", interrupt));
          return(-EINVAL);
        }
        // check that interrupt was not already masked
        if (irqMasked[card][interrupt] == 0)
        {
          disable_irq(msixTable[card][interrupt].vector);
          irqMasked[card][interrupt] = 1;
          kdebug(("wupper(wupper_ioctl, MASK_IRQ) masked interrupt %d\n", interrupt));
        }
        else
        {
          kdebug(("wupper(wupper_ioctl, MASK_IRQ) interrupt %d already masked -> no action\n", interrupt));
        }
        break;

    case UNMASK_IRQ:
        cardParams = (card_params_t *)file->private_data;
        card = cardParams->slot;
        if (copy_from_user(&interrupt, (void *)arg, sizeof(u_int)) != 0)
        {
          kerror(("wupper(wupper_ioctl, UNMASK_IRQ) error from copy_from_user\n"));
          return(-EFAULT);
        }
	
        if (interrupt >= msixblock)
        {
          kerror(("wupper(wupper_ioctl, UNMASK_IRQ) invalid interrupt specified %d\n", interrupt));
          return(-EINVAL);
        }
	
        // check that interrupt was not already unmasked
        if (irqMasked[card][interrupt] == 1)
        {
          enable_irq(msixTable[card][interrupt].vector);
          irqMasked[card][interrupt] = 0;
          kdebug(("wupper(wupper_ioctl, UNMASK_IRQ) unmasked interrupt %d\n", interrupt));
        }
        else
        {
          kdebug(("wupper(wupper_ioctl, UNMASK_IRQ) interrupt %d already unmasked -> no action\n", interrupt));
        }
	
        break;

    case SETCARD:
        if (copy_from_user( (void *) &temp, (void *)arg, sizeof(card_params_t)) != 0)
        {
          kerror(("wupper(wupper_ioctl, SETCARD) error from copy_from_user\n"));
          return(-EFAULT);
        }

        card = temp.slot;
        kdebug(("wupper(wupper_ioctl, SETCARD) card = %d\n", card));

	if (card >= MAXCARDS)
	{
          kerror(("wupper(wupper_ioctl, SETCARD) Invalid (%d) slot number\n", card));
          return(-EINVAL);
	}
	if (cards[card].pciDevice == NULL)
	{
          kerror(("wupper(wupper_ioctl, SETCARD) No card at this (%d) slot!\n", card));
          return(-EINVAL);
	}
      
        if (mutex_lock_interruptible(&ownerMutex))
        {
            return(-ERESTARTSYS);
        }
        owner[card] = file;
        mutex_unlock(&ownerMutex);

        cardParams = (card_params_t *)file->private_data;
        cardParams->slot = card;
        cardParams->baseAddressBAR0 = cards[card].baseAddressBAR0;
        cardParams->sizeBAR0 = cards[card].sizeBAR0;
        cardParams->baseAddressBAR1 = cards[card].baseAddressBAR1;
        cardParams->sizeBAR1 = cards[card].sizeBAR1;
        cardParams->baseAddressBAR2 = cards[card].baseAddressBAR2;
        cardParams->sizeBAR2 = cards[card].sizeBAR2;

        // OK, we have a valid slot, copy configuration back to user
        if (copy_to_user(((card_params_t *)arg), &cards[card], sizeof(card_params_t)) != 0)
        {
            kerror(("wupper(wupper_ioctl, SETCARD) Copy card_params_t to user space failed!\n"));
            return(-EFAULT);
        }
        kdebug(("wupper(wupper_ioctl, SETCARD) end of ioctl SETCARD\n"));
        break;
    default:
        kerror(("wupper(wupper_ioctl, default) Unknown ioctl %x\n", cmd));
        return(-EINVAL);
    }

    return 0;
}

