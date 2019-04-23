#ifndef WUPPEREXCEPTION_H
#define WUPPEREXCEPTION_H

#include <stdexcept>
#include <sstream>
#include <string>
#include <iostream>
#include <sys/types.h>


//Macro
#define THROW_WUPPER_EXCEPTION(errorCode, message) \
  { std::ostringstream oss; \
    oss << message; \
    throw WupperException(WupperException::errorCode, oss.str()); \
  }
      
 
class WupperException : public std::runtime_error 
{
public:  

  enum
  {
      NOTOPENED = 1,
      MAPERROR,
      UNMAPERROR,
      IOCTL,
      PARAM,
      I2C,
      TIMEOUT,
      SPI,
      GBT,
      REG_ACCESS,
      HW,
      NO_CODE
  };
  
  virtual const std::string getDescription() const;
  u_int getErrorId() const;
  virtual ~WupperException() throw () {} 

  WupperException(u_int errorId, std::string errorText);

protected:
   virtual std::string getErrorString(u_int errorId) const;

private:
  const u_int m_errorId;
  const std::string m_errorText;
  virtual std::ostream & print(std::ostream &stream) const;    
  std::ostream & printErrorMessage(std::ostream &stream) const;    
  std::ostream & printDescription(std::ostream &stream) const;    
};


inline std::ostream & WupperException::print(std::ostream &stream) const 
{
  return printErrorMessage(stream);  
}

#endif //WUPPEREXCEPTION_H
