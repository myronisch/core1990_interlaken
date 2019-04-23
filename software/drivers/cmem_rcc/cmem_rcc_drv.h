/************************************************************************/
/*									*/
/*  This is the common header file for the CMEM_RCC driver & library	*/
/*									*/
/*  12. Dec. 01  MAJO  created						*/
/*									*/
/*******C 2005 - The software with that certain something****************/

#ifndef _CMEM_RCC_IOCTL_H
#define _CMEM_RCC_IOCTL_H

#include "cmem_rcc_common.h"

// Constants
#define MAX_BUFFS          1000    // Max. number of buffers for all processes
#define MAX_PROC_TEXT_SIZE 0x10000 //The output of "more /proc/cmem_rcc" must not generate more characters than that

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


// Types
typedef struct
{
  u_long paddr;
  u_long kaddr;
  u_long uaddr;
  u_long size;
  u_int locked;
  u_int order;
  u_int type;
  u_int used;
  int pid;
  char name[40];
} buffer_t;

typedef struct
{
  u_int buffer[MAX_BUFFS];
} private_stuff;  

struct cmem_proc_data_t
{
  char name[10];
  char value[100];
};

typedef struct range_struct 
{
  struct range_struct *next;
  void *base;			// base of allocated block 
  size_t size;			// size in bytes 
} range_t;


/*****************************/
/*Service function prototypes*/
/*****************************/
static int membpa_init2(int priority, u_int btype);
static int gfpbpa_init(void);
static void* membpa_alloc_pages(int count, int align, int priority, u_int btype);
static void membpa_free_pages(void *base, u_int btype);
static void cmem_rcc_vmaClose(struct vm_area_struct *vma);
static void cmem_rcc_vmaOpen(struct vm_area_struct *vma);

#endif

