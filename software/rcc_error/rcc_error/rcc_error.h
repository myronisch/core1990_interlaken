/*
 * rcc_error.h (originally iom_error)
 *
 * ref : ATLAS Technical Note 51
 *       "Error reporting in the I/O module libraries"
 *
 * HP Beck  26-01-1998
 * HP Beck  21-04-1998  revised
 * HP Beck  04-05-1998  Package IDs and Package ID strings added
 * JOP      27-05-1998  LS package added 
 * MAJO     06-11-2001  Adapted to RCC environment
 */

#ifndef _RCC_ERROR_H_
#define _RCC_ERROR_H_

#include <stdio.h>

/* Package Identifers */

typedef enum 
{
  P_ID_RCC_ERROR =  1,
  P_ID_VMERCC    =  2,  //Do not change
  P_ID_UIO,
  P_ID_SMEM,
  P_ID_TS,
  P_ID_CORBO,
  P_ID_CMEM_RCC,
  P_ID_IO_RCC,          // = 8; Do not change
  P_ID_FILAR,           // = 9; Do not change
  P_ID_SOLAR,           // = 10; Do not change
  P_ID_QUEST,           // = 11; Do not change
  P_ID_EM_RCC,
  P_ID_LL_RCC,
  P_ID_SLINK,
  P_ID_S5933,
  P_ID_RODBUSY,
  P_ID_ROBIN,           // = 17; Do not change
  P_ID_RF2TTC
} err_pid;              // Package ID Type

/* Definitions for error types */

typedef unsigned int  err_type ;     /* full error information             */
typedef unsigned int  err_pack ;     /* only major or only minor error     */
typedef unsigned int  err_field;     /* error number                       */
typedef char          err_str[256] ; /* textual representation of errors   */

/* Textual representations for Package Identifiers */

#define P_ID_RCC_ERROR_STR       "RCC Error"
#define P_ID_UIO_STR             "UIO library"
#define P_ID_SMEM_STR            "Smem library in iom_utils"
#define P_ID_TS_STR              "Time stamping library"
#define P_ID_LL_RCC_STR          "Linked List Library"
#define P_ID_EM_RCC_STR          "FILAR EM library"
#define P_ID_CORBO_STR           "Corbo library"
#define P_ID_RODBUSY_STR         "ROD-BUSY library"
#define P_ID_VMERCC_STR          "VMEbus driver/library for the RCC"
#define P_ID_CMEM_RCC_STR        "CMEM RCC library"
#define P_ID_IO_RCC_STR          "IO RCC library"
#define P_ID_FILAR_STR           "FILAR library"
#define P_ID_SOLAR_STR           "SOLAR library"
#define P_ID_SLINK_STR           "AMCC based S-Link library"
#define P_ID_S5933_STR           "S5933 library"
#define P_ID_ROBIN_STR           "ROBIN library"
#define P_ID_RF2TTC_STR          "Library for RF2TTC and RFRX"

/* Errors from the RCC_error package */

enum {ERCC_OK      = 0 ,
      ERCC_NOTOPEN = (P_ID_RCC_ERROR<<8) + 1 ,
      ERCC_NOINIT ,
      ERCC_STREAM ,
      ERCC_NOCODE 
} ;

/* ... and their textual representation */

#define ERCC_OK_STR       "all OK"
#define ERCC_NOTOPEN_STR  "no open performed"
#define ERCC_NOINIT_STR   "packX_err_get is NULL pointer"
#define ERCC_STREAM_STR   "stream not writeable"
#define ERCC_NOCODE_STR   "no such error code"


/* MACRO definitions */

#define RCC_ERROR_RETURN(maj, min) \
              (    ~(min) ? 0 : \
                ( ( (maj) & 0xffff0000 ) ? \
                  ( ((maj) & 0xffff0000) + ((min) & 0xffff) ) : \
                  ( ((maj)<<16) + ((min) & 0xffff) ) ) )


#define RCC_ERROR_MAJOR(error_code) \
                ( ((error_code) & 0xffff0000) ? \
                  ((error_code) & 0xffff0000)>>16 : \
                  ((error_code) & 0x0000ffff) )

#define RCC_ERROR_MINOR(error_code) \
                 ( (error_code) & 0x0000ffff )

#define RCC_ERROR_MINOR_PID(error_code) \
                ( ((error_code) & 0x0000ff00)>>8 )

#define RCC_ERROR_MINOR_ERRNO(error_code) \
               (  (error_code) & 0x000000ff )

#define RCC_ERROR_MAJOR_PID(error_code) \
                ( ((error_code) & 0xffff0000) ? \
                  ((error_code) & 0xff000000)>>24 : \
                  ((error_code) & 0x0000ff00)>>8 )

#define RCC_ERROR_MAJOR_ERRNO(error_code) \
                ( ((error_code) & 0xffff0000) ? \
                  ((error_code) & 0x00ff0000)>>16 : \
                  ((error_code) & 0x000000ff) )

/* The rcc_error API prototyping */ 

#ifdef __cplusplus
extern "C" {
#endif

err_type rcc_error_open( void ) ;
err_type rcc_error_close( void ) ;
err_type rcc_error_init(err_pid, err_type (*)(err_pack, err_str, err_str) );
err_type iom_error_init(err_pid, err_type (*)(err_pack, err_str, err_str) );
err_type rcc_error_print(FILE* stream, err_type) ;
err_type rcc_error_get(err_type, err_str, err_str, err_str, err_str);
err_type rcc_error_string(char *text, err_type err);

#ifdef __cplusplus
}
#endif

#endif
