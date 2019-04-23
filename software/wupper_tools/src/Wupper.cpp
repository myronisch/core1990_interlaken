/*******************************************************************/
/*                                                                 */
/* This is the C++ source code of the WupperCard object               */
/*                                                                 */
/* Author: Markus Joos, CERN                                       */
/*                                                                 */
/**C 2015 Ecosoft - Made from at least 80% recycled source code*****/


#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <signal.h>

#include <stdexcept>

#include <sys/types.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/time.h>

#include <linux/types.h>

#include "DFDebug/DFDebug.h"
#include "wupper/Wupper.h"
#include "wupper/WupperException.h"

int WupperCard::m_cards_open = 0;
static int m_timeout      = 0;


/****************************************/
void watchdogtimer_handler(int /*signum*/)
/****************************************/
{
  DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::watchdogtimer_handler: Timer expired");
  m_timeout = 1;
}


/****************/
WupperCard::WupperCard()
/****************/
{
  m_fd                   = 0;
  m_is_open              = false;
  m_slotNumber           = -1;
  m_Bar_0_Base           = 0;
  m_Bar_1_Base           = 0;
  m_Bar_2_Base           = 0;
  m_card_model           = 0;
  verboseFlag            = false;
}


i2c_device_t i2c_devices_WUPPER_709[] =
  {
    {"USR_CLK",         "SI570",                    0x5d, "1:0"},
    {"ADN2814",         "ADN2814",                  0x40, "2:0"},
    {"SI5345",          "SI5345",                   0x68, "2:0"},    
    {"FMC_TEMP_SENSOR", "TC74 (on CRORC TEST FMC)", 0x4A, "2:0"},
    {"ID_EEPROM",       "M24C08-WDW6TP",            0x54, "8:0"},
    {"SFP1-1",          "AFBR-709SMZ (Conven Mem)", 0x50, "16:1"},
    {"SFP1-2",          "AFBR-709SMZ (Enhan Mem)",  0x51, "16:1"},
    {"SFP2-1",          "AFBR-709SMZ (Conven Mem)", 0x50, "16:2"},
    {"SFP2-2",          "AFBR-709SMZ (Enhan Mem)",  0x51, "16:2"},
    {"SFP3-1",          "AFBR-709SMZ (Conven Mem)", 0x50, "16:4"},
    {"SFP3-2",          "AFBR-709SMZ (Enhan Mem)",  0x51, "16:4"},
    {"SFP4-1",          "AFBR-709SMZ (Conven Mem)", 0x50, "16:8"},
    {"SFP4-2",          "AFBR-709SMZ (Enhan Mem)",  0x51, "16:8"},
    {"DDR3-1",          "SRAM-MT8KTF51264HZ",       0x51, "64:0"},
    {"DDR3-2",          "SRAM-MT8KTF51264HZ",       0x52, "64:0"},
    {"REC_CLOCK",       "SI5324",                   0x68, "128:0"},
    {NULL,              NULL,                       0,    0}
  };


i2c_device_t i2c_devices_WUPPER_710[] =
  {
    {"CLOCK_RAM",       "ICS8N4Q001L IDT",          0x6e, "1:0"},
    {"CLOCK_SYS",       "ICS8N4Q001L IDT",          0x6e, "2:0"},
    {"CLOCK_CXP1",      "IDT 8N3Q001",              0x6e, "4:0"},
    {"CLOCK_CXP2",      "IDT 8N3Q001",              0x6e, "8:0"},
    {"ADN2814",         "ADN2814 (on TTCfx FMC)",   0x40, "16:0"},
    {"SI5345",          "SI5345",                   0x68, "16:0"},   
    {"FMC_TEMP_SENSOR", "TC74 (on CRORC TEST FMC)", 0x4A, "16:0"},
    {"CXP1_TX",         "AFBR-83PDZ",               0x50, "32:0"},
    {"CXP1_RX",         "AFBR-83PDZ",               0x54, "32:0"},
    {"CXP2_TX",         "AFBR-83PDZ",               0x50, "64:0"},
    {"CXP2_RX",         "AFBR-83PDZ",               0x54, "64:0"},
    {"DDR3-1",          "SRAM-MT16JTF25664HZ",      0x50, "128:0"},
    {"DDR3-2",          "SRAM-MT16JTF25664HZ",      0x51, "128:0"},
    {NULL,              NULL,                       0,    0}
  };


i2c_device_t i2c_devices_WUPPER_711[] =
  {
    {"ADN2814",         "ADN2814",                  0x40, "2:0"},
    {"SIS53154",        "SI53154",                  0x6b, "2:0"},
    {"LTC2991_1",       "LTC2991",                  0x48, "2:0"},
    {"LTC2991_2",       "LTC2991",                  0x49, "2:0"},
    {"SI5345",          "SI5345",                   0x68, "4:0"},
    {"TCA6408A",        "TCA6408A",                 0x20, "4:0"},
    {"MINIPOD-TX1",     "AFBR-814PxyZ",             0x2c, "8:0"},
    {"MINIPOD-TX2",     "AFBR-814PxyZ",             0x2d, "8:0"},
    {"MINIPOD-TX3",     "AFBR-814PxyZ",             0x2e, "8:0"},
    {"MINIPOD-TX4",     "AFBR-814PxyZ",             0x2f, "8:0"},
    {"MINIPOD-RX1",     "AFBR-824PxyZ",             0x30, "8:0"},
    {"MINIPOD-RX2",     "AFBR-824PxyZ",             0x31, "8:0"},
    {"MINIPOD-RX3",     "AFBR-824PxyZ",             0x32, "8:0"},
    {"MINIPOD-RX4",     "AFBR-824PxyZ",             0x33, "8:0"},
    {NULL,              NULL,                       0,    0}
  };


