/**
  *    ------------------------------------------------------------------------------
  *                                                              
  *            NIKHEF - National Institute for Subatomic Physics 
  *  
  *                        Electronics Department                
  *                                                              
  *  ----------------------------------------------------------------------------
  *  @class wupper-config
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
  *  @brief wupper-config.c is a part of the wupper tools. This tool
  *  allows to look at the PCIe configuration registers, set 
  *  configuration parameters, store and load configuration.
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
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <iostream>
#include <iomanip>
#include "version.h"
#include "DFDebug/DFDebug.h"
#include "wupper/Wupper.h"
#include "wupper/WupperException.h"


#define APPLICATION_NAME    "wupper-config"


//Globals
WupperCard wupperCard;


enum cmd_mode
{
  CMD_UNKNOWN,
  CMD_LIST,
  CMD_REGISTERS,
  CMD_GET,
  CMD_SET,
  CMD_SETRAW,
  CMD_GETRAW,
  CMD_LOAD,
  CMD_STORE
};


/*****************/
void display_help()
/*****************/
{
  printf("Usage: %s COMMAND [OPTIONS]\n", APPLICATION_NAME);
  printf("\nCommands:\n");
  printf("  registers <GROUP>      List card configuration.\n");
  printf("                         If GROUP is not defined all registers will be listed\n");
  printf("                         Supported strings for GROUP currently are: GEN, CRC, CRM, GEC, GWC, GWM and HKC\n");
  printf("  list                   List card bitfields.\n");
  printf("  set KEY=VALUE          Set option KEY to VALUE. Multiple settings may be given. If no value is given, 0 is assumed.\n");
  printf("  get KEY                Get option KEY. Multiple settings may be given\n");
  printf("  setraw -b -r -o -w -v  Set a raw register or bitfield to a new value\n");
  printf("    -b                   The BAR the register belongs to (0, 1 or 2). Default: 2\n");
  printf("    -r                   The offset of the register address relative to the BAR. Default: 0\n");
  printf("    -o                   The offset of the first bit within the register (for bitfields) Default: 0\n");
  printf("    -w                   The width of the bitfield. Use -w 32 or -w 64 if you want to write full 32bit or 64bit registers. Default: 32\n");
  printf("    -v                   The data value to be written to the register. Default: 0\n");
  printf("  getraw -b -r -o -w     Get the data of a raw register or bitfield. The definition of -b, -r, -o and -w is the same as for setraw\n");
  printf("  store FILENAME         Store current configuration in the given file.\n");
  printf("  load FILENAME          Load the configuration in the given file. The file format used is the one produced by the 'store' command.\n");
  printf("\nOptions:\n");
  printf("  -d NUMBER              Use card indicated by NUMBER. Default: 0.\n");
  printf("  -D level               Configure debug output at API level. 0=disabled, 5, 10, 20 progressively more verbose output. Default: 0.\n");
  printf("  -h                     Display help.\n");
  printf("  -V                     Display the version number\n");
}


/**************************************/
static u_long split_key_value(char *str)
/**************************************/
{
  char *pos = strchr(str, '=');
  if(pos == NULL)
  {
    printf("ERROR: invalid string passed to <set> option\n");
    exit(-1);
  }
  *pos = '\0';
  // Remove trailing spaces from 'key' string
  while( *str ) { if( isspace(*str) ) *str = '\0'; ++str; }
  // Convert second part of string 'str' to u_long
  return strtoll(pos + 1, NULL, 0);
}


/****************************/
static void print_header(void)
/****************************/
{
  printf("Offset   RW   Name                          Value               Description\n");
  printf("================================================================================================================\n");
}


