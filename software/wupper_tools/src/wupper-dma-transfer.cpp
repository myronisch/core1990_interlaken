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
  *  @brief wupper-dma-transfer.c writes to and reads from PC memory. 
  *  The 256 bit datagenerator is based on a LFSR.
  *  User can set a seed or load a pre-programmed seed. After the DMA
  *  read, the data from the PC memory will be multiplied and write 
  *  back to the PC memory.
  *   
  *
  * 
  * 
  *   
  *  @detail
  *  This application has a sequence:
  *  1 -Start with dma reset(-d)
  *  2 -Then reset the application (-r)
  *  3 -Flush the FIFO's(-f)
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

#define APPLICATION_NAME "wupper-dma-transfer"
#define DMA_ID     0

int buffer1, buffer2;
u_long  paddr1, paddr2, vaddr1, vaddr2;
  
//Globals
WupperCard wupperCard;
int cont;

void
display_help()
{
  printf("\nUsage: %s [OPTIONS]\n"
	 "\n\n"
	 
	 "This application has a sequence: \n"
	 " 1 -Start with dma reset(-d)\n" 
	 " 2 -Flush the FIFO's(-f)\n"
	 " 3 -Then reset the application (-r)\n"  

	 "\n\n"
  
	 "Options:\n"
	 "  -l             Load pre-programmed seed.\n"
	 "  -q             Load and generate an unique seed.\n"
	 "  -g             Generate data from PCIe to PC.\n"
	 "  -b             Generate data from PC to PCIe.\n"
	 "  -s             Show application register.\n"
	 "  -r             Reset the application.\n"
	 "  -f             Flush the FIFO's.\n"
	 "  -d             Disable and reset the DMA controller.\n"
	 "  -h             Display help.\n\n",
	 APPLICATION_NAME);
}

void
application_reset()
{
  // Disable DMA controller
  wupperCard.soft_reset();
 }
 
 
 void
fifo_flush()
{
  // Flush FIFO's
  wupperCard.dma_fifo_flush();
 }
 
 void
dma_reset()
{
  // Disable DMA controller
  wupperCard.dma_stop(DMA_ID);
  wupperCard.dma_reset();
}

 
void
load_stdseed(uint64_t seed0, uint64_t seed1, uint64_t seed2, uint64_t seed3)
{
    printf("Writing seed to application register...");
    //set seed
    wupperCard.cfg_set_option("LFSR_SEED_0",seed0);
    wupperCard.cfg_set_option("LFSR_SEED_1",seed1);
    wupperCard.cfg_set_option("LFSR_SEED_2",seed2);
    wupperCard.cfg_set_option("LFSR_SEED_3",seed3);
    
  // reset LFSR with seed value
  wupperCard.cfg_set_option("LFSR_LOAD_SEED",1);

  printf("DONE! \n");
    
}

void
load_unqseed()
{
	
	//generate seed using rand()
	printf("generating new seed...");
	srand (time(NULL));
    uint64_t r0, r1, r2, r3;
    r0 = (uint64_t)rand()|((uint64_t)rand())<<32;
    r1 = (uint64_t)rand()|((uint64_t)rand())<<32;
    r2 = (uint64_t)rand()|((uint64_t)rand())<<32;
    r3 = (uint64_t)rand()|((uint64_t)rand())<<32;
    printf("DONE! \n");
    
    //set seed
    printf("Writing seed to application register...");
    wupperCard.cfg_set_option("LFSR_SEED_0",r0);
    wupperCard.cfg_set_option("LFSR_SEED_1",r1);
    wupperCard.cfg_set_option("LFSR_SEED_2",r2);
    wupperCard.cfg_set_option("LFSR_SEED_3",r3);
    
  // reset LFSR with seed value
  wupperCard.cfg_set_option("LFSR_LOAD_SEED",1);
   
  printf("DONE! \n");

}

void
start_application2pc()
{  
  uint64_t *memptr;
  
  //select app mux 0 for LFSR
  wupperCard.cfg_set_option("APP_MUX",0);
  wupperCard.cfg_set_option("APP_ENABLE",1);

  int max_tlp = wupperCard.dma_max_tlp_bytes();
  printf("Starting DMA write\n");
  wupperCard.dma_to_host(DMA_ID, paddr1, 1024*1024, max_tlp, 0);
  wupperCard.dma_wait(DMA_ID);
  printf("done DMA write \n");
  
  printf("Buffer 1 addresses:\n");
  memptr = (uint64_t*)vaddr1;
  int i;
  for(i=0; i<10;i++){
	  printf("%i: %lX \n",i, *(memptr++));
	  }  
	  
  wupperCard.cfg_set_option("APP_ENABLE",0);
  wupperCard.dma_fifo_flush();
}