/****************************/
void WupperCard::card_open(int n)
/****************************/
{
  card_params_t card_data;

  //DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::card_open: Method called.");

  //Install a signal handler for the implementation of watchdog timers.
  //Note: The signal handler must only be installed once.
  if (m_cards_open == 0)
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::card_open: Installing signal handler");
    struct sigaction sa;

    // Install timer_handler as the signal handler for SIGVTALRM
    memset(&sa, 0, sizeof (sa));
    sa.sa_handler = watchdogtimer_handler;
    sigaction (SIGVTALRM, &sa, NULL);  //MJ: According to http://www.gnu.org/software/libc/manual/html_node/Setting-an-Alarm.html SIGALRM  may be better

  }
  else
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::card_open: Signal handler already installed");
    m_cards_open++;
  }

  m_fd = open("/dev/wupper", O_RDWR);
  if (m_fd < 0)
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::card_open: Failed to open /dev/wupper.");
    THROW_WUPPER_EXCEPTION(NOTOPENED, "Failed to open /dev/wupper.")
  }
  card_data.slot = n;

  int iores = ioctl(m_fd, SETCARD, &card_data);
  if(iores < 0)
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::card_open: Error from ioctl(SETCARD).");
    THROW_WUPPER_EXCEPTION(IOCTL, "Error from ioctl(SETCARD)")
  }

  m_Bar_0_Base = map_memory_bar(card_data.baseAddressBAR0, 4096);
  m_Bar_1_Base = map_memory_bar(card_data.baseAddressBAR1, 4096);
  m_Bar_2_Base = map_memory_bar(card_data.baseAddressBAR2, 65536);

  m_bar0 = (wuppercard_bar0_regs_t *)m_Bar_0_Base;
  m_bar1 = (wuppercard_bar1_regs_t *)m_Bar_1_Base;

  m_card_model = card_model();
}


/****************************/
void WupperCard::card_close(void)
/****************************/
{
  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::card_close: Method called.");

  //Get rid of the signal handler when we close the last instance
  if (m_cards_open == 1)
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::card_close: Removing signal handler");
    sigaction(SIGVTALRM, NULL, NULL);
  }
  else
  {
    m_cards_open--;
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::card_close: m_cards_open = " << m_cards_open);
  }

  if (m_fd == 0)
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::card_close: m_fd is zero");
    THROW_WUPPER_EXCEPTION(NOTOPENED, "The link to the driver is already closed (or has never been opened)")
  }

  unmap_memory_bar(m_Bar_0_Base, 4096);
  unmap_memory_bar(m_Bar_1_Base, 4096);
  unmap_memory_bar(m_Bar_2_Base, 65536);

  close(m_fd);
}


/**********************************/
u_int WupperCard::number_of_cards(void)
/**********************************/
{
  int iores, numberOfCardsFound = 0;

  int fd;
  fd = open("/dev/wupper", O_RDWR);
  if (fd < 0)
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::number_of_cards: Failed to open /dev/wupper.");
  }
  
  iores = ioctl(fd, GETCARDS, &numberOfCardsFound);
  if(iores < 0)
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::number_of_cards: Error from ioctl(GETCARDS).");
  }

  return numberOfCardsFound;
}


/**********************************/
int WupperCard::dma_max_tlp_bytes(void)
/**********************************/
{
  int tlp_bits;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::dma_max_tlp_bytes: Method called.");

  int iores = ioctl(m_fd, GET_TLP, &tlp_bits);
  if(iores < 0)
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::dma_max_tlp_bytes: Error from ioctl(GET_TLP).");
    THROW_WUPPER_EXCEPTION(IOCTL, "Error from ioctl(GET_TLP)")
  }

  return (128 << tlp_bits);  //MJ: replace 128 by a constant??
}


/**********************************/
void WupperCard::dma_stop(u_int dma_id)
/**********************************/
{
  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::dma_stop: Method called.");
  m_bar0->DMA_DESC_ENABLE &= ~(1 << dma_id);
}


/**************************************************************************************/
void WupperCard::dma_to_host(u_int dma_id, u_long dst, size_t size, u_int tlp, u_int flags)
/**************************************************************************************/
{
  //u_int best_tlp;
  
  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::dma_to_host: Method called.");
  dma_stop(dma_id);

  //best_tlp = size % tlp;
  //DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::dma_to_host: size " << size << " tlp = " << tlp << " best_tlp = " << best_tlp);

  if (dst == 0 || size == 0)
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::dma_to_host: dst or size is zero.");
    THROW_WUPPER_EXCEPTION(PARAM, "dst or size is zero")
  }
  
  if ((size % tlp) != 0)
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::dma_to_host: size is not a multiple of tlp.");
    THROW_WUPPER_EXCEPTION(PARAM, "size is not a multiple of tlp")
  }

  m_bar0->DMA_DESC[dma_id].start_address = dst;
  m_bar0->DMA_DESC[dma_id].end_address   = dst + size;
  m_bar0->DMA_DESC[dma_id].tlp           = tlp / 4;
//  m_bar0->DMA_DESC[dma_id].tlp           = best_tlp / 4;
  m_bar0->DMA_DESC[dma_id].read          = 0;
  m_bar0->DMA_DESC[dma_id].wrap_around   = (flags & WUPPER_DMA_WRAPAROUND) ? 1 : 0;
  m_bar0->DMA_DESC[dma_id].read_ptr      = dst;

  if(m_bar0->DMA_DESC_STATUS[dma_id].even_addr_pc == m_bar0->DMA_DESC_STATUS[dma_id].even_addr_dma)
  {
    // Make 'even_addr_pc' unequal to 'even_addr_dma', or a (circular) DMA won't start!?
    --m_bar0->DMA_DESC[dma_id].read_ptr;
    ++m_bar0->DMA_DESC[dma_id].read_ptr;
  }

  m_bar0->DMA_DESC_ENABLE |= 1 << dma_id;
}


