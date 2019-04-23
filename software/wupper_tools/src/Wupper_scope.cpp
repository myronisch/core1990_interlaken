/*******************************************************************/
/*                                                                 */
/* This is the test program for the WupperCard object                 */
/*                                                                 */
/* Author: Markus Joos, CERN                                       */
/*                                                                 */
/**C 2017 Ecosoft - Made from at least 80% recycled source code*****/


#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <time.h>
#include <sys/types.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <linux/types.h>

#include "wuppercard/WupperCard.h"
#include "DFDebug/DFDebug.h"
#include "ROSGetInput/get_input.h"
#include "wuppercard/WupperException.h"


//Globals
WupperCard wupperCards[MAXCARDS];

// prototypes
int mainhelp(void);
int setdebug(void);
void checkoffset(void);
void dumpreg(void);
void check_method(void);
void ts_test(void);
void reg_peek_poke(int mode);


/*****************************/
int main(int argc, char **argv)
/*****************************/
{
  int fun = 1;

  printf("This is WupperCard_Scope\n");

  while(fun != 0)
  {
    printf("\n");
    printf("Select an option:\n");
    printf("   1 Help                        2 Set debug parameters\n");
    printf("   3 Check register offsets      4 Dump registers\n");
    printf("   5 Check methods               6 Test time stamping\n");
    printf("   7 Peek register               8 Poke register\n");
    printf("   0 Quit\n");
    printf("Your choice: ");
    fun = getdecd(fun);
    if (fun == 1) mainhelp();
    if (fun == 2) setdebug();
    if (fun == 3) checkoffset();
    if (fun == 4) dumpreg();
    if (fun == 5) check_method();
    if (fun == 6) ts_test();
    if (fun == 7) reg_peek_poke(0);
    if (fun == 8) reg_peek_poke(1);
  }
}


/**************************/
void reg_peek_poke(int mode)
/**************************/
{
  static int cardnum, barnum, regoff;
  u_long baraddr, *regptr, regdata;

  printf("Note: All registers are treated as 64bit resources\n\n");

  printf("Enter the number (0...N-1) of the card to access\n");
  cardnum = getdecd(0);
  
  printf("Enter the number (0...2) of the BAR\n");
  barnum = getdecd(0);

  printf("Enter the offset of the register\n");
  regoff = gethexd(0);
  
  if(mode)
  {
    printf("Enter the 64 bit of data to write\n");
    regdata = gethexd(0);
  }
  
  try
  {
    wupperCards[0].card_open(cardnum);
    baraddr = wupperCards[0].openBackDoor(barnum);
    regptr = (u_long *)(baraddr + regoff);

    if(mode == 0)
    {
      regdata = *regptr;
      printf("The register contains 0x%016lx\n", regdata);
    }
    else
    {
      *regptr = regdata;
      printf("Data rwitten\n");      
    }

    wupperCards[0].card_close();
  }

  catch(WupperException ex)
  {
    std::cout << "ERROR. Exception thrown: " << ex.what() << std::endl;
  }
}


/****************/
void ts_test(void)
/****************/
{
  int i;
  struct timespec ts, ts1, ts2;
  long sec[16], nsec[16];
  long long ns_waited;

  for(i = 0; i < 16; i++)
  {
    clock_gettime(CLOCK_REALTIME, &ts);
    sec[i] = ts.tv_sec;
    nsec[i] = ts.tv_nsec;
  }
  for(i = 0; i < 16; i++)
  {
    printf("%ld.%ld  ", sec[i], nsec[i]);
    if (i)
      printf("%lu", nsec[i] - nsec[i - 1]);
    printf("\n");
  }    

  clock_gettime(CLOCK_REALTIME, &ts1);
  clock_gettime(CLOCK_REALTIME, &ts2);
  ns_waited = (ts2.tv_sec * 1000000000 + ts2.tv_nsec) - (ts1.tv_sec * 1000000000 + ts1.tv_nsec); 
  printf("ts1.tv_sec  = %lu \n", ts1.tv_sec);
  printf("ts1.tv_nsec = %lu \n", ts1.tv_nsec);
  printf("ts2.tv_sec  = %lu \n", ts2.tv_sec);
  printf("ts2.tv_nsec = %lu \n", ts2.tv_nsec);
  printf("ns_waited = %llu ns\n", ns_waited);

}


