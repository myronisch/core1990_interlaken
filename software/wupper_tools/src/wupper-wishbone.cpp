/**
  *    ------------------------------------------------------------------------------
  *                                                              
  *            NIKHEF - National Institute for Subatomic Physics 
  *  
  *                        Electronics Department                
  *                                                              
  *  ----------------------------------------------------------------------------
  *  @class wupper-wishbone
  *  
  *  
  *  @author      Andrea Borga    (andrea.borga@nikhef.nl)<br>
  *               Frans Schreuder (frans.schreuder@nikhef.nl)<br>
  * 			  Markus Joos<br>
  * 			  Jos Vermeulen<br>
  * 			  Roel Blankers
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

#include "wupper/Wupper.h"
#include "wupper/WupperException.h"

#define APPLICATION_NAME "wupper-wishbone"
#define device_number     0


//Globals
WupperCard wupperCard;

int
main(int argc, char** argv)
{
  bool write = false;
  uint64_t address, data = 0; 

  if(argc == 2) //READ operation
  {
    write = false;
  }
  else if(argc ==3) //Write operation
  { 
    write = true;
  }
  else
  {
    printf("usage:\n\nWrite operation:\nwupper-wishbone <Address> <data>\n\nRead operation:\nwupper-wishbone <Address>\n\n");
    return 1;
  }
  sscanf(argv[1], "%lX", &address);
  if(write)
    sscanf(argv[2], "%lX", &data);
  wupperCard.card_open(0);
  
  wupperCard.cfg_set_option("WISHBONE_CONTROL_ADDRESS",address);
  if(write)
    wupperCard.cfg_set_option("WISHBONE_CONTROL_WRITE_NOT_READ",1);
  else
    wupperCard.cfg_set_option("WISHBONE_CONTROL_WRITE_NOT_READ",0);
  wupperCard.cfg_set_option("WISHBONE_WRITE_DATA",data); //Data is ignored in read mode, but writing the register also triggers a write_enable to write the address in the fifo.
  
  if (!write) //READ
  {
    uint64_t empty;
    do{ //Wait for fifo to contain data (not empty)
      empty = wupperCard.cfg_get_option("WISHBONE_READ_EMPTY");
      uint64_t error = wupperCard.cfg_get_option("WISHBONE_STATUS_ERROR");
      if(error == 1) //check for err flag
      {
        printf("Wishbone error\n");
        return 1;
      }
    }while(empty==1);
    uint64_t read_data;
    wupperCard.cfg_set_option("WISHBONE_READ_READ_ENABLE",1);
    read_data = wupperCard.cfg_get_option("WISHBONE_READ_DATA");
    printf("%lX\n", read_data);
  }
  else //WRITE
  {
    uint64_t error = wupperCard.cfg_get_option("WISHBONE_STATUS_ERROR");
    if(error == 1)
    {
      printf("Wishbone error\n");
      return 1;
    }
  }

  wupperCard.card_close();
    
  return 0;
}
