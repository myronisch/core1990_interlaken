
/************************************************/
/* file: GlobalDebugSettings.cpp		*/
/* description: Class GlobalDebugSettings	*/
/* maintainer: Markus Joos, CERN/PH-ESS		*/
/************************************************/

#include "DFDebug/GlobalDebugSettings.h"

unsigned int DF::GlobalDebugSettings::s_traceLevel = 0;
unsigned int DF::GlobalDebugSettings::s_packageId  = 0;
pthread_mutex_t DF::GlobalDebugSettings::debug_mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_t DF::GlobalDebugSettings::s_mutexOwner;
int DF::GlobalDebugSettings::s_mutexLocked = 0;
