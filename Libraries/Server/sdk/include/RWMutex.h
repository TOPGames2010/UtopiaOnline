//================================================================
// It must be permitted by Dabo.Zhang that this program is used for
// any purpose in any situation.
// Copyright (C) Dabo.Zhang 2000-2003
// All rights reserved by ZhangDabo.
// This program is written(created) by Zhang.Dabo in 2000.3
// This program is modified recently by Zhang.Dabo in 2003.7
//=================================================================
/*
	写锟叫匡拷嵌锟斤拷写锟酵讹拷
	锟斤拷锟斤拷只锟斤拷嵌锟阶讹拷锟斤拷锟斤拷锟斤拷嵌锟斤拷写
*/
#pragma once

#ifndef USING_TAO		//使锟斤拷Win32锟斤拷锟斤拷Platform SDK
#include <winsock2.h>		//确锟斤拷锟斤拷锟斤拷锟铰碉拷WinSock2.2锟芥本
#include <windows.h>
#else
#include "TAOSpecial.h"
#endif

#include "DBCCommon.h"
#include "PreAlloc.h"

#include <mutex>

_DBC_BEGIN
#pragma pack(push)
#pragma pack(4)

//==============================================================================
class RWMutex{
public:
	RWMutex():m_RDCount(0),m_WRCount(0)
	{
		m_semWrite.Create(1,1,0);
		m_semRead.Create(1,1,0);

		if (!m_semWrite || !m_semRead)
		{
			THROW_EXCP(excpSync,"锟斤拷写同锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷系统同锟斤拷锟斤拷锟斤拷失锟斤拷");
		}
	};
	void BeginRead();
	void EndRead();
	void BeginWrite();
	void EndWrite();
private:
	volatile int m_RDCount;
	volatile int m_WRCount;

	Sema		m_semRead,m_semWrite;
	std::recursive_mutex		m_mtxRWCount;

};

#pragma pack(pop)
_DBC_END