/****************************************************************************************/
void WupperCard::dma_from_host(u_int dma_id, u_long dst, size_t size, u_int tlp, u_int flags)
/****************************************************************************************/
{
  //u_int best_tlp;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::dma_from_host: Method called.");
  dma_stop(dma_id);

  //best_tlp = size % tlp;
  //DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::dma_from_host: size " << size << " tlp = " << tlp << " best_tlp = " << best_tlp);

  if (dst == 0 || size == 0)
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::dma_from_host: dst or size is zero.");
    THROW_WUPPER_EXCEPTION(PARAM, "dst or size is zero")
  }
  
  if ((size % tlp) != 0)
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::dma_from_host: size is not a multiple of tlp.");
    THROW_WUPPER_EXCEPTION(PARAM, "size is not a multiple of tlp")
  }
  
  if ((size % 32) != 0)
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::dma_from_host: size is not a multiple of 32 bytes.");
    THROW_WUPPER_EXCEPTION(PARAM, "size is not a multiple of 32 bytes")
  } 
  
  m_bar0->DMA_DESC[dma_id].start_address = dst;
  m_bar0->DMA_DESC[dma_id].end_address   = dst + size;
  m_bar0->DMA_DESC[dma_id].tlp           = tlp / 4;
//  m_bar0->DMA_DESC[dma_id].tlp           = best_tlp / 4;
  m_bar0->DMA_DESC[dma_id].read          = 1;
  m_bar0->DMA_DESC[dma_id].wrap_around   = (flags & WUPPER_DMA_WRAPAROUND) ? 1 : 0;
  m_bar0->DMA_DESC[dma_id].read_ptr      = dst;

  m_bar0->DMA_DESC_ENABLE |= 1 << dma_id;
}


/**********************************/
void WupperCard::dma_wait(u_int dma_id)
/**********************************/
{
  //Set up watchdog
  struct itimerval timer;
  timer.it_value.tv_sec = 1;           // One second
  timer.it_value.tv_usec = 0;          
  timer.it_interval.tv_sec = 0;
  timer.it_interval.tv_usec = 0;       // Only one shot
  setitimer(ITIMER_VIRTUAL, &timer, NULL);
  m_timeout = 0;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::dma_wait: Method called for dma_id = " << dma_id);
  while(m_bar0->DMA_DESC_ENABLE & (1 << dma_id))
  {
    if (m_timeout)
    {
      DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::dma_wait: ERROR: Timeout");
      THROW_WUPPER_EXCEPTION(TIMEOUT, "Timeout")
    }
  }
  //Stop watchdog
  timer.it_value.tv_usec = 0;    // Stop timer
  setitimer(ITIMER_VIRTUAL, &timer, NULL);
  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::dma_wait: Done");
}


/******************************************************************************************/
void WupperCard::dma_advance_from_host_ptr(u_int dma_id, u_long dst, size_t size, size_t bytes)
/******************************************************************************************/
{
  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::dma_advance_from_host_ptr: Method called.");

  m_bar0->DMA_DESC[dma_id].read_ptr += bytes;

  if(m_bar0->DMA_DESC[dma_id].read_ptr >= dst + size)
    m_bar0->DMA_DESC[dma_id].read_ptr -= size;
}


/********************************/
void WupperCard::dma_fifo_flush(void)
/********************************/
{
  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::dma_fifo_flush: Method called.");
  m_bar0->DMA_FIFO_FLUSH = 1;
}


/***************************/
void WupperCard::dma_reset(void)
/***************************/
{
  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::dma_reset: Method called.");
  m_bar0->DMA_RESET = 1;
}


/****************************/
void WupperCard::soft_reset(void)
/****************************/
{
  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::soft_reset: Method called.");
  m_bar0->SOFT_RESET = 1;
}


/*********************************/
void WupperCard::registers_reset(void)
/*********************************/
{
  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::registers_reset: Method called.");
  m_bar0->REGISTERS_RESET = 1;
}


/**********************************************************/
void WupperCard::i2c_write_byte(u_char slave_addr, u_char byte)
/**********************************************************/
{
  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::i2c_write_byte: Method called.");

  i2c_wait_not_full();

  u_long value = 0;
  value |= ((u_long)slave_addr << 1);
  value |= ((u_long)byte << 8);
  cfg_set_reg(REG_I2C_WR, value);
  usleep(I2C_DELAY);
}


/*******************************************************************************/
void WupperCard::i2c_write_byte_to_addr(u_char slave_addr, u_char addr, u_char byte)
/*******************************************************************************/
{
  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::i2c_write_byte_to_addr: Method called.");

  i2c_wait_not_full();

  u_long value = 0;
  value |= ((u_long)slave_addr << 1);
  value |= ((u_long)addr << 8);
  value |= ((u_long)byte << 16);
  value |= (1 << 24);
  cfg_set_reg(REG_I2C_WR, value);
  usleep(I2C_DELAY);
}


/***********************************************************/
u_char WupperCard::i2c_read_byte(u_char slave_addr, u_char addr)
/***********************************************************/
{
  u_long res;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::i2c_read_byte: Method called with slave_addr = " << (u_int)slave_addr << " and addr = " << (u_int)addr);

  i2c_wait_not_full();

  u_long value = 1;
  value |= ((u_long)slave_addr << 1);
  value |= ((u_long)addr << 8);
  value |= (1 << 24);

  DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_read_byte: value = 0x" << HEX(value));

  cfg_set_reg(REG_I2C_WR, value);
  usleep(I2C_DELAY);
  i2c_wait_not_empty();
  usleep(I2C_DELAY);
  cfg_set_reg(REG_I2C_RD, 1);
  usleep(I2C_DELAY);
  res = cfg_get_reg(REG_I2C_RD);

  DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_read_byte: res = 0x" << HEX(res));
  DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_read_byte: I2C_EMPTY_FLAG = 0x" << HEX(I2C_EMPTY_FLAG));

  if(res & I2C_EMPTY_FLAG)
    return (res & 0xff);
  else
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::i2c_read_byte: i2c_read_byte has failed because I2C_EMPTY_FLAG was not set");
    THROW_WUPPER_EXCEPTION(I2C, "i2c_read_byte has failed because I2C_EMPTY_FLAG was not set")
  }
  return 0;
}


