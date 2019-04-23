// -*- c++ -*-
/************************************************/
/* file: GlobalDebugSettings.h			*/
/* description: Class GlobalDebugSettings	*/
/* maintainer: Markus Joos, CERN/PH-ESS		*/
/************************************************/

#ifndef DFGLOBALDEBUGSETTINGS_H
#define DFGLOBALDEBUGSETTINGS_H

#include <pthread.h>

namespace DF 
{
  class GlobalDebugSettings 
  {
    public:
      static unsigned int traceLevel();
      static unsigned int packageId();
      static void lock();
      static void unlock();
      static void setup(unsigned int traceLevel,unsigned int packageId = 0); 
    private:
      static unsigned int s_traceLevel;
      static unsigned int s_packageId;
      static int s_mutexLocked;
      static pthread_mutex_t debug_mutex;
      static pthread_t s_mutexOwner;
  };
  
  inline unsigned int GlobalDebugSettings::traceLevel() 
  {
    return(s_traceLevel);
  }

  inline unsigned int GlobalDebugSettings::packageId() 
  {
    return(s_packageId);
  }

  inline void GlobalDebugSettings::lock() 
  {
    if ((s_mutexLocked == 0) || (pthread_equal(s_mutexOwner, pthread_self()) == 0)) 
    {
       pthread_mutex_lock(&debug_mutex);
       s_mutexOwner = pthread_self();
    }
    s_mutexLocked++;
  }      
  
  inline void GlobalDebugSettings::unlock() 
  {
    s_mutexLocked--;
    if (s_mutexLocked == 0) 
      pthread_mutex_unlock(&debug_mutex);
  }
  
  inline void GlobalDebugSettings::setup(unsigned int traceLevel, unsigned int packageId) 
  {
    s_traceLevel = traceLevel;
    s_packageId = packageId;
  }

} // end of namespace DF
#endif //DFGLOBALDEBUGSETTINGS_H