void
start_application2PCIe()
{  
  uint64_t *memptr;
  
  //select app mux 1 for application in the firmware. 
  int max_tlp = wupperCard.dma_max_tlp_bytes();
  
  printf("Reading data from buffer 1...\n");
  wupperCard.cfg_set_option("APP_MUX",1);
  wupperCard.dma_to_host(0, paddr1, 1024*1024, max_tlp, 0);
  wupperCard.dma_from_host(1, paddr2, 1024*1024, max_tlp, 0);
  wupperCard.cfg_set_option("APP_ENABLE",1);
  wupperCard.dma_wait(0);
  wupperCard.dma_wait(1);
  
  printf("DONE!\n");
    
  printf("Buffer 2 addresses:\n");
  memptr = (uint64_t*)vaddr2;
  int i;
  for(i=0; i<10;i++){
	  printf("%i: %lX \n",i, *(memptr++));
	}


  //memptr = (uint64_t*)buffer1.virt_addr;
  //printf("\n%lX\n", *(memptr++) * *(memptr++));
  wupperCard.cfg_set_option("APP_ENABLE",0);
}

void
show_appreg()
{
  printf("\nStatus application registers\n");
  printf("----------------------------\n");
  
  
  printf("LFSR_SEED_0:         %lX \n",wupperCard.cfg_get_option("LFSR_SEED_0"));
  printf("LFSR_SEED_1:         %lX \n",wupperCard.cfg_get_option("LFSR_SEED_1"));
  printf("LFSR_SEED_2:         %lX \n",wupperCard.cfg_get_option("LFSR_SEED_2"));
  printf("LFSR_SEED_3:         %lX \n",wupperCard.cfg_get_option("LFSR_SEED_3"));
  
  printf("APP_MUX:             %lX \n",wupperCard.cfg_get_option("APP_MUX"));
  printf("LFSR_LOAD_SEED:      %lX \n",wupperCard.cfg_get_option("LFSR_LOAD_SEED"));
  printf("APP_ENABLE:          %lX \n",wupperCard.cfg_get_option("APP_ENABLE"));
  printf("\n");
  
 }

int
main(int argc, char** argv)
{
  u_int ret;
  int opt;
  
  
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
  
  
  if (ret)
  {
      rcc_error_print(stdout, ret);
      exit(-1);
  }


  while ((opt = getopt(argc, argv,"lgbqhsrfd")) != -1) {
    switch (opt) {
    case 'l':
// load pre-seed
      wupperCard.card_open(0);
      load_stdseed(0xDEADBEEFABCD0123, 0x87613472FEDCABCD, 0xDEADFACEABCD0123, 0x12313472FEDCFFFF);
      wupperCard.card_close();  
      break;
    case 'q':
// load unique seed
      wupperCard.card_open(0);
      load_unqseed();
      wupperCard.card_close();  
      break;
    case 'g':
// generate data from PCIe->PC
      wupperCard.card_open(0);
      start_application2pc();
      wupperCard.card_close();  
      break;
    case 'b':
// read data from PC memory, multiplies the data and write back to PC memory.
      wupperCard.card_open(0);
      start_application2PCIe();
      wupperCard.card_close();  
      break;
    case 's':
// show app registers
      wupperCard.card_open(0);     
      show_appreg();
      wupperCard.card_close();  
      break;
    case 'r':
// Reset the application
      wupperCard.card_open(0);     
      printf("resetting application...");
      application_reset();
      printf("DONE! \n");
      wupperCard.card_close();  
      break;
      case 'f':
// Flush the FIFO's
      wupperCard.card_open(0);     
      printf("Flushing the FIFO's...");
      fifo_flush();

      printf("DONE! \n");
      wupperCard.card_close();  
      break;
      case 'd':
// Disable and reset the DMA controller
      wupperCard.card_open(0);     
      printf("Resetting the DMA controller...");
      dma_reset();

      printf("DONE! \n");
      wupperCard.card_close();  
      break;
    case 'h':  
      display_help();
      exit(EXIT_SUCCESS);
    default: /* '?' */
      fprintf(stderr, "Usage: %s COMMAND [OPTIONS]\nTry %s -h for more information.\n",
            APPLICATION_NAME, APPLICATION_NAME);
      exit(EXIT_FAILURE);
    }
  }
  
  ret = CMEM_SegmentFree(buffer1);
  if (!ret)
    ret = CMEM_SegmentFree(buffer2);
  if (!ret)
    ret = CMEM_Close();
  if (ret)
      rcc_error_print(stdout, ret);
  return(0);
}