/*******************************************************************************/
void WupperCard::i2c_devices_write(const char *device, u_char reg_addr, u_char data)
/*******************************************************************************/
{
  u_char bin_port1 = 0, bin_port2 = 0, address = 0;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::i2c_devices_write: method called with device = " << device << " and reg_addr = " << (u_int)reg_addr);

  int digics = i2c_parse_address(device, &bin_port1, &bin_port2, &address);
  if(digics == 0)
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_devices_write: bin_port1 = " << (u_int)bin_port1);
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_devices_write: bin_port2 = " << (u_int)bin_port2);
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_devices_write: address   = " << (u_int)address);

    //Writing value.
    i2c_write(bin_port1, bin_port2, address, reg_addr, data);
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_devices_write: Writing " << data << " to register " << (u_int)reg_addr << " on port 1 " << (u_int)bin_port1 << " and port 2 " << (u_int)bin_port2 << " from device " << (u_int)address);
  }
  else
  {
    if(digics == I2C_DEVICE_ERROR_INVALID_PORT)
    {
      DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::i2c_devices_write: Invalid port.");
      THROW_WUPPER_EXCEPTION(I2C, "Invalid port")
    }
    if (digics == I2C_DEVICE_ERROR_INVALID_ADDRESS)
    {
      DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::i2c_devices_write: Invalid address.");
      THROW_WUPPER_EXCEPTION(I2C, "Invalid address")
    }

    DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::i2c_devices_write: Device does not exist.");
    THROW_WUPPER_EXCEPTION(I2C, "Device does not exist")
  }
}


/********************************************************************************/
void WupperCard::i2c_devices_read(const char *device, u_char reg_addr, u_char *value)
/********************************************************************************/
{
  u_char bin_port1 = 0, bin_port2 = 0, address = 0;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::i2c_devices_read: method called with device = " << device << " and reg_addr = " << (u_int)reg_addr);

  int digics = i2c_parse_address(device, &bin_port1, &bin_port2, &address);
  if(digics == 0)
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_devices_read: bin_port1 = " << (u_int)bin_port1);
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_devices_read: bin_port2 = " << (u_int)bin_port2);
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_devices_read: address   = " << (u_int)address);

    //Reading value.
    *value = i2c_read(bin_port1, bin_port2, address, reg_addr);
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_devices_read: Register " << (u_int)reg_addr << " on port " << (u_int)bin_port1 << " and " << (u_int)bin_port2 << " from device " << (u_int)address << " = " << (u_int)*value);
  }
  else
  {
    if(digics == I2C_DEVICE_ERROR_INVALID_PORT)
    {
      DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::i2c_devices_read: Invalid port.");
      THROW_WUPPER_EXCEPTION(I2C, "Invalid address")
    }
    if (digics == I2C_DEVICE_ERROR_INVALID_ADDRESS)
    {
      DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::i2c_devices_read: Invalid address.");
      THROW_WUPPER_EXCEPTION(I2C, "Invalid address")
    }

    DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::i2c_devices_read: Device does not exist.");
    THROW_WUPPER_EXCEPTION(I2C, "Device does not exist")
  }
}


/******************************************/
u_long WupperCard::cfg_get_reg(const char *key)
/******************************************/
{
  char *upper = strdup(key);
  regmap_register_t *reg;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::cfg_get_reg: method called for register " << key);
  str_upper(upper);

  for(reg = regmap_registers; reg->name != NULL; reg++)
  {
    if(strcmp(upper, reg->name) == 0)
    {
      if(!(reg->flags & REGMAP_REG_READ))
      {
        DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::cfg_get_reg: Register " << key << " not readable!");
        DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::cfg_get_reg: reg->flags   = 0x" << HEX(reg->flags));
        DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::cfg_get_reg: reg->address = 0x" << HEX(reg->address));
        DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::cfg_get_reg: reg->name    = " << reg->name);
        DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::cfg_get_reg: REGMAP_REG_READ = 0x" << HEX(REGMAP_REG_READ));
        THROW_WUPPER_EXCEPTION(REG_ACCESS, "Register not readable!")
      }
     
      u_long *v = (u_long *)(m_Bar_2_Base + reg->address);
      free(upper);
      return(*v);
    }
  }

  free(upper);
  DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::cfg_get_reg: Register " << key << " does not exist!");
  THROW_WUPPER_EXCEPTION(REG_ACCESS, "Register " << key << " does not exist!")
}


/*********************************************/
u_long WupperCard::cfg_get_option(const char *key)
/*********************************************/
{
  char *upper = strdup(key);
  regmap_bitfield_t *bf;
  u_long regvalue;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::cfg_get_option: method called with key = " << key);
  str_upper(upper);

  for(bf = regmap_bitfields; bf->name != NULL; bf++)
  {
    if(strcmp(upper, bf->name) == 0)
    {
      DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::cfg_get_option: bitfield found");
      if(!(bf->flags & REGMAP_REG_READ))
      {
        DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::cfg_get_option: Bitfield " << key << " not readable!");
        THROW_WUPPER_EXCEPTION(REG_ACCESS, "Bitfield " << key << " not readable!")
      }

      DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::cfg_get_option: m_Bar_2_Base = 0x" << HEX(m_Bar_2_Base));
      DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::cfg_get_option: bf->address  = 0x" << HEX(bf->address));

      u_long *v = (u_long *)(m_Bar_2_Base + bf->address);
      regvalue = *v;
      DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::cfg_get_option: regvalue(1)  = 0x" << HEX(regvalue));
      regvalue = (regvalue & bf->mask) >> bf->shift;
      DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::cfg_get_option: bf->shift    = 0x" << HEX(bf->shift));
      DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::cfg_get_option: bf->mask     = 0x" << HEX(bf->mask));
      DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::cfg_get_option: regvalue(2)  = 0x" << HEX(regvalue));
      DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::cfg_get_option: end of method");
      free(upper);
      return(regvalue);
    }
  }

  free(upper);

  DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::cfg_get_option: upper freed");
  DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::cfg_get_option: Bitfield " << key << " does not exist!");
  THROW_WUPPER_EXCEPTION(REG_ACCESS, "Bitfield " << key << " does not exist!")
}


