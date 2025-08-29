#ifndef __SEH_EXCEPTION_H
#define __SEH_EXCEPTION_H
#include <exception>
//#include <windows.h>
//#include <string>
//using namespace std;
////////////////////////////////////////////////////////////////////////////////
class SehExceptionBase final : public std::exception
{
  public:
  static void InitializeSehTranslator();

};


#endif