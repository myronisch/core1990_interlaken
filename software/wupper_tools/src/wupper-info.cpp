/*******************************************************************/
/*                                                                 */
/* This is the C++ source code of the wupper-info application         */
/*                                                                 */
/* Author: Markus Joos, CERN                                       */
/* (based on code from a.rodriguez@cern.ch                         */
/*                                                                 */
/**C 2015 Ecosoft - Made from at least 80% recycled source code*****/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include "version.h"

#include "DFDebug/DFDebug.h"
#include "wupper/Wupper.h"
#include "wupper/WupperException.h"

#define APPLICATION_NAME    "wupper-info"


enum info_mode
{
  INFO_UNKNOWN,
  INFO_SFP,
  INFO_SI5324,
  INFO_ALL
};

//Globals
WupperCard wupperCard;
u_long baraddr2;


/************************/
static void display_help()
/************************/
{
  printf("Usage: %s [OPTIONS] [COMMAND] [CMD ARGUMENTS]\n", APPLICATION_NAME);
  printf("Displays information about a WUPPER device.\n\n");
  printf("Options:\n");
  printf("  -d NUMBER                       Use card indicated by NUMBER. Default: 0.\n");
  printf("  -v                              Verbose mode.\n");
  printf("  -D level                        Configure debug output at API level. 0=disabled, 5, 10, 20 progressively more verbose output. Default: 0.\n");
  printf("  -h                              Display help.\n");
  printf("  -V                              Display the version number\n");
  printf("Commands:\n");
  printf("  SFP                             Display information from Small Form Factor Pluggable transceivers\n");
  printf("  SI5324                          Display SI5324 status\n");
  printf("  ALL                             Display ALL information.\n");
}


/*******************************/
static void display_card_id(void)
/*******************************/
{
  u_long card_id = 0, reg_map_version = 0, major, minor;
  
  // Register map version stored as hex: 0x0300 -> 3.0
  reg_map_version = wupperCard.cfg_get_option(BF_REG_MAP_VERSION);
  major = (reg_map_version & 0xFF00) >> 8;
  minor = (reg_map_version & 0x00FF) >> 0;
  printf("Reg Map Version  %lx.%lx\n", major, minor);

  card_id = wupperCard.cfg_get_option(BF_CARD_TYPE);
  printf("Card ID:         WUPPER-%li\n", card_id);
}



/*******************************/
static void display_FW_date(void)
/*******************************/
{
  u_long date = 0;
  u_int version_day = 0, version_month = 0, version_year = 0, version_hour = 0, version_minute = 0;

  date = wupperCard.cfg_get_option(BF_BOARD_ID_TIMESTAMP);
  
  //Not very elegant
  version_year   = (date >> 32);
  version_month  = (0x00FF) & (date >> 24);
  version_day    = (0x0000FF) & (date >> 16);
  version_hour   = (0x000000FF) & (date >> 8);
  version_minute = (0x00000000FF) & date;

  printf("FW version date: %02x/%02x/%02x %02x:%02x\n", version_day, version_month, version_year, version_hour, version_minute);
}


/***********************************/
static void display_SVN_version(void)
/***********************************/
{
  u_long value = 0;
  
  value = wupperCard.cfg_get_option(BF_BOARD_ID_SVN);
  printf("SVN version:     %lu\n", value);
}



/**********************************************/
static void display_interrupts_descriptors(void)
/**********************************************/
{
  u_long descriptors = 0, interrupts = 0;
  
  interrupts  = wupperCard.cfg_get_option(BF_GENERIC_CONSTANTS_INTERRUPTS);
  descriptors = wupperCard.cfg_get_option(BF_GENERIC_CONSTANTS_DESCRIPTORS);
  printf("Number of interrupts : %ld\n", interrupts);
  printf("Number of descriptors: %ld\n", descriptors);
}