/******************************************************/
void WupperCard::cfg_set_reg(const char *key, u_long value)
/******************************************************/
{
  char *upper = strdup(key);
  regmap_register_t *reg;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::cfg_set_reg: method called for bit field " << key << " and value " << value);
  str_upper(upper);

  for(reg = regmap_registers; reg->name != NULL; reg++)
  {
    if(strcmp(upper, reg->name) == 0)
    {
      if(!(reg->flags & REGMAP_REG_WRITE))
      {
        DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::cfg_set_reg: Register " << key << " not writeable!");
        THROW_WUPPER_EXCEPTION(REG_ACCESS, "Register " << key << " not writeable!")
      }

      u_long *v = (u_long *)(m_Bar_2_Base + reg->address);
      *v = value;
      free(upper);
      return;
    }
  }

  free(upper);
  DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::cfg_set_reg: Register " << key << " does not exist!");
  THROW_WUPPER_EXCEPTION(REG_ACCESS, "Register " << key << " does not exist!")
}


/*********************************************************/
void WupperCard::cfg_set_option(const char *key, u_long value)
/*********************************************************/
{
  regmap_bitfield_t *bf;
  char *upper = strdup(key);
  u_long regvalue;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::cfg_set_option: method called for bit field " << key << " and value " << value);
  str_upper(upper);

  for(bf = regmap_bitfields; bf->name != NULL; bf++)
  {
    if(strcmp(upper, bf->name) == 0)
    {
      if(!(bf->flags & REGMAP_REG_WRITE))
      {
        DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::cfg_set_option: Bitfield " << key << " not writeable!");
        THROW_WUPPER_EXCEPTION(REG_ACCESS, "Bitfield " << key << " not writeable!")
      }

      u_long *v = (u_long *)(m_Bar_2_Base + bf->address);

      regvalue = *v;
      regvalue &=~ bf->mask;
      regvalue |= (value << bf->shift) & bf->mask;

      *v = regvalue;
      free(upper);
      return;
    }
  }

  free(upper);
  DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::cfg_set_option: Bitfield " << key << " does not exist!");
  THROW_WUPPER_EXCEPTION(REG_ACCESS, "Bitfield " << key << " does not exist!")
}

    
/***************************************/
void WupperCard::irq_enable(u_int interrupt)
/***************************************/
{
  u_int i;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::irq_enable: Method called for interrupt " << interrupt);
  if (interrupt == ALL_IRQS)
  {  
    DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::irq_enable: Enabling all interrupts.");
    for(i = 0; i < NUM_INTERRUPTS; i++)
    {
      //Enable the interrupt by direct access to the register in the WUPPER card
      m_bar1->INT_TAB_ENABLE |= (1 << i);

      //...and tell the driver the interrupt is denabled
      int iores = ioctl(m_fd, UNMASK_IRQ, &i);
      if(iores < 0)
      {
	DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::irq_enable: Error from ioctl(RESET_IRQ_COUNTERS).");
	THROW_WUPPER_EXCEPTION(IOCTL, "Error from ioctl(RESET_IRQ_COUNTERS)")
      } 
    }
  }
  else
  {
    //Enable the interrupt by direct access to the register in the WUPPER card
    m_bar1->INT_TAB_ENABLE |= (1 << interrupt);
    
    //...and tell the driver the interrupt is enabled
    int iores = ioctl(m_fd, UNMASK_IRQ, &interrupt);
    if(iores < 0)
    {
      DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::irq_enable: Error from ioctl(RESET_IRQ_COUNTERS).");
      THROW_WUPPER_EXCEPTION(IOCTL, "Error from ioctl(RESET_IRQ_COUNTERS)")
    } 
  }
}


/****************************************/
void WupperCard::irq_disable(u_int interrupt)
/****************************************/
{
  u_int i;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::irq_disable: Method called for interrupt " << interrupt);
  if (interrupt == ALL_IRQS)
  {  
    DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::irq_disable: Disabling all interrupts.");
    for(i = 0; i < NUM_INTERRUPTS; i++)
    {
      //Disable the interrupt by direct access to the register in the WUPPER card
      m_bar1->INT_TAB_ENABLE &= ~(1 << i);   
      
      //...and tell the driver the interrupt is disabled
      int iores = ioctl(m_fd, MASK_IRQ, &i);
      if(iores < 0)
      {
	DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::irq_disable: Error from ioctl(RESET_IRQ_COUNTERS).");
	THROW_WUPPER_EXCEPTION(IOCTL, "Error from ioctl(RESET_IRQ_COUNTERS)")
      } 
    }
  }
  else
  {
    //Disable the interrupt by direct access to the register in the WUPPER card
    m_bar1->INT_TAB_ENABLE &= ~(1 << interrupt);

    //...and tell the driver the interrupt is disabled
    int iores = ioctl(m_fd, MASK_IRQ, &interrupt);
    if(iores < 0)
    {
      DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::irq_disable: Error from ioctl(RESET_IRQ_COUNTERS).");
      THROW_WUPPER_EXCEPTION(IOCTL, "Error from ioctl(RESET_IRQ_COUNTERS)")
    } 
  }
}