/*********************/
void check_method(void)
/*********************/
{
  int fun = 1, value = 0;
  WupperCard wupperCard;
  
  printf("\n=========================================================================\n");
  wupperCard.card_open(0);
  while (fun != 0)  
  {
    printf("\n");
    printf("Select a function of the API:\n");
    printf("   1 dma_wait\n");
    printf("   2 irq_enable\n");
    printf("   3 irq_disable\n");
    printf("   0 Return to the main menu\n");
    printf("Your choice ");
    fun = getdecd(fun);  

    if(fun == 1)
    {
      printf("calling dma_wait");
      wupperCard.dma_wait(0);
    }
    if(fun == 2)
    {
      printf("Enter the number of the interrupts to enable: ");
      value = getdecd(value);       
      printf("calling irq_enable");
      wupperCard.irq_enable(value);
    }
    if(fun == 3)
    {
      printf("Enter the number of the interrupts to disable: ");
      value = getdecd(value);       
      printf("calling irq_disable");
      wupperCard.irq_disable(value);
    }
  }
}


/****************/
void dumpreg(void)
/****************/
{
  static int cardnum;
  u_long baraddr;
  int loop;
  wuppercard_bar0_regs_t *bar0;
  wuppercard_bar1_regs_t *bar1;

  printf("Enter the number (0...N-1) of the card to access\n");
  cardnum = getdecd(0);
  try
  {
    wupperCards[0].card_open(cardnum);

    baraddr = wupperCards[0].openBackDoor(0);
    bar0 = (wuppercard_bar0_regs_t *)baraddr;
    baraddr = wupperCards[0].openBackDoor(1);
    bar1 = (wuppercard_bar1_regs_t *)baraddr;

    printf("Dumping (some) registers of BAR0\n");
    printf("BAR0_VALUE      = 0x%08x\n", bar0->BAR0_VALUE);
    printf("BAR1_VALUE      = 0x%08x\n", bar0->BAR1_VALUE);
    printf("BAR2_VALUE      = 0x%08x\n", bar0->BAR2_VALUE);
    printf("DMA_DESC_ENABLE = 0x%02x\n", bar0->DMA_DESC_ENABLE);

    printf("\nDumping all registers of BAR1\n");
    printf("| Nr. |    Control |       Data |            Address |\n");
    printf("|-----|------------|------------|--------------------|\n");
    for (loop = 0; loop < 8; loop++)
      printf("|   %d | 0x%08x | 0x%08x | 0x%016lx |\n", loop, bar1->INT_VEC[loop].control, bar1->INT_VEC[loop].data, bar1->INT_VEC[loop].address);

    printf("\nINT_TAB_ENABLE  = 0x%02x\n", bar1->INT_TAB_ENABLE);

    wupperCards[0].card_close();
  }

  catch(WupperException ex)
  {
    std::cout << "ERROR. Exception thrown: " << ex.what() << std::endl;
  }
}


/********************/
void checkoffset(void)
/********************/
{
  wuppercard_bar0_regs_t *ptr;
  ptr = (wuppercard_bar0_regs_t *)0;
  printf("ptr->DMA_DESC[0].start_address          is at %p\n", (void *)&ptr->DMA_DESC[0].start_address);
  printf("ptr->DMA_DESC[0].end_address            is at %p\n", (void *)&ptr->DMA_DESC[0].end_address);
  printf("ptr->DMA_DESC_STATUS[0].current_address is at %p\n", (void *)&ptr->DMA_DESC_STATUS[0].current_address);
  printf("ptr->BAR1_VALUE                         is at %p\n", (void *)&ptr->BAR1_VALUE);
  printf("ptr->SOFT_RESET                         is at %p\n\n", (void *)&ptr->SOFT_RESET);

  wuppercard_bar1_regs_t *ptr1;
  ptr1 = (wuppercard_bar1_regs_t *)0;
  printf("ptr->INT_VEC[0].control                 is at %p\n", (void *)&ptr1->INT_VEC[0].control);
  printf("ptr->INT_TAB_ENABLE                     is at %p\n\n", (void *)&ptr1->INT_TAB_ENABLE);
}


/****************/
int setdebug(void)
/****************/
{
  static u_int dblevel = 0, dbpackage = DFDB_FELIXCARD;

  printf("Enter the debug level: ");
  dblevel = getdecd(dblevel);
  printf("Enter the debug package: ");
  dbpackage = getdecd(dbpackage);
  DF::GlobalDebugSettings::setup(dblevel, dbpackage);
  return(0);
}


/****************/
int mainhelp(void)
/****************/
{
  printf("\n=========================================================================\n");
  printf("Call Markus Joos, 72364, 160663 if you need more help\n");
  printf("=========================================================================\n\n");
  return(0);
}