/******************************/
static void display_si5324(void)
/******************************/
{
  u_char result = 0;
  u_long card_model = 0;

  try
  {
    card_model = wupperCard.card_model();
    if(card_model != WUPPER_709)
    {
      printf("Sorry, this is not a WUPPER-709\n");
      return;
    }

    printf("Status of the SI5324\n");
    printf("--------------------\n");

    wupperCard.i2c_devices_read("REC_CLOCK", 0x81, &result);
    printf("Decoding register 129 (raw data = 0x%02x)\n", result);
    printf("LOS2_INT: %s\n", (result & 0x4)?"Error: CLK2 LOS":"CLK2 OK");

    wupperCard.i2c_devices_read("REC_CLOCK", 0x82, &result);
    printf("Decoding register 130 (raw data = 0x%02x)\n", result);
    printf("LOL_INT:  %s\n", (result & 0x1)?"PLL unlocked":"PLL locked");
  }
  catch(WupperException ex)
  {
    std::cout << "ERROR. Exception thrown: " << ex.what() << std::endl;
    exit(-1);
  }
}

/**********************************/
static void display_sfp(int verbose)
/**********************************/
{
  int cont = 0, cont1 = 0, cont2 = 0;
  u_char valueMSB = 0, aux_value = 0, valueLSB = 0, voltageMSB = 0, voltageLSB = 0;
  u_char part_number[40] = "\0", tx_fault = 0, rx_lost = 0, loss_os[4], sfp_sequence[4];
  u_short u_temperature = 0;
  float fractional = (float)1 / (float)256, voltage = 0, temperature = 0;
  u_int um_voltage = 0;
  const char *device[8];

  device[2] = "SFP1-1";     //WUPPER-311
  device[1] = "SFP1-2";
  device[0] = "SFP2-1";     //WUPPER-311
  device[3] = "SFP2-2";
  device[4] = "SFP3-1";
  device[5] = "SFP3-2";
  device[6] = "SFP4-1";
  device[7] = "SFP4-2";
  loss_os[0] = 0;
  loss_os[1] = 0;
  loss_os[2] = 0;
  loss_os[3] = 0;

  try
  {    
    for(cont = 0; cont < 8; cont++)
    {
      wupperCard.i2c_devices_read(device[cont], 96, &valueMSB);
      for(cont1 = 20; cont1 < 26; cont1++)
        wupperCard.i2c_devices_read(device[cont], cont1, &part_number[cont1 - 20]);

      for(cont1 = 40; cont1 < 51; cont1++)
        wupperCard.i2c_devices_read(device[cont], cont1, &part_number[cont1 - 40 + 6]);

      if (verbose)
      {
	printf("Device %s\n", device[cont]);
	printf("----------------------------------------------\n");
	printf("Part number      : %s\n", part_number);
      }

      cont++; //Switch to enhanced memory.

      wupperCard.i2c_devices_read(device[cont], 96, &valueMSB);
      wupperCard.i2c_devices_read(device[cont], 97, &valueLSB);

      u_temperature = valueMSB;
      u_temperature = (u_temperature << 8);
      u_temperature = u_temperature + valueLSB;
      temperature = ((short)u_temperature * fractional);
      if (verbose)
        printf("\n%s temperature monitor: %.2f C\n", device[cont], temperature);

      wupperCard.i2c_devices_read(device[cont], 98, &voltageMSB);
      wupperCard.i2c_devices_read(device[cont], 99, &voltageLSB);

      um_voltage = voltageMSB;
      um_voltage = (um_voltage << 8) + voltageLSB;
      voltage = (float)um_voltage / 10000;
      if (verbose)
        printf("%s voltage monitor: %.3f V\n", device[cont], voltage);
  
      wupperCard.i2c_devices_read(device[cont], 110, &aux_value);

      tx_fault = ((aux_value & (1 << 2)) >> 2);
      rx_lost  = ((aux_value & (1 << 1)) >> 1);
      //data_ready = (aux_value & 1);

      if (verbose)
        printf("Transmission fault estate: %u", tx_fault);

      if (verbose)
      {
      	if(tx_fault == 1)
          printf("    Fault on data transmission\n");
	else
          printf("    Transmitting data\n");
      }
      
      loss_os[cont2] = rx_lost;
      cont2++;
      if (verbose)
        printf("Loss of Signal estate: %u", rx_lost);

      if (verbose)
      {
	if(rx_lost == 1)
          printf("        Signal not received or under threshold\n");
	else
          printf("        Receiving signal\n");

	printf("Data ready: %u", tx_fault);

	if(tx_fault == 1)
          printf("                   Transceiver not ready\n");
	else
          printf("                   Transceiver ready\n");
	printf("\n");
      }
    }
    
    //WUPPER-311
    sfp_sequence[0] = 1;
    sfp_sequence[1] = 0;
    sfp_sequence[2] = 2;
    sfp_sequence[3] = 3;
    
    printf("               0    1    2    3\n");
    printf("---------------------------------\n");
    printf("Link Status  |");
    for(cont = 0; cont < 4; cont++)
    {
      if(loss_os[sfp_sequence[cont]] == 1)
        printf(" --  ");
      else
        printf(" Ok  ");
    }
    printf("\n\n");
  }
  catch(WupperException ex)
  {
    std::cout << "ERROR. Exception thrown: " << ex.what() << std::endl;
    exit(-1);
  }
}