/**********************************************************************************************************************************/
static void print_register(u_long address, u_int flags, u_int lo, u_int hi, const char *name, u_long value, const char *description)
/**********************************************************************************************************************************/
{
  if(flags & REGMAP_REG_READ)
  {
    std::cout << std::hex  << "0x" << address << std::dec;

    std::cout << " [";

    if (hi > 64)
      std::cout << "TRIGGER ";
    else
    {
      if (flags & REGMAP_REG_READ)
	std::cout << "R";
      else  
	std::cout << " ";

      if (flags & REGMAP_REG_WRITE)
	std::cout << "W ";
      else  
	std::cout << "  ";

      if (hi == lo)
	std::cout << "   " << std::setfill('0') << std::setw(2) << lo;
      else
	std::cout << std::setfill('0') << std::setw(2) << hi << ":" << std::setfill('0') << std::setw(2) << lo;
    }
    
    std::cout << "] ";
    std::cout << std::setfill(' ') << std::setw(40) << name;

    u_int nblanks;
    if (hi > 64)
      nblanks = 0;
    else if (hi == lo)  
      nblanks = 15;
    else
      nblanks = 15 - ((hi - lo) / 4);
      
    std::cout << std::setfill(' ') << std::setw(nblanks) << ""; 
    std::cout << "  0x" << std::setfill('0') << std::setw(16 - nblanks) << std::hex << value << std::dec;
    std::cout << "  " << description;
    std::cout << std::endl; 
  }
  else
  {
  
    std::cout << std::hex  << "0x" << address << std::dec;
    std::cout << " [";
    
    if (flags & REGMAP_REG_READ)
      std::cout << "R";
    else  
      std::cout << " ";

    if (flags & REGMAP_REG_WRITE)
      std::cout << "W ";
    else  
      std::cout << "  ";
    
    std::cout << std::setfill('0') << std::setw(2) << hi << ":" << std::setfill('0') << std::setw(2) << lo;
    std::cout << "] ";
    std::cout << std::setfill(' ') << std::setw(40) << name;
    std::cout << "                      " << description;
    std::cout << std::endl; 
  }
}


/************************/
static void cmd_list(void)
/************************/
{
  regmap_bitfield_t *bf;
  u_long value = 0;

  print_header();

  for(bf = regmap_bitfields; bf->name != NULL; bf++)
  {
    if(bf->flags & REGMAP_REG_READ)
    {
      value = wupperCard.cfg_get_option(bf->name);
      print_register(bf->address, bf->flags, bf->shift, bf->hi, bf->name, value, bf->description);
    }
    else
      print_register(bf->address, bf->flags, bf->shift, bf->hi, bf->name, 0, bf->description);
  }
}


/*****************************************************/
static void cmd_register(char **groups, int num_groups)
/*****************************************************/
{
  regmap_group_t *grp;
  u_long value;
  int loop, index, groupIndex;

  printf("You have selected %d group(s)\n", num_groups);

  print_header();

  for(grp = regmap_groups; grp->name != NULL; grp++)
  {
    for (loop = 0; loop < num_groups; loop++)
    {
      if(strcasecmp(grp->name, groups[loop]) == 0)
      {
	printf("\nListing registers for group %s (%s)\n", grp->name, grp->description);

        for (index = 0; grp->index[index] != -1; index++)
	{
         groupIndex = grp->index[index];
	 if(regmap_registers[groupIndex].flags & REGMAP_REG_READ)
	 {
	   value = wupperCard.cfg_get_reg(regmap_registers[groupIndex].name);
           print_register(regmap_registers[groupIndex].address, regmap_registers[groupIndex].flags, 0, 63, regmap_registers[groupIndex].name, value, regmap_registers[groupIndex].description);
	 }
	 else
           print_register(regmap_registers[groupIndex].address, regmap_registers[groupIndex].flags, 0, 63, regmap_registers[groupIndex].name, 0, regmap_registers[groupIndex].description);
	}
      }
    }
  }

  if (num_groups == 0)
  {
    for(grp = regmap_groups; grp->name != NULL; grp++)
    {
      printf("\nListing registers for group %s (%s)\n", grp->name, grp->description);

      for (index = 0; grp->index[index] != -1; index++)
      {
       groupIndex = grp->index[index];
       if(regmap_registers[groupIndex].flags & REGMAP_REG_READ)
       {
	 value = wupperCard.cfg_get_reg(regmap_registers[groupIndex].name);
	 print_register(regmap_registers[groupIndex].address, regmap_registers[groupIndex].flags, 0, 63, regmap_registers[groupIndex].name, value, regmap_registers[groupIndex].description);
       }
       else
	 print_register(regmap_registers[groupIndex].address, regmap_registers[groupIndex].flags, 0, 63, regmap_registers[groupIndex].name, 0, regmap_registers[groupIndex].description);
      }
    }
  }
}


