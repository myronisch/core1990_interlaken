/*******************************************************************/
/*                                                                 */
/* This is the C++ source code of the flx-i2c application          */
/*                                                                 */
/* Author: Markus Joos, CERN                                       */
/*                                                                 */
/**C 2015 Ecosoft - Made from at least 80% recycled source code*****/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <ctype.h>
#include <string.h>
#include "version.h"

#include "DFDebug/DFDebug.h"
#include "wupper/Wupper.h"
#include "wupper/WupperException.h"

#define APPLICATION_NAME    "wupper-i2c"

//Globals
WupperCard wupperCard;

enum i2c_mode
{
  I2C_UNKNOWN,
  I2C_READ,
  I2C_WRITE,
  I2C_LIST
};


/*****************************************/
static void flx_i2c_list(u_long card_model)
/*****************************************/
{
  i2c_device_t *devices;

  if(card_model == WUPPER_712)   //711 and 712 are identical wrt I2C
  {
    devices = i2c_devices_WUPPER_711;
    printf("Card model FLX 712\n");
    printf("Switch I2C address: 0x%x\n", I2C_ADDR_SWITCH1_WUPPER_711);  
  }
  else if(card_model == WUPPER_711)
  {
    devices = i2c_devices_WUPPER_711;
    printf("Card model FLX 711\n");
    printf("Switch I2C address: 0x%x\n", I2C_ADDR_SWITCH1_WUPPER_711);  
  }
  else if(card_model == WUPPER_710)
  {
    devices = i2c_devices_WUPPER_710;
    printf("Card model FLX 710\n");
    printf("Switch I2C address: 0x%x\n", I2C_ADDR_SWITCH1_WUPPER_710);
  }
  else if(card_model == WUPPER_709)
  {
    devices = i2c_devices_WUPPER_709;
    printf("Card model FLX 709\n");
    printf("Primary switch I2C address: 0x%x\n", I2C_ADDR_SWITCH1_WUPPER_709);
    printf("Secondary (cascaded) switch I2C address: 0x%x\n", I2C_ADDR_SWITCH2_WUPPER_709);
  }
  else
  {
    printf("ERROR: Card model not known\n");
    exit(-1);
  }

  printf("\nList of available devices: \n");
  printf("Device              Model                  Switch port       Address\n");
  printf("==============================================================================\n");

  for(; devices->name != NULL; devices++)
  {
    int port1 = 0, port2 = 0, cont1 = 0, cont2 = 0;

    sscanf(devices->port, "%d:%d", &port1, &port2);
    for(cont1 = 0; port1 > 1; cont1++)
      port1 = port1 / 2;

    for(cont2 = 0; port2 > 1; cont2++)
      port2 = port2 / 2;

    printf("%-16s    %-25s   %d:%-8d     0x%x\n", devices->name, devices->description, cont1, cont2, devices->address);
  }
  printf("\n");
}


/****************************/
static void list_all_devices()
/****************************/
{  
  flx_i2c_list(WUPPER_712);
  flx_i2c_list(WUPPER_711);
  flx_i2c_list(WUPPER_710);
  flx_i2c_list(WUPPER_709);
}


/************************/
static void display_help()
/************************/
{
  printf("Usage: %s [OPTIONS]\n", APPLICATION_NAME);
  printf("Transmit or receive data from a I2C device.\n\n");
  printf("General options:\n");
  printf("  -d NUMBER                    Use card indicated by NUMBER. Default: 0.\n");
  printf("  -D level                     Configure debug output at API level. 0=disabled, 5, 10, 20 progressively more verbose output. Default: 0.\n");
  printf("  -h                           Display help.\n");
  printf("  -V                           Display the version number\n");
  printf("\nCommands:\n");
  printf("  l[ist]   [all]                                                 List available devices from the card used or all [all] card models.\n");
  printf("  r[ead]   DEVICE_NAME                  REG_ADDRESS              Read a register from a known I2C device. (./flx-i2c list)\n");
  printf("  r[ead]   PORT1:[PORT2:]DEV_ADDRESS    REG_ADDRESS              Read a register from a known or unknown I2C\n");
  printf("                                                                    device providing port and address.\n");
  printf("  w[rite]  DEVICE_NAME                  REG_ADDRESS     DATA     Write a register from a known I2C device. (./flx-i2c list)\n");
  printf("  w[rite]  PORT1:[PORT2:]DEV_ADDRESS    REG_ADDRESS     DATA     Write a register from a known or unknown I2C\n");
  printf("                                                                    device providing port and address.\n");
}