/*************************************/
void WupperCard::irq_wait(u_int interrupt)
/*************************************/
{
  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::irq_wait: Method called for interrupt " << interrupt);

  int iores = ioctl(m_fd, WAIT_IRQ, &interrupt);
  if(iores < 0)
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::irq_wait: Error from ioctl(WAIT_IRQ).");
    THROW_WUPPER_EXCEPTION(IOCTL, "Error from ioctl(WAIT_IRQ)")
  }
}


/***********************************************/
void WupperCard::irq_reset_counters(u_int interrupt)
/***********************************************/
{
  u_int i;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::irq_reset_counters: Method called for interrupt " << interrupt);

  if (interrupt == ALL_IRQS)
  {  
    DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::irq_reset_counters: Clearing all interrupt counters.");
    for(i = 0; i < NUM_INTERRUPTS; i++)
    {
      int iores = ioctl(m_fd, RESET_IRQ_COUNTERS, &i);
      if(iores < 0)
      {
	DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::irq_reset_counters: Error from ioctl(RESET_IRQ_COUNTERS).");
	THROW_WUPPER_EXCEPTION(IOCTL, "Error from ioctl(RESET_IRQ_COUNTERS)")
      }
    }
  }
  else
  {
    int iores = ioctl(m_fd, RESET_IRQ_COUNTERS, &interrupt);
    if(iores < 0)
    {
      DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::irq_reset_counters: Error from ioctl(RESET_IRQ_COUNTERS).");
      THROW_WUPPER_EXCEPTION(IOCTL, "Error from ioctl(RESET_IRQ_COUNTERS)")
    }
  }
}


/***************************************/
void WupperCard::irq_cancel(u_int interrupt)
/***************************************/
{
  u_int i;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::irq_cancel: Method called for interrupt " << interrupt);

  if (interrupt == ALL_IRQS)
  {  
    DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::irq_cancel: Clearing all interrupt counters.");
    for(i = 0; i < NUM_INTERRUPTS; i++)
    {
      int iores = ioctl(m_fd, CANCEL_IRQ_WAIT, &i);
      if(iores < 0)
      {
	DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::irq_cancel: Error from ioctl(CANCEL_IRQ_WAIT).");
	THROW_WUPPER_EXCEPTION(IOCTL, "Error from ioctl(CANCEL_IRQ_WAIT)")
      }
    }
  }
  else
  {
    int iores = ioctl(m_fd, CANCEL_IRQ_WAIT, &interrupt);
    if(iores < 0)
    {
      DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::irq_cancel: Error from ioctl(CANCEL_IRQ_WAIT).");
      THROW_WUPPER_EXCEPTION(IOCTL, "Error from ioctl(CANCEL_IRQ_WAIT)")
    }
  }
}


/**************************************/
void WupperCard::irq_clear(u_int interrupt)
/**************************************/
{
  u_int i;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::irq_clear: Method called for interrupt " << interrupt);

  if (interrupt == ALL_IRQS)
  {  
    DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::irq_clear: Clearing all interrupt counters.");
    for(i = 0; i < NUM_INTERRUPTS; i++)
    {
      int iores = ioctl(m_fd, CLEAR_IRQ, &i);
      if(iores < 0)
      {
	DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::irq_clear: Error from ioctl(CANCEL_IRQ_WAIT).");
	THROW_WUPPER_EXCEPTION(IOCTL, "Error from ioctl(CANCEL_IRQ_WAIT)")
      }
    }
  }
  else
  {
    int iores = ioctl(m_fd, CLEAR_IRQ, &interrupt);
    if(iores < 0)
    {
      DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::irq_clear: Error from ioctl(CANCEL_IRQ_WAIT).");
      THROW_WUPPER_EXCEPTION(IOCTL, "Error from ioctl(CANCEL_IRQ_WAIT)")
    }
  }
}

/***************************/
int WupperCard::card_model(void)
/***************************/
{
  u_long card_id = 0;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::card_model: Method called).");

  card_id = cfg_get_option(BF_CARD_TYPE);

  //if(card_id != WUPPER_709 && card_id != WUPPER_710 && card_id != WUPPER_711)
  //{
  //  DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::card_model: Cannot identify card. Card ID " << card_id << " is unknown");
  //  THROW_WUPPER_EXCEPTION(HW, "Cannot identify card")
  //}

  return (int)card_id;
}


/***********************************/
u_long WupperCard::openBackDoor(int bar)
/***********************************/
{
  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::openBackDoor: Method called.");

  if(bar == 0)
    return m_Bar_0_Base;
  else if(bar == 1)
    return m_Bar_1_Base;
  else if(bar == 2)
    return m_Bar_2_Base;
  else
    THROW_WUPPER_EXCEPTION(PARAM, "Parameter bar is out of range")
}


/************************************************/
/* Service functions (not part of the user API) */
/************************************************/


/**********************************************************/
u_long WupperCard::map_memory_bar(u_long pci_addr, size_t size)
/**********************************************************/
{
  void *vaddr;
  u_long offset;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::map_memory_bar: method called.");
  offset = pci_addr & 0xfff;  /* mmap seems to need a 4K alignment */
  pci_addr &= 0xfffffffffffff000l;

  vaddr = mmap(0, size, (PROT_READ|PROT_WRITE), MAP_SHARED, m_fd, pci_addr);
  if (vaddr == MAP_FAILED)
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::map_memory_bar: Error from mmap for pci_addr = " << pci_addr << " and size = " << size);
    THROW_WUPPER_EXCEPTION(MAPERROR, "Error from mmap for pci_addr = " << pci_addr << " and size = " << size)
  }

  return (u_long)vaddr + offset;
}


/*******************************************************/
void WupperCard::unmap_memory_bar(u_long vaddr, size_t size)
/*******************************************************/
{
  int ret;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::unmap_memory_bar: method called.");

  ret = munmap((void *)vaddr, size);
  if (ret)
  {
    DEBUG_TEXT(DFDB_VMERCC, 5, "unmap_memory_bar: Error from munmap, errno = 0x" << HEX(errno));
    THROW_WUPPER_EXCEPTION(MAPERROR, "Error from munmap, errno = 0x" << HEX(errno))
  }
}


