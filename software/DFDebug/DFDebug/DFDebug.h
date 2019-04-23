/********************************************************/
/* file: DFDebug.h (originally ROSDebug.h)		*/
/* description: Nice macros for debugging purposes	*/
/* maintainer: Markus Joos, CERN/PH-ESS			*/
/********************************************************/

#include <iostream>
#include <sys/types.h>
#include <unistd.h>
#include <pthread.h>
#include "DFDebug/GlobalDebugSettings.h"

#ifndef DFDEBUG_H
#define DFDEBUG_H

  #if (DEBUG_LEVEL>0)
  #define DEBUG_TEXT(my_package, level, text)\
    {\
      int oldState;\
      pthread_setcancelstate(PTHREAD_CANCEL_DISABLE, &oldState);\
      DF::GlobalDebugSettings::lock();\
      pthread_t my_tid;\
      my_tid = pthread_self();\
      if ((my_package == DF::GlobalDebugSettings::packageId()) || (DF::GlobalDebugSettings::packageId() == 0))\
        if (DF::GlobalDebugSettings::traceLevel() >= level)\
          std::cout << std::dec << "Debug(" << my_package << "," << my_tid << "): " << text << std::endl;\
      DF::GlobalDebugSettings::unlock();\
      pthread_setcancelstate(oldState, 0);\
    }
  #else
    #define DEBUG_TEXT(my_package, level, text)
  #endif

  #define OUT_TEXT(my_package, text)\
    {\
      int oldState;\
      pthread_setcancelstate(PTHREAD_CANCEL_DISABLE, &oldState);\
      std::cout << "Printout(" << my_package << "): " << text << std::endl;\
      pthread_setcancelstate(oldState, 0);\
    }

  #define ERR_TEXT(my_package, text)\
    {\
      int oldState;\
      pthread_setcancelstate(PTHREAD_CANCEL_DISABLE, &oldState);\
      std::cerr << "Error(" << my_package << "): " << text << std::endl;\
      pthread_setcancelstate(oldState, 0);\
    }

  #define HEX(n) std::hex << n << std::dec 

  // Definition of some package identifiers
  // Naming convention:
  // DFDB_<A>_<B> with:
  // A = (abbreviated) package name without underscores
  // B = Suidentifier within package
  //
  // NOTE:
  // IF YOU ARE ADDING A NEW PACKAGE HERE DO NOT FORGET TO ALSO ADD
  // IT TO THE DFDEBUG_MENU TEST PROGRAM IN ../SRC/TEST
  //
  
  enum
  {
    DFDB_ROSFM = 1,          //ROSFragmentManagement (actually ROSModules)
    DFDB_ROSEF,              //ROSEventFragment
    DFDB_ROSSWROBIN,         //ROSSWRobin
    DFDB_ROSFILAR,           //ROSfilar
    DFDB_ROSMEMPOOL, 	     //ROSMemoryPool
    DFDB_ROSEIM,             //ROSEventInputManager
    DFDB_ROSIO,              //ROSIO
    DFDB_ROSTG,              //Trigger generator in ROSIO
    DFDB_SLINK,              //ROSslink
    DFDB_ROSSOLAR,           //ROSsolar
    DFDB_ROSQUEST,           //ROSsolar (QUEST)
    DFDB_QUEUE,              //Queue debugging (ROSSWRobin, ROSIO, ROSCore)
    DFDB_ROSCORE,            //ROSCore
    DFDB_ROSROBIN,           //ROSRobin
    DFDB_DFDB,               //DFDebug
    DFDB_ROBINIRQ,           //RobinInterruptCatcher (in ROSModules)
    DFDB_ROSROBINNP,         //ROSRobinNP   
    DFDB_CMEMRCC = 100,      //cmem_rcc
    DFDB_IORCC,              //io_rcc
    DFDB_VMERCC,             //vme_rcc
    DFDB_RCCTS,              //rcc_time_stamp
    DFDB_RCCCORBO,           //rcc_corbo
    DFDB_RCDEXAMPLE = 300,   //RCDExample
    DFDB_RCDBITSTRING,       //RCDBitString
    DFDB_RCDMENU,            //RCDMenu
    DFDB_RCDMODULE,          //RCDModule
    DFDB_RCDTTC,             //RCDTtc
    DFDB_RCDVME,             //RCDVme
    DFDB_RCDLTP,             //RCDLTPModule and RCDLTPConfiguration
    DFDB_RCDRODBUSY,         //rcc_rodbusy and RODBusyModule
    DFDB_RCDTTCVIMODULE,     //RCDTtcviModule
    DFDB_RF2TTC,             //RF2TTC and RFRX modules
    DFDB_TTCVI = 400,        //Ttcvi
    DFDB_FELIXCARD = 500     //FELIX PCIe card
  };

#endif //DFDEBUG_H
