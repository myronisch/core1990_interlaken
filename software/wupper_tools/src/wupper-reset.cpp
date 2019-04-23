/**
  *    ------------------------------------------------------------------------------
  *                                                              
  *            NIKHEF - National Institute for Subatomic Physics 
  *  
  *                        Electronics Department                
  *                                                              
  *  ----------------------------------------------------------------------------
  *  @class wupper-reset
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
  *  @brief wupper-reset.c reset different parts of the card.
  *  Available command are:
  *  -flush         ->Flushes the main output FIFO from wupper device 0
  *  -flush -d 1    ->Flushes the main output FIFO from wupper device 1
  *  -all           ->Does everything for device 0.
  *  -reset         ->Displays an error.
  *
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
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <strings.h>
#include "version.h"

#include "DFDebug/DFDebug.h"
#include "wupper/Wupper.h"
#include "wupper/WupperException.h"

#define APPLICATION_NAME    "wupper-reset"

//Globals
WupperCard wupperCard;

enum cmd_mode
{
  UNKNOWN,
  FLUSH,
  RESET,
  REGISTERS_RESET,
  SOFT_RESET,
  ALL
};


/*****************/
void display_help()
/*****************/
{
  printf("Usage: %s [OPTIONS]\n", APPLICATION_NAME);
  printf("Tool to reset different aspects from the card.\n");
  printf("\nCommands:\n");
  printf("Options:\n");
  printf("  FLUSH            Flushes (resets) the main output FIFO toward Wupper.\n");
  printf("  RESET            Resets the whole Wupper_core.\n");
  printf("  REGISTERS_RESET  Resets the registers to default values.\n");
  printf("  SOFT_RESET       Global application soft reset.\n");
  printf("  ALL              Do everything.\n");
  printf("Options:\n");
  printf("  -d NUMBER        Use card indicated by NUMBER. Default: 0.\n");
  printf("  -D level         Configure debug output at API level. 0=disabled, 5, 10, 20 progressively more verbose output. Default: 0.\n");
  printf("  -h               Display help.\n");
  printf("  -V               Display the version number\n");
}


/*****************************/
int main(int argc, char **argv)
/*****************************/
{
  int debuglevel, opt, device_number = 0, mode = UNKNOWN;

  if(argc < 2)
  {
    display_help();
    exit(-1);
  }

  while((opt = getopt(argc, argv, "hd:D:V")) != -1)
  {
    switch (opt)
    {
      case 'd':
	device_number = atoi(optarg);
	break;

      case 'D':
	debuglevel = atoi(optarg);
        DF::GlobalDebugSettings::setup(debuglevel, DFDB_FELIXCARD);
	break;

      case 'h':
	display_help();
	exit(0);

      case 'V':
        printf("This is version %s of %s\n", VERSION, APPLICATION_NAME);
	exit(0);

      default:
	fprintf(stderr, "Usage: %s COMMAND [OPTIONS]\nTry %s -h for more information.\n", APPLICATION_NAME, APPLICATION_NAME);
	exit(-1);
    }
  }

  if(optind == argc)
  {
    fprintf(stderr, "No command given\n");
    fprintf(stderr, "Usage: " APPLICATION_NAME " COMMAND [OPTIONS]\nTry " APPLICATION_NAME " -h for more information.\n");
    exit(-1);
  }

  if(strcasecmp(argv[optind], "FLUSH") == 0)            mode = FLUSH;
  if(strcasecmp(argv[optind], "RESET") == 0)            mode = RESET;
  if(strcasecmp(argv[optind], "SOFT_RESET") == 0)       mode = SOFT_RESET;
  if(strcasecmp(argv[optind], "REGISTERS_RESET") == 0)  mode = REGISTERS_RESET;
  if(strcasecmp(argv[optind], "ALL") == 0)              mode = ALL;

  if(mode == UNKNOWN)
  {
    fprintf(stderr, "Unrecognized command '%s'\n", argv[1]);
    fprintf(stderr, "Usage: " APPLICATION_NAME " COMMAND [OPTIONS]\nTry " APPLICATION_NAME " -h for more information.\n");
    exit(-1);
  }

  try
  {
    wupperCard.card_open(device_number);
  }
  catch(WupperException ex)
  {
    std::cout << "ERROR. Exception thrown: " << ex.what() << std:: endl;
    exit(-1);
  }

  try
  {
    if(mode == RESET || mode == ALL)
      wupperCard.dma_reset();

    if(mode == FLUSH || mode == ALL)
      wupperCard.dma_fifo_flush();

    if(mode == SOFT_RESET || mode == ALL)
      wupperCard.soft_reset();

    if(mode == REGISTERS_RESET || mode == ALL)
      wupperCard.registers_reset();

    printf("\nDisabling interrupts\n");
    wupperCard.irq_disable(ALL_IRQS);
    
    wupperCard.card_close();
  }
  catch(WupperException ex)
  {
    std::cout << "ERROR. Exception thrown: " << ex.what() << std:: endl;
    exit(-1);
  }

  exit(0);
}