/***********************************/
void WupperCard::i2c_wait_not_full(void)
/***********************************/
{
  u_long status;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::i2c_wait_not_full: method called.");

  //Set up watchdog
  struct itimerval timer;
  timer.it_value.tv_sec = 1;           // One second
  timer.it_value.tv_usec = 0;    
  timer.it_interval.tv_sec = 0;
  timer.it_interval.tv_usec = 0;       // Only one shot
  setitimer(ITIMER_VIRTUAL, &timer, NULL);
  m_timeout = 0;

  status = cfg_get_reg(REG_I2C_WR);
  while (status & I2C_FULL_FLAG)
  {
    usleep(I2C_SLEEP);
    if (m_timeout)
    {
      THROW_WUPPER_EXCEPTION(TIMEOUT, "Timeout")
    }
    status = cfg_get_reg(REG_I2C_WR);
  }

  //Stop watchdog
  timer.it_value.tv_usec = 0;    // Stop timer
  setitimer(ITIMER_VIRTUAL, &timer, NULL);
}


/************************************/
void WupperCard::i2c_wait_not_empty(void)
/************************************/
{
  u_long status;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::i2c_wait_not_empty: method called.");

  //Set up watchdog
  struct itimerval timer;
  timer.it_value.tv_sec = 1;           // One second
  timer.it_value.tv_usec = 0;
  timer.it_interval.tv_sec = 0;
  timer.it_interval.tv_usec = 0;       // Only one shot
  setitimer(ITIMER_VIRTUAL, &timer, NULL);
  m_timeout = 0;

  status = cfg_get_reg(REG_I2C_RD);
  while (status & I2C_EMPTY_FLAG)
  {
    usleep(I2C_SLEEP);
    if (m_timeout)
    {
      THROW_WUPPER_EXCEPTION(TIMEOUT, "Timeout")
    }
    status = cfg_get_reg(REG_I2C_RD);
  }

  //Stop watchdog
  timer.it_value.tv_usec = 0;    // Stop timer
  setitimer(ITIMER_VIRTUAL, &timer, NULL);
}


/********************************************************************************************/
int WupperCard::i2c_parse_address(const char *str, u_char *port1, u_char *port2, u_char *address)
/********************************************************************************************/
{
  //This method understands three formats of device strings
  //Format 1 is a symbolic name such as "ADN2814". The names are defined in the arrays i2c_devices_WUPPER_7[09,10,11] in beginning of this file
  //Format 2 has the structure "P1:ADD" with P1 = Port number, ADDR = address of the i2c device
  //Format 3 has the structure "P1:P2:ADD" with P1 = First port number, P2 = Second port number, ADDR = address of the i2c device
  //
  //The port numbers have two formats too.
  //In a device string of format 2 or 3 the port is decimal (e.g. "4:0x70" refers to port 4 and address 0x70)
  //The port numbers provided by the i2c_devices_WUPPER_7.. structures are binary encoded. e.g. 0x8 for the 4th port
  //This function converts all port numbers to the binary format


  char *p_aux = NULL;
  char portstr[6];
  unsigned long int convres;
  i2c_device_t *devices;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::i2c_parse_address: method called with string = " << str);

  //Check if we have a device of Format 1
  char *upper = strdup(str);
  str_upper(upper);

  if(m_card_model == WUPPER_711)
    devices = i2c_devices_WUPPER_711;

  if(m_card_model == WUPPER_710)
    devices = i2c_devices_WUPPER_710;

  if(m_card_model == WUPPER_709)
    devices = i2c_devices_WUPPER_709;

  for(; devices->name != NULL; devices++)
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: devices->name        = " << devices->name);
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: devices->description = " << devices->description);
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: devices->address     = " << (u_int)devices->address);
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: devices->port        = " << devices->port);
    if(strcmp(upper, devices->name) == 0)
    {
      DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: Device found!");
      sscanf(devices->port, "%s", portstr);

      DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: portstr = " << portstr);

      char *portpos = strchr(const_cast<char*>(portstr), ':');
      DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: portpos = " << *portpos);

      if(portpos == NULL)
      {
	DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::i2c_parse_address: Device " << *portpos << " does not exist (port string lacks : character).");
	THROW_WUPPER_EXCEPTION(I2C, "Device " << *portpos << " does not exist")
      }

      convres = 999;
      convres = strtoul(portstr, &p_aux, 0);

      if(convres == 999)
      {
	DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::i2c_parse_address: Failed to decode the first port number");
	return I2C_DEVICE_ERROR_INVALID_PORT;
      }

      DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: convres = " << convres);
      *port1 = (u_char)convres;
      DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: *port1 = " << (u_int)*port1);
      DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: *p_aux = " << p_aux);

      convres = 999;
      convres = strtoul(p_aux + 1, &p_aux, 0);

      if(convres == 999)
      {
	DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::i2c_parse_address: Failed to decode the second port number");
	return I2C_DEVICE_ERROR_INVALID_PORT;
      }

      DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: convres = " << convres);
      *port2 = (u_char)convres;
      DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: *port2 = " << (u_int)*port2);

      *address = devices->address;
      DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: *address = " << (u_int)*address);

      free(upper);
      return(0);
    }
  }

  //Check if we have a device of Format 2 or 3
  DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: Check if we have a device of Format 2 or 3");
  char *pos = strchr(const_cast<char*>(str), ':');
  if(pos == NULL)
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::i2c_parse_address: Failed to find a : character.");
    return I2C_DEVICE_ERROR_NOT_EXIST;
  }

  DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: rest string = " << pos);

  char *pos2 = strchr((pos + 1), ':');

  if(pos2 == NULL)
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: Format 2 detected");
    convres = 999;
    convres = strtoul(str, &p_aux, 0);

    if(convres == 999)
    {
      DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::i2c_parse_address: Failed to decode the first port number");
      return I2C_DEVICE_ERROR_INVALID_PORT;
    }
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: convres = " << convres);
    *port1 = 1 << ((u_char)convres);
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: binary port1 = " << (u_int)*port1);

    convres = 999;
    convres = strtoul(pos + 1, &p_aux, 0);
    if(convres == 999)
    {
      DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::i2c_parse_address: Failed to decode the address");
      return I2C_DEVICE_ERROR_INVALID_ADDRESS;
    }
    *address = (u_char)convres;
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: address = " << (u_int)*address);
  }
  else
  {
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: Format 3 detected");
    convres = 999;
    convres = strtoul(str, &p_aux, 0);
    if(convres == 999)
    {
      DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::i2c_parse_address: Failed to decode the first port number (2)");
      return I2C_DEVICE_ERROR_INVALID_PORT;
    }
    *port1 = 1 << ((u_char)convres);
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: binary port1 = " << (u_int)*port1);

    convres = 999;
    convres = strtoul(pos + 1, &p_aux, 0);
    if(convres == 999)
    {
      DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::i2c_parse_address: Failed to decode the second port number");
      return I2C_DEVICE_ERROR_INVALID_PORT;
    }
    *port2 = 1 << ((u_char)convres);
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: binary port2 = " << (u_int)*port2);

    convres = 999;
    convres = strtoul(pos2 + 1, &p_aux, 0);
    if(convres == 999)
    if(*p_aux != '\0')
    {
      DEBUG_TEXT(DFDB_FELIXCARD, 5, "WupperCard::i2c_parse_address: Failed to decode the address");
      return I2C_DEVICE_ERROR_INVALID_ADDRESS;
    }
    *address = (u_char)convres;
    DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: address = " << (u_int)*address);
  }

  DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: binary *port1 = " << (u_int)*port1);
  DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: binary *port2 = " << (u_int)*port2);
  DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_parse_address: *address = " << (u_int)*address);

  return 0;
}