/***************************************/
static void cmd_set(char **config, int n)
/***************************************/
{
  int i;

  for(i = 0; i < n; i++)
  {
    u_long value = split_key_value(config[i]);
    wupperCard.cfg_set_option(config[i], value);
  }
}


/***************************************/
static void cmd_get(char **config, int n)
/***************************************/
{
  int i;
  u_long value;

  for(i = 0; i < n; i++)
  {
    value = wupperCard.cfg_get_option(config[i]);
    printf("%s=0x%lx\n", config[i], value);
  }
}


/**********************************/
static void cmd_load(char *filename)
/**********************************/
{
  FILE *fp;
  char *line = NULL;
  size_t len = 0;

  fp = fopen(filename, "r");
  if (fp == NULL)
  {
    fprintf(stderr, "Could not open '%s'\n", filename);
    exit(-1);
  }

  while (getline(&line, &len, fp) != -1)
  {
    while( isspace(*line) ) ++line; // Remove leading spaces
    u_long value = split_key_value(line);
    // In settings files allow 'sleep = <value>' setting
    if( strcmp(line, "sleep") == 0 ||
	strcmp(line, "SLEEP") == 0 )
      usleep( value*1000 );
    else
      wupperCard.cfg_set_option(line, value);
  }

  if (line)
    free(line);
  fclose(fp);
}


/***********************************/
static void cmd_store(char *filename)
/***********************************/
{
  FILE *fp;
  regmap_bitfield_t *bf;
  u_long value;

  fp = fopen(filename, "w");
  if (fp == NULL)
  {
    fprintf(stderr, "Could not open '%s'\n", filename);
    exit(-1);
  }

  for(bf = regmap_bitfields; bf->name != NULL; bf++)
  {
    if(bf->flags & REGMAP_REG_WRITE && bf->flags & REGMAP_REG_READ)
    {
      value = wupperCard.cfg_get_option(bf->name);
      fprintf(fp, "%s=0x%lx\n", bf->name, value);
    }
  }

  fclose(fp);
}


