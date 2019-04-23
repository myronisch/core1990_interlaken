/************************************************************************/
/*									*/
/*  This is the common header file for the CMEM_RCC 			*/
/*  library & applications						*/
/*									*/
/*  12. Dec. 01  MAJO  created						*/
/*									*/
/*******C 2001 - The software with that certain something****************/

#ifndef _CMEM_RCC_H
#define _CMEM_RCC_H

#include <sys/types.h>
#include "cmem_rcc_common.h"

//Error strings
#define CMEM_RCC_SUCCESS_STR      "No error"
#define CMEM_RCC_ERROR_FAIL_STR   "Failed to install the error library"
#define CMEM_RCC_FILE_STR         "Failed to open /dev/cmem_rcc"
#define CMEM_RCC_NOTOPEN_STR      "Library has not yet been opened"
#define CMEM_RCC_IOCTL_STR        "Error from call to ioctl function"
#define CMEM_RCC_MMAP_STR         "Error from call to mmap function"
#define CMEM_RCC_MUNMAP_STR       "Error from call to munmap function"
#define CMEM_RCC_NO_CODE_STR      "Unknown error"
#define CMEM_RCC_OVERFLOW_STR     "All descriptors are in use"
#define CMEM_RCC_TOOBIG_STR       "Size is too big"
#define CMEM_RCC_ILLHAND_STR      "Invalid handle"
#define CMEM_RCC_GETP_STR         "Error from call to CMEM_SegmentGet"
#define CMEM_RCC_NOSIZE_STR       "The <size> paremeter is zero"
#define CMEM_RCC_CFU_STR          "Error from the driver in call to copy_from_user"
#define CMEM_RCC_GFP_STR          "Error from the driver in call to __get_free_pages"
#define CMEM_RCC_BPA_STR          "Error from the driver in call to BPA function"
#define CMEM_RCC_CTU_STR          "Error from the driver in call to copy_To_user"
#define CMEM_RCC_KMALLOC_STR      "Error from the driver in call to kmalloc"
#define CMEM_RCC_LL_STR           "Error from an underlying function"
#define CMEM_RCC_ABOVE4G_STR      "Failed to allocate memory in the 32-bit address range. Use different allocation function"
#define CMEM_RCC_NOSUP_STR        "This function is not supported by your library"
/************/
/*Prototypes*/
/************/
#ifdef __cplusplus
extern "C" {
#endif

CMEM_Error_code_t CMEM_Open(void);
CMEM_Error_code_t CMEM_Close(void);
CMEM_Error_code_t CMEM_SegmentAllocate(u_long size, char *name, int *segment_identifier);
CMEM_Error_code_t CMEM_SegmentFree(int segment_identifier);
CMEM_Error_code_t CMEM_SegmentSize(int segment_identifier, u_long *actual_size);
CMEM_Error_code_t CMEM_SegmentLock(int segment_identifier);
CMEM_Error_code_t CMEM_SegmentUnlock(int segment_identifier);
CMEM_Error_code_t CMEM_SegmentPhysicalAddress(int segment_identifier, u_long *physical_address);
CMEM_Error_code_t CMEM_SegmentVirtualAddress(int segment_identifier, u_long *virtual_address);
CMEM_Error_code_t CMEM_Dump(void);
CMEM_Error_code_t CMEM_err_get(err_pack err, err_str pid, err_str code);
CMEM_Error_code_t CMEM_SegmentGet(int segment_identifier, cmem_rcc_t *params);
CMEM_Error_code_t CMEM_BPASegmentFree(int segment_identifier);
CMEM_Error_code_t CMEM_OLDBPASegmentFree(int segment_identifier);
CMEM_Error_code_t CMEM_MEMBPASegmentFree(int segment_identifier);
CMEM_Error_code_t CMEM_GFPBPASegmentFree(int segment_identifier);
CMEM_Error_code_t CMEM_BPASegmentAllocate(u_long size, char *name, int *segment_identifier);
CMEM_Error_code_t CMEM_OLDBPASegmentAllocate(u_long size, char *name, int *segment_identifier);
CMEM_Error_code_t CMEM_MEMBPASegmentAllocate(u_long size, char *name, int *segment_identifier);
CMEM_Error_code_t CMEM_GFPBPASegmentAllocate(u_long size, char *name, int *segment_identifier);
CMEM_Error_code_t CMEM_Allocate(cmem_rcc_t desc, u_int *handle);
CMEM_Error_code_t CMEM_Free(int segment_identifier);

#ifdef __cplusplus
}
#endif

#endif