/********************************/
void WupperCard::str_upper(char *str)
/********************************/
{
  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::str_upper: method called.");
  do
  {
    *str = toupper((u_char) *str);
  } while (*str++);
}


/*****************************************************************************************/
void WupperCard::i2c_write(u_char port1, u_char port2, u_char device, u_char reg, u_char data)
/*****************************************************************************************/
{
  int cont1 = 0, cont2 = 0;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::i2c_write: method called.");

  DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_write: Port 1 = " << port1);
  DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_write: Port 1 = " << port2);

  if(m_card_model == WUPPER_711)
  {
    i2c_write_byte(I2C_ADDR_SWITCH1_WUPPER_711, port1);    //Configure the switch
  }
  if(m_card_model == WUPPER_710)
    i2c_write_byte(I2C_ADDR_SWITCH1_WUPPER_710, port1);    //Configure the switch
  if(m_card_model == WUPPER_709)
  {
    i2c_write_byte(I2C_ADDR_SWITCH1_WUPPER_709, port1);    //Configure the switch
    i2c_write_byte(I2C_ADDR_SWITCH2_WUPPER_709, port2);    //configure switch2
  }

  i2c_write_byte_to_addr(device, reg, data);

  for(cont1 = 0; port1 > 1; cont1++)
    port1 = port1 / 2;
  for(cont2 = 0; port2 > 1; cont2++)
    port2 = port2 / 2;

  DEBUG_TEXT(DFDB_FELIXCARD, 20, "WupperCard::i2c_write: Set port1 " << cont1 << " and port2 " << cont2 << " on swith to device " << device << " and register " << reg << " with data " << data);
}


/*****************************************************************************/
u_char WupperCard::i2c_read(u_char port1, u_char port2, u_char device, u_char reg)
/*****************************************************************************/
{
  u_char value = 0;
  int cont1 = 0, cont2 = 0;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::i2c_read: method called with port1 = " << (u_int)port1 << ", port2 = " << (u_int)port2 << ", device = " << (u_int)device << " and reg = " << (u_int)reg);

  if(m_card_model == WUPPER_711)
  {
    i2c_write_byte(I2C_ADDR_SWITCH1_WUPPER_711, port1);    //Configure the switch
  }
  if(m_card_model == WUPPER_710)
    i2c_write_byte(I2C_ADDR_SWITCH1_WUPPER_710, port1);    //Configure the switch
  if(m_card_model == WUPPER_709)
  {
    i2c_write_byte(I2C_ADDR_SWITCH1_WUPPER_709, port1);    //Configure the switch
    i2c_write_byte(I2C_ADDR_SWITCH2_WUPPER_709, port2);    //configure switch2
  }

  value = i2c_read_byte(device, reg);

  for(cont1 = 0; port1 > 1; cont1++)
    port1 = port1 / 2;
  for(cont2 = 0; port2 > 1; cont2++)
    port2 = port2 / 2;

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::i2c_read: Set port1 " << cont1 << " and port2 " << cont2 << " on swith to device " << (u_int)device << " and register " << (u_int)reg);
  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::i2c_read: Value read = " << (u_int)value);
  return value;
}


/******************************************************************************/
int WupperCard::check_digic_value2(const char *str, u_long *version, u_long *delay)
/******************************************************************************/
{
  char *p_aux = NULL, *pos = strchr(const_cast<char*>(str), ':');

  DEBUG_TEXT(DFDB_FELIXCARD, 15, "WupperCard::check_digic_value2: method called.");

  if(pos == NULL)
    return -1;

  *pos = '\0';

  *version = strtoul(str, &p_aux, 0);
  if(*p_aux != '\0')
    return -2;

  *delay = strtoul(pos + 1, &p_aux, 0);
  if(*delay == 0)
    return -3;

  return 0;
}

