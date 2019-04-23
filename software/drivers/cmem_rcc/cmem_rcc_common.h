/************************************************************************/
/*									*/
/*  This is the common header file for the CMEM_RCC 			*/
/*  driver, library & applications					*/
/*									*/
/*  12. Dec. 01  MAJO  created						*/
/*									*/
/*******C 2011 - The software with that certain something****************/

#ifndef _CMEM_RCC_COMMON_H
#define _CMEM_RCC_COMMON_H

#define CMEM_MAX_NAME    40
#define TYPE_GFP         1
#define TYPE_OLDBPA      2
#define TYPE_MEMBPA      3
#define TYPE_GFPBPA      4
#define TYPE_BPA         4       // For compatibility with old S/W
#define TEXT_SIZE        3000    // For ioctl(CMEM_RCC_DUMP)

#ifdef __KERNEL__
  #include <linux/types.h>
  #include <linux/ioctl.h>
  #define P_ID_CMEM_RCC 7        // Needs to be re-defined here since we do not want to include rcc_error.h at this level
#else
  #include <sys/types.h>
  #include <sys/ioctl.h>
  #include "rcc_error/rcc_error.h"
#endif


/*************/
/*ioctl codes*/
/*************/

#define CMEM_RCC_MAGIC 'x'

#define CMEM_RCC_GET        _IOR(CMEM_RCC_MAGIC, 1, cmem_rcc_t)
#define CMEM_RCC_FREE       _IOW(CMEM_RCC_MAGIC, 2, int)
#define CMEM_RCC_LOCK       _IOW(CMEM_RCC_MAGIC, 3, int)
#define CMEM_RCC_UNLOCK     _IOW(CMEM_RCC_MAGIC, 4, int)
#define CMEM_RCC_GETPARAMS  _IOR(CMEM_RCC_MAGIC, 5, cmem_rcc_t)
#define CMEM_RCC_SETUADDR   _IOW(CMEM_RCC_MAGIC, 6, cmem_rcc_t)
#define CMEM_RCC_DUMP       _IO(CMEM_RCC_MAGIC, 7)

/*
enum
{
  CMEM_RCC_GET = 1,
  CMEM_RCC_FREE,
  CMEM_RCC_LOCK,
  CMEM_RCC_UNLOCK,
  CMEM_RCC_GETPARAMS,
  CMEM_RCC_SETUADDR,
  CMEM_RCC_DUMP
};
*/

/*************/
/*error codes*/
/*************/
enum
{
  CMEM_RCC_SUCCESS = 0,
  CMEM_RCC_ERROR_FAIL = (P_ID_CMEM_RCC << 8) + 1,
  CMEM_RCC_FILE,
  CMEM_RCC_NOTOPEN,
  CMEM_RCC_IOCTL,
  CMEM_RCC_MMAP,
  CMEM_RCC_MUNMAP,
  CMEM_RCC_OVERFLOW,
  CMEM_RCC_TOOBIG,
  CMEM_RCC_ILLHAND,
  CMEM_RCC_NOSIZE,
  CMEM_RCC_GETP,
  CMEM_RCC_CFU,
  CMEM_RCC_GFP,
  CMEM_RCC_BPA,
  CMEM_RCC_CTU,
  CMEM_RCC_KMALLOC,
  CMEM_RCC_LL,
  CMEM_RCC_NOSUP,
  CMEM_RCC_ABOVE4G,
  CMEM_RCC_NO_CODE
};

typedef struct
{
  u_long paddr;
  u_long uaddr;
  u_long kaddr;
  u_long size;
  u_int order;
  u_int locked;
  u_int type;
  u_int handle;
  char name[CMEM_MAX_NAME];
} cmem_rcc_t;

typedef u_int CMEM_Error_code_t;

#endif
