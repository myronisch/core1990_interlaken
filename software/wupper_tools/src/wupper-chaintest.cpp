/**
  *    ------------------------------------------------------------------------------
  *                                                              
  *            NIKHEF - National Institute for Subatomic Physics 
  *  
  *                        Electronics Department                
  *                                                              
  *  ----------------------------------------------------------------------------
  *  @class wupper-dma-transfer
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
  *  @brief wupper-chaintest.cpp is for testing purpose. First data is generated
  *  by wupper into one buffer. Then this buffer is looped back by wupper into 
  *  a second buffer. The two buffers are compared to each other and any mismatch
  *  is reported.
  * 
  *   
  *  @detail
  * 
  *  
  *  
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
  
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdint.h>
#include <time.h>

#include "cmem_rcc/cmem_rcc.h"
#include "rcc_error/rcc_error.h"
#include "wupper/Wupper.h"
#include "wupper/WupperException.h"

#define APPLICATION_NAME "wupper-chaintest"
#define device_number     0

int buffer1, buffer2;
u_long  paddr1, paddr2, vaddr1, vaddr2;
  
//Globals
WupperCard wupperCard;



void
start_datagen()
{ 


  //generate seed using rand()
  srand (time(NULL));
  uint64_t r0, r1, r2, r3;
  r0 = (uint64_t)rand()|((uint64_t)rand())<<32;
  r1 = (uint64_t)rand()|((uint64_t)rand())<<32;
  r2 = (uint64_t)rand()|((uint64_t)rand())<<32;
  r3 = (uint64_t)rand()|((uint64_t)rand())<<32;
  
  //set seed
    wupperCard.cfg_set_option("LFSR_SEED_0",r0);
    wupperCard.cfg_set_option("LFSR_SEED_1",r1);
    wupperCard.cfg_set_option("LFSR_SEED_2",r2);
    wupperCard.cfg_set_option("LFSR_SEED_3",r3);
  
  // reset LFSR with seed value
    wupperCard.cfg_set_option("LFSR_LOAD_SEED",1);

  //select app mux 0 for LFSR
  wupperCard.cfg_set_option("APP_MUX",0);
  wupperCard.cfg_set_option("APP_ENABLE",1);
  int max_tlp = wupperCard.dma_max_tlp_bytes();
  printf("Starging dma To Host");
  wupperCard.dma_to_host(0, paddr1, 1024*1024, max_tlp, 0);
  wupperCard.dma_wait(0);
  
  
  wupperCard.cfg_set_option("APP_ENABLE",0);
  wupperCard.dma_fifo_flush();
}

void
start_loopback()
{  
  //select app mux 1 for application in the firmware. 
  int max_tlp = wupperCard.dma_max_tlp_bytes();
  
  printf("Reading data from buffer 1...\n");
  wupperCard.cfg_set_option("APP_MUX",1);
  wupperCard.cfg_set_option("APP_ENABLE",1);
  printf("Starging dma To Host and from host");
  
  wupperCard.dma_to_host(0, paddr2, 1024*1024, max_tlp, 0);
  wupperCard.dma_from_host(1, paddr1, 1024*1024, max_tlp, 0);
  wupperCard.dma_wait(0);
  wupperCard.dma_wait(1);
  
  printf("DONE!\n");
  wupperCard.cfg_set_option("APP_ENABLE",0);
}

void 
compare_buf(void)
{
    uint64_t *memptr1;
    uint64_t *memptr2;
    memptr1 = (uint64_t*)vaddr1;
    memptr2 = (uint64_t*)vaddr2;
    uint64_t num1, num2;
    int i;
    int errors = 0;
    int j=0;

    for(i=0; i<1024*64;i++)
    {
        num1 = *(memptr1++);
        num2 = *(memptr2++);
        if (num1 != num2)
        {
            uint64_t addr = (uint64_t)memptr1-0x10 - (uint64_t)vaddr1+ (uint64_t)paddr1;
            if(j<20)
                printf("%lX: %lX != %lX\n", addr, (uint64_t)num1, (uint64_t)num2);
            j++;
            errors++;
        } 
    }
    printf("%i errors out of %i\n", errors, 1024*64);  
}

int
main(int argc, char** argv)
{
  u_int ret;
  ret = CMEM_Open();
  int bsize = 1024*1024;
  if (!ret)
      ret = CMEM_SegmentAllocate(bsize, (char *)"Wupper-dma-transfer1", &buffer1);
  if (!ret)
      ret = CMEM_SegmentAllocate(bsize, (char *)"Wupper-dma-transfer2", &buffer2);
  
  if (!ret)
      ret = CMEM_SegmentPhysicalAddress(buffer1, &paddr1);
  
  if (!ret)
      ret = CMEM_SegmentVirtualAddress(buffer1, &vaddr1);
  
  if (!ret)
      ret = CMEM_SegmentPhysicalAddress(buffer2, &paddr2);
  
  if (!ret)
      ret = CMEM_SegmentVirtualAddress(buffer2, &vaddr2);
  printf("paddr1: %lX\npaddr2: %lX\nvaddr1: %lX\nvaddr2: %lX\n", paddr1, paddr2, vaddr1, vaddr2);
  
  if (ret)
  {
      rcc_error_print(stdout, ret);
      exit(-1);
  }

  wupperCard.card_open(0);
  start_datagen();
  start_loopback();
  compare_buf();
	

    ret = CMEM_SegmentFree(buffer1);
  if (!ret)
    ret = CMEM_SegmentFree(buffer2);
  if (!ret)
    ret = CMEM_Close();
  if (ret)
      rcc_error_print(stdout, ret);
  return(0);

  wupperCard.card_close();
    
  return 0;
}
