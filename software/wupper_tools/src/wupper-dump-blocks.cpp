/*******************************************************************/
/*                                                                 */
/* This is the C++ source code of the wupper-dump-blocks application  */
/*                                                                 */
/* Author: Markus Joos, CERN                                       */
/*                                                                 */
/**C 2015 Ecosoft - Made from at least 80% recycled source code*****/


#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <cassert>
#include <unistd.h>
#include <stdlib.h>
#include "version.h"

#include "DFDebug/DFDebug.h"
#include "cmem_rcc/cmem_rcc.h"
#include "wuppercard/WupperCard.h"
#include "wuppercard/WupperException.h"

#define DMA_ID              0
#define BUFSIZE             1024
#define APPLICATION_NAME    "wupper-dump-blocks"

// Register map 3.x compatibility
#ifndef BF_GBT_EMU_ENA_TOHO
#define BF_GBT_EMU_ENA_TOHO BF_GBT_EMU_ENA_TOHOST
#endif
#ifndef BF_GBT_EMU_ENA_TOFE
#define BF_GBT_EMU_ENA_TOFE BF_GBT_EMU_ENA_TOFRONTEND
#endif

//Globals
WupperCard wupperCard;


void display_help()
{
  printf("Usage: %s [OPTIONS]\n", APPLICATION_NAME);
  printf("Reads raw data from a WUPPER and writes them into a file.\n\n");
  printf("Options:\n");
  printf("  -d NUMBER      Use card indicated by NUMBER. Default: 0.\n");
  printf("  -D level       Configure debug output at API level. 0=disabled, 5, 10, 20 progressively more verbose output. Default: 0.\n");
  printf("  -n NUMBER      Dump NUMBER blocks. Default: 100.\n");
  printf("  -f FILENAME    Dump blocks into the given file. Default: 'out.blocks'.\n");
  printf("  -F             Enable To-Frontend GBT emulator\n");
  printf("  -h             Display help.\n");
  printf("  -V             Display the version number\n");
}


/*****************************/
int main(int argc, char **argv)
/*****************************/
{
  int loop, ret, debuglevel, max_tlp, bsize, handle, opt, device_number = 0, emu_to_frontend = 0;
  u_int nblocks = 100;
  u_long vaddr, paddr, opt_emu_ena_to_host, opt_emu_ena_to_frontend;
  const char *filename = "out.blocks";

  while((opt = getopt(argc, argv, "hd:f:n:D:FV")) != -1)
  {
    switch (opt)
    {
      case 'd':
	device_number = atoi(optarg);
	break;

      case 'f':
	filename = optarg;
	break;

      case 'D':
	debuglevel = atoi(optarg);
        DF::GlobalDebugSettings::setup(debuglevel, DFDB_FELIXCARD);
	break;

      case 'n':
	nblocks = atoi(optarg);
	break;

      case 'h':
	display_help();
	exit(0);

      case 'F':
        emu_to_frontend = 1;
        break;

      case 'V':
        printf("This is version %s of %s\n", VERSION, APPLICATION_NAME);
	exit(0);

      default:
	fprintf(stderr, "Usage: %s [OPTIONS]\nTry %s -h for more information.\n", APPLICATION_NAME, APPLICATION_NAME);
	exit(-1);
    }
  }

  try
  {
    wupperCard.card_open(device_number);

    // save current state 
    opt_emu_ena_to_host     = wupperCard.cfg_get_option(BF_GBT_EMU_ENA_TOHO);
    opt_emu_ena_to_frontend = wupperCard.cfg_get_option(BF_GBT_EMU_ENA_TOFE);

    wupperCard.cfg_set_option(BF_GBT_EMU_ENA_TOHO, 1);

    if(emu_to_frontend)
    {
      wupperCard.cfg_set_option(BF_GBT_EMU_ENA_TOFE, 1);
    }

    for(loop = 0; loop < 8; loop++)
      wupperCard.dma_wait(loop);

    wupperCard.dma_reset();
    wupperCard.soft_reset();
    wupperCard.dma_fifo_flush();
    //wupperCard.cfg_set_option(BF_GBT_EMU_ENA_TOFE, 0);
    //wupperCard.cfg_set_option(BF_GBT_EMU_ENA_TOHO, 1);

    ret = CMEM_Open();
    bsize = BUFSIZE * nblocks;
    if (!ret)
      ret = CMEM_SegmentAllocate(bsize, (char *)"WupperThroughput", &handle);

    if (!ret)
      ret = CMEM_SegmentPhysicalAddress(handle, &paddr);

    if (!ret)
      ret = CMEM_SegmentVirtualAddress(handle, &vaddr);

    if (ret)
    {
      rcc_error_print(stdout, ret);
      exit(-1);
    }

    FILE *f = fopen(filename, "w");
    if(!f)
    {
      printf("Could not open file for writing\n");
      exit(-1);
    }

    max_tlp = wupperCard.dma_max_tlp_bytes();

    wupperCard.dma_to_host(DMA_ID, paddr, BUFSIZE * nblocks, max_tlp, 0);
    wupperCard.dma_wait(DMA_ID);

    if(nblocks != fwrite((void*)(vaddr), 1024, nblocks, f))
    {
      fprintf(stderr, APPLICATION_NAME": I/O Error\n");
      exit(-1);
    }

    fclose(f);

    // reset to initial state
    wupperCard.cfg_set_option(BF_GBT_EMU_ENA_TOHO, opt_emu_ena_to_host);
    wupperCard.cfg_set_option(BF_GBT_EMU_ENA_TOFE, opt_emu_ena_to_frontend);

    ret = CMEM_SegmentFree(handle);
    if (!ret)
      ret = CMEM_Close();
    if (ret)
      rcc_error_print(stdout, ret);

    wupperCard.card_close();
  }
  catch(WupperException ex)
  {
    std::cout << "ERROR. Exception thrown: " << ex.what() << std:: endl;
    exit(-1);
  }
  exit(0);
}