/*****************************/
int main(int argc, char **argv)
/*****************************/
{
  int opt, debuglevel, device_number = 0, mode = CMD_UNKNOWN;
  u_int raw_bar = 2, raw_address = 0, raw_offset = 0, raw_width = 32;
  u_long raw_value = 0;

  if(argc < 2)
  {
    display_help();
    exit(-1);
  }

  while ((opt = getopt(argc, argv, "hd:D:Vb:r:o:w:v:")) != -1)
  {
    switch (opt)
    {
      case 'd':
	device_number = atoi(optarg);
	break;

      case 'b':
	raw_bar = atoi(optarg);
	break;

      case 'r':
	sscanf(optarg, "%x", &raw_address);
	break;

      case 'o':
	raw_offset = atoi(optarg);
	break;

      case 'w':
	raw_width = atoi(optarg);
	break;

      case 'v':
	sscanf(optarg, "%lx", &raw_value);
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

  if(strcasecmp(argv[optind], "registers") == 0) mode = CMD_REGISTERS;
  if(strcasecmp(argv[optind], "list") == 0)      mode = CMD_LIST;
  if(strcasecmp(argv[optind], "set") == 0)       mode = CMD_SET;
  if(strcasecmp(argv[optind], "get") == 0)       mode = CMD_GET;
  if(strcasecmp(argv[optind], "getraw") == 0)    mode = CMD_GETRAW;
  if(strcasecmp(argv[optind], "setraw") == 0)    mode = CMD_SETRAW;
  if(strcasecmp(argv[optind], "load") == 0)      mode = CMD_LOAD;
  if(strcasecmp(argv[optind], "store") == 0)     mode = CMD_STORE;

  if(mode == CMD_UNKNOWN)
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

  switch(mode)
  {
    case CMD_LIST:
      cmd_list();
      break;

    case CMD_REGISTERS:
      cmd_register(argv + optind + 1, argc - 1 - optind);
      break;

    case CMD_SET:
      cmd_set(argv + optind + 1, argc - 1 - optind);
      break;

    case CMD_GET:
      cmd_get(argv + optind + 1, argc - 1 - optind);
      break;

    case CMD_SETRAW:
      {
	u_long baraddr = wupperCard.openBackDoor(raw_bar);
	if ((raw_offset + raw_width) < 33)
	{
          u_int *p_value = (u_int *)(baraddr + raw_address);
	  if (raw_width == 32)
	  {
 	    printf("Original value of the register = 0x%08x\n", *p_value);
	    *p_value = raw_value;
	    printf("New value of the register = 0x%08x\n", *p_value);
	  }
	  else
	  {
	    u_int raw_32 = *p_value;
	    printf("Original value of the register = 0x%08x\n", raw_32);

	    u_int bitmask = ~(((1 << raw_width) - 1) << raw_offset);   //Example -w 6 -o 7 ==> 0x00001f80

	    raw_32 = raw_32 & bitmask;
	    raw_32 = raw_32 + (raw_value << raw_offset);
            printf("bitmask = 0x%08x\n", bitmask);
            printf("Shifted value = 0x%08x\n", (u_int)(raw_value << raw_offset));
            printf("New value of the register = 0x%08x\n", raw_32);
            *p_value = raw_32;
	  }
	}
	else
	{
          u_long *p_value = (u_long *)(baraddr + raw_address);
	  if (raw_width == 64)
	  {
 	    printf("Original value of the register = 0x%016lx\n", *p_value);
	    *p_value = raw_value;
	    printf("New value of the register = 0x%016lx\n", *p_value);
	  }
	  else
	  {
	    u_long raw_64 = *p_value;
	    printf("Original value of the register = 0x%016lx\n", raw_64);

	    u_long bitmask = ~((u_long(1 << raw_width) - 1) << raw_offset);   //Example -o 32 -w 8 ==> 0xffffff00ffffffff

	    raw_64 = raw_64 & bitmask;
	    raw_64 = raw_64 + (raw_value << raw_offset);
            printf("bitmask = 0x%016lx\n", bitmask);
            printf("shifted value = 0x%016lx\n", (u_long)(raw_value << raw_offset));
            printf("New value of the register = 0x%016lx\n", raw_64);
            *p_value = raw_64;
	  }
	}
      }
      break;

    case CMD_GETRAW:
      {
	u_long baraddr = wupperCard.openBackDoor(raw_bar);
	if ((raw_offset + raw_width) < 33)
	{
          u_int *p_value = (u_int *)(baraddr + raw_address);
	  if (raw_width == 32)
 	    printf("Value of the register = 0x%08x\n", *p_value);
	  else
	  {
	    u_int raw_32 = *p_value;
	    raw_32 = raw_32 >> raw_offset;
	    u_int bitmask = (1 << raw_width) - 1;
	    raw_32 = raw_32 & bitmask;
	    printf("Value of the bitfield = 0x%08x\n", raw_32);
	  }
	}
	else
	{
          u_long *p_value = (u_long *)(baraddr + raw_address);
	  if (raw_width == 64)
 	    printf("Value of the register = 0x%016lx\n", *p_value);
	  else
	  {
	    u_long raw_64 = *p_value;
	    raw_64 = raw_64 >> raw_offset;
	    u_long bitmask = (u_long(1 << raw_width)) - 1;
	    raw_64 = raw_64 & bitmask;
	    printf("Value of the bitfield = 0x%016lx\n", raw_64);
	  }
	}
      }
      break;

    case CMD_LOAD:
      if(argc < 3 || argv[2][0] == '-')
      {
	fprintf(stderr, "No filename given\n");
	exit(-1);
      }
      cmd_load(*(argv + optind + 1));
      break;

    case CMD_STORE:
      if(argc < 3 || argv[2][0] == '-')
      {
	fprintf(stderr, "No filename given\n");
	exit(-1);
      }
      cmd_store(*(argv + optind + 1));
      break;
  }

  try
  {
    wupperCard.card_close();
  }
  catch(WupperException ex)
  {
    std::cout << "ERROR. Exception thrown: " << ex.what() << std:: endl;
    exit(-1);
  }

  exit(0);
}
