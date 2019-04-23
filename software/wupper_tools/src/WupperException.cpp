


#include "wupper/WupperException.h"


//WupperException::WupperException(u_int errorId, std::string errorText) :
//     errorText.c_str()),
//     m_errorId(errorId),
//     m_errorText(errorText),
//{
//}

  WupperException::WupperException(u_int errorId, std::string errorText) :
     std::runtime_error(errorText),
     m_errorId(errorId),
     m_errorText(errorText)
{
}

/************************************/
u_int WupperException::getErrorId() const
/************************************/
{
  return m_errorId;
}


/*********************************************************************/
std::ostream & WupperException::printErrorMessage(std::ostream &str) const
/*********************************************************************/
{
  str << "Error " << m_errorId << ":  ";
  printDescription(str);
  return str;
}


/********************************************************************/
std::ostream & WupperException::printDescription(std::ostream &str) const
/********************************************************************/
{
  str << m_errorText;
  return str;
}


//*****************************************************/
//const std::string WupperException::getErrorMessage() const
//*****************************************************/
//{
//  std::ostringstream str;
//  print(str);
//  return (str.str());
//}


/****************************************************/
const std::string WupperException::getDescription() const
/****************************************************/
{
  std::ostringstream str;
  printDescription(str);
  return str.str();
}


/***********************************************************/
std::string WupperException::getErrorString(u_int errorId) const
/***********************************************************/
{
  std::string rc;
  switch (errorId)
  {
  /*****************************/
  /*Exceptions of the Wupper class*/
  /*****************************/
  case NOTOPENED:
	  rc = "The device node has not yet been opened";
	  break;
  case MAPERROR:
	  rc = "Failed to get a virtual address";
	  break;
  case UNMAPERROR:
	  rc = "Failed to unmap a virtual address";
	  break;
  case IOCTL:
	  rc = "Error in communication with driver";
	  break;
  case PARAM:
	  rc = "An input parameter of the method is out of range";
	  break;
  case I2C:
	  rc = "An I2C command has failed";
	  break;
  case NO_CODE:
	  rc = "Undefined error";
	  break;
  case SPI:
	  rc = "SPI error";
	  break;
  case GBT:
	  rc = "GBT error";
	  break;
  case HW:
	  rc = "Something seems to be wrong with the H/W of the WupperCard";
	  break;
  case REG_ACCESS:
	  rc = "Failed to read a BAR2-register";
	  break;
  default:
	  rc = "";
	  break;
  }
  return rc;
}