/*****************************/
int main(int argc, char **argv)
/*****************************/
{
  int device_number = 0, opt, verbose = 0, common_info = 0, mode = INFO_UNKNOWN;
  int debuglevel, si5324_info = 0, sfp_info = 0, arguments = 0;
  u_long card_model = 0;

  while((opt = getopt(argc, argv, "hvd:D:V")) != -1)
  {
    switch (opt)
    {
      case 'd':
	device_number = atoi(optarg);
	arguments = arguments + 2;
	break;

      case 'v':
	verbose++;
	arguments++;
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

  if(optind != argc)
  {
    if(strcasecmp(argv[optind], "SFP") == 0)              mode = INFO_SFP;
    if(strcasecmp(argv[optind], "SI5324") == 0)           mode = INFO_SI5324;
    if(strcasecmp(argv[optind], "ALL") == 0)              mode = INFO_ALL;

    if(mode == INFO_UNKNOWN)
    {
      fprintf(stderr, "Unrecognized command '%s'\n", argv[1]);
      fprintf(stderr, "Usage: " APPLICATION_NAME " COMMAND [OPTIONS]\nTry " APPLICATION_NAME " -h for more information.\n");
      exit(-1);
    }
  }

  switch(mode)
  {
    case INFO_SFP:
      sfp_info = 1;
      break;

    case INFO_SI5324:
      si5324_info = 1;
      break;
    
    case INFO_ALL:
      common_info     = 1;
      sfp_info        = 1;
      si5324_info     = 1;
      break;

    default:
      common_info = 1;
  }
  
  try
  {
    wupperCard.card_open(device_number);
    baraddr2 = wupperCard.openBackDoor(2);
  }
  catch(WupperException ex)
  {
    std::cout << "ERROR. Exception thrown: " << ex.what() << std::endl;
    exit(-1);
  }

  card_model = wupperCard.card_model();
  
  if(common_info)
  {
    u_int noc;
    u_long value;

    printf("\nGeneral information\n");
    printf("Wupper card type: %li\n", card_model); 
    noc = WupperCard::number_of_cards();
    printf("\nThere are %d WUPPER cards installed in this computer\n", noc);
    
    printf("-------------------\n");
    display_card_id();
    display_FW_date();
    display_SVN_version();
    printf("\nOutput of lspci | grep Xil: \n");
    system("lspci | grep Xil");
    printf("\n");
   
    printf("\nInterrupts, descriptors & channels\n");
    printf("----------------------------------\n");
    display_interrupts_descriptors();

    value = wupperCard.cfg_get_option(BF_MMCM_MAIN_PLL_LOCK);
    if(value & 1)
      printf("Internal PLL Lock   : YES\n");
    else
      printf("Internal PLL Lock   : NO\n");

  }

  if(si5324_info)     display_si5324();
  if(sfp_info)        display_sfp(verbose);

  try
  {
    wupperCard.card_close();
  }
  catch(WupperException ex)
  {
    std::cout << "ERROR. Exception thrown: " << ex.what() << std::endl;
    exit(-1);
  }

  exit(0);
}
