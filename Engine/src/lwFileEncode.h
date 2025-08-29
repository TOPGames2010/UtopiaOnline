//
#pragma once


#include "lwHeader.h"
#include "lwStdInc.h"
#include "lwErrorCode.h"
#include "lwInterfaceExt.h"

//////////////
//
LW_BEGIN

class lwTexEncode
{
private:
	static LW_RESULT _Encode0(lwIBuffer* buf);
	static LW_RESULT _Decode0(lwIBuffer* buf);
	static LW_RESULT _Encode1(lwIBuffer* buf);
	static LW_RESULT _Decode1(lwIBuffer* buf);
public:
	static LW_RESULT Encode(lwIBuffer* buf);
	static LW_RESULT Decode(lwIBuffer* buf);
};


LW_END