/*****************************/
int main(int argc, char **argv)
/*****************************/
{
  int debuglevel, opt, device_number = 0, mode = I2C_UNKNOWN, cont = 0;
  u_long card_model = 0;
  u_char result = 0;

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
	cont = cont + 2;
	break;

      case 'h':
	display_help();
	exit(0);

      case 'D':
	debuglevel = atoi(optarg);
	cont = cont + 2;
        DF::GlobalDebugSettings::setup(debuglevel, DFDB_FELIXCARD);
	break;

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

  if(strcasecmp(argv[optind], "read") == 0)  mode = I2C_READ;
  if(strcasecmp(argv[optind], "r") == 0)     mode = I2C_READ;
  if(strcasecmp(argv[optind], "write") == 0) mode = I2C_WRITE;
  if(strcasecmp(argv[optind], "w") == 0)     mode = I2C_WRITE;
  if(strcasecmp(argv[optind], "list") == 0)  mode = I2C_LIST;
  if(strcasecmp(argv[optind], "l") == 0)     mode = I2C_LIST;
  if(mode == I2C_UNKNOWN)
  {
    fprintf(stderr, "Unrecognized command '%s'\n" , argv[1]);
    fprintf(stderr, "Usage: " APPLICATION_NAME " COMMAND [OPTIONS]\nTry " APPLICATION_NAME " -h for more information.\n");
    exit(-1);
  }

  try
  {
    wupperCard.card_open(device_number);
  }
  catch(WupperException &ex)
  {
    std::cout << "ERROR. Exception thrown: " << ex.what() << std:: endl;
    exit(-1);
  }

  card_model = wupperCard.card_model();
  if(card_model != WUPPER_712 && card_model != WUPPER_711 && card_model != WUPPER_710 && card_model != WUPPER_709)
  {
    fprintf(stderr, APPLICATION_NAME " error: Card model not recognized\n");
    exit(-1);
  }

  switch(mode)
  {
    case I2C_READ:
      if(argc == (4 + cont))
      {
	try
	{
	  u_int converted_value;
	  u_char i2caddr;

	  sscanf(argv[3 + cont], "%x", &converted_value);
	  i2caddr = converted_value;

	  printf("Now reading from register 0x%02x of device %s\n", i2caddr, argv[2 + cont]);
          wupperCard.i2c_devices_read(argv[2 + cont], i2caddr, &result);
	}
	catch(WupperException &ex)
	{
	  std::cout << "ERROR. Exception thrown: " << ex.what() << std:: endl;
	  exit(-1);
	}
        printf("Register %s = 0x%x\n", argv[3 + cont], result);
      }
      else
      {
        fprintf(stderr, APPLICATION_NAME": error: Number of parameters incorrect\n");
        exit(-1);
      }
      break;

    case I2C_WRITE:
      printf("cont = %d\n", cont);
      if(argc == (5 + cont))
      {
	try
	{
	  u_int converted_value;
	  u_char i2caddr, i2cdata;

	  sscanf(argv[3 + cont], "%x", &converted_value);
	  i2caddr = converted_value;

	  sscanf(argv[4 + cont], "%x", &converted_value);
	  i2cdata = converted_value;

	  printf("Now writing 0x%02x to register 0x%02x of device %s\n", i2cdata, i2caddr, argv[2 + cont]);
	  wupperCard.i2c_devices_write(argv[2 + cont], i2caddr, i2cdata);
	}
	catch(WupperException &ex)
	{
	  std::cout << "ERROR. Exception thrown: " << ex.what() << std:: endl;
	  exit(-1);
	}
      }
      else
      {
        fprintf(stderr, APPLICATION_NAME": error: Number of parameters incorrect\n");
        exit(-1);
      }
      break;

    case I2C_LIST:
      if(argc == 2 + cont)
        flx_i2c_list(card_model);
      else
      {
        if(argc == 3 + cont)
	{
          if((strcasecmp(argv[2], "all")) == 0)
            list_all_devices();
	  else
            fprintf(stderr, APPLICATION_NAME": error: Command incorrect\n");
        }
	else
          fprintf(stderr, APPLICATION_NAME": error: Number of parameters incorrect\n");
      }
      break;

    default:
      fprintf(stderr, "Usage: %s COMMAND [OPTIONS]\nTry %s -h for more information.\n", APPLICATION_NAME, APPLICATION_NAME);
      exit(-1);
  }

  try
  {
    wupperCard.card_close();
  }
  catch(WupperException &ex)
  {
    std::cout << "ERROR. Exception thrown: " << ex.what() << std:: endl;
    exit(-1);
  }

  exit(0);
}
