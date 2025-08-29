#pragma once

// Raw Data : ԭʼ����
// Raw Data Set : ������ʵ������ֻ��һ��, ʹ�ø����ݵ�ʵ��ȴ���Դ��������Ӧ�ó���
// ���� : Meshģ������, ��ͼ����, �Ǽ����ݵȵ�,  Ҳ�������ڷ���Ϸ�ĸ���������

// RawDataSet�����Ҫ����
//1. ԭʼ���ݵ���Դ��������(�ı�,������)
//2. ͨ��ID��������
//3. ��̬�ͷ�
//4  ��Դ����Ͱ����ݴ�ȡ

// Ŀǰ��Ӧ�û�ֻ��ΪһЩ��Դ������ʽ��Ϊ�򵥵�����������ӿ�
// ����:  ID  ������Դ(�ļ���) �򵥲������� ����ĸ�ʽ

// ������ʽ:
// ����ID = �����±�
// ͨ������ID������ԭʼ����


// ������ʹ��ǰ, ����̳����µķ���
// virtual int				_GetRawDataInfoSize()										      // ÿ�������RawDataInfo���в�ͬ, ȡ��RawDataInfo�����ݳߴ�
// virtual void*			_CreateNewRawData(CRawDataInfo *pRawInfo)		    		      // ȡ���µ�RawData����, ����ģ������ָ�룬Ҳ��������ͼ����ָ��
// virtual void				_ReadRawDataInfo(CRawDataInfo *pRawInfo, list<string> &ParamList) // ��Դ�ļ�ÿ�����µ�һ��, ������Եõ��Ļص�����
// virtual void				_DeleteRawData(void *pData);								      // ɾ����Դ, ��Դ��ɾ����ʽ����������в�ͬ	

// ����, ����������Լ��Ĺ��������_Init()����


#include <fstream>
#include "i18n.h"


class MINDPOWER_API CRawDataInfo
{
public:	
	
	CRawDataInfo()
	:bExist(FALSE),
	dwLastUseTick(0),
	bEnable(TRUE),
	pData(NULL),
	dwPackOffset(0),
	dwDataSize(0),
	nIndex(0),
    dwLoadCnt(0)
	{
		strcpy(szDataName, "");	
	}
	
    BOOL	bExist;				// ��Դ�Ƿ����
	int		nIndex;				// ��Array�е�λ��				
	char	szDataName[72];		// ������Դ(ͨ���������ļ���)
	DWORD	dwLastUseTick;		// �ϴ�ʹ�õ�ʱ��
	BOOL	bEnable;			// �Ƿ���Ч, ���Զ�̬����
	void*   pData;				// ʵ������
	DWORD   dwPackOffset;		// �ڰ��ļ��е�����ƫ��
	DWORD   dwDataSize;			// ԭʼ���ݳߴ�(�ļ��ߴ�)
	int     nID;				// ID
    DWORD   dwLoadCnt;          // ��Դ��ȡ����
};



class MINDPOWER_API CRawDataSet
{

protected:

	CRawDataSet(int nIDStart, int nIDCnt) // һ��Ҫ�̳�ʹ��
	:_nIDStart(nIDStart),
	_nIDCnt(nIDCnt),
	_bEnablePack(FALSE),
	_bBinary(FALSE),
	_nUnusedIndex(0),
	_RawDataArray(NULL)
	{
		_dwReleaseInterval  = 1000 * 60 * 1;		// Ĭ��1����û��ʹ�õ��Ļᱻ���
		// _dwReleaseInterval  = 1000 * 30;			// Ĭ��30��û��ʹ�õ��Ļᱻ���
		_nMaxRawDataCnt          = 50;				// Ĭ���ڴ��г���50��RawDataʱ, �ᰴʱ���ͷ�û��ʹ�õ�RawData
		_nLoadedRawDataCnt       = 0;
        _dwMaxFrameRawDataSize   = 0;                // ����Frame��������ߴ�, 0��ʾ������
        _bEnableRequest          = FALSE;
   	}

public:

    void*			GetRawData(int nID, BOOL bRequest = FALSE);
	void*			GetRawData(const char* pszDataName, int *pnID);
	CRawDataInfo*	GetRawDataInfo(int nID);
    CRawDataInfo*   GetRawDataInfo(const char *pszDataName);
    int             GetRawDataID(const char *pszDataName);
	
	BOOL			LoadRawDataInfo(const char *pszFileName, BOOL bBinary = FALSE);
	void			WriteBinFile(const char *pszFileName);
	
	BOOL			IsValidID(int nID);
	
	// ���ڶ�̬�ͷŵĲ�������
    void			SetReleaseInterval(DWORD dwInterval)	{ _dwReleaseInterval = dwInterval;	}
	void			SetMaxRawData(int nDataCnt)				{ _nMaxRawDataCnt	 = nDataCnt;	}
	
	int				GetLoadedRawDataCnt()					{ return _nLoadedRawDataCnt;		}
	void			DynamicRelease(BOOL bClearAll = FALSE);
	void			Release();
    void            FrameLoad(int nFrameLoad = 2);

	// ����й�
    void			EnablePack(const char *pszPackName);	// ���ڶ����������Դ�����ļ�����Ч
	void            Pack(const char *pszPackName, const char *pszBinName);
    void			PackFromDirectory(list<string> &DirList, const char *pszPackName, const char *pszBinName);
    BOOL            IsEnablePack()              { return _bEnablePack; } 
	
    // ��Դ��ȡ
    LPBYTE			LoadRawFileData(CRawDataInfo *pInfo);
	
    void            EnableRequest(BOOL bEnable)   { _bEnableRequest = bEnable; }
protected:

	virtual CRawDataInfo*	_CreateRawDataArray(int nIDCnt)								    = 0;	
	virtual void			_DeleteRawDataArray()										    = 0;	
	virtual int             _GetRawDataInfoSize()										    = 0;
	virtual void*			_CreateNewRawData(CRawDataInfo *pInfo)					  	    = 0;
	virtual BOOL			_ReadRawDataInfo(CRawDataInfo *pInfo, vector<string> &ParamList)= 0;
	virtual void			_DeleteRawData(CRawDataInfo *pInfo)							    = 0;

	BOOL		_LoadRawDataInfo_Bin(const char *pszFileName);
	BOOL		_LoadRawDataInfo_Txt(const char *pszFileName);
	void		_WriteRawDataInfo_Bin(const char *pszFileName);
    void        _Init();

protected:
	
	int						    _nIDStart;
	int						    _nIDCnt;
	int						    _nUnusedIndex;
	DWORD					    _dwReleaseInterval;
	int						    _nMaxRawDataCnt;
	int						    _nLoadedRawDataCnt;
    DWORD                       _dwMaxFrameRawDataSize;
	BOOL				    	_bEnablePack;
	char                        _szPackName[64];
	BOOL						_bBinary;
    CRawDataInfo*			    _RawDataArray;
    map<string, CRawDataInfo*>	_IDIdx;
    list<int>                   _RequestList;
    BOOL                        _bEnableRequest;
};

inline void CRawDataSet::_Init()
{
    _DeleteRawDataArray();

	_RawDataArray = _CreateRawDataArray(_nIDCnt);

	LPBYTE pbtData = (LPBYTE)_RawDataArray;
	for(int i = 0; i < _nIDCnt; i++)
	{
		CRawDataInfo *pInfo = (CRawDataInfo*)(pbtData + _GetRawDataInfoSize() * i);
		pInfo->nIndex = i;
		pInfo->nID    = _nIDStart + i;
	}
}

inline CRawDataInfo* CRawDataSet::GetRawDataInfo(int nID)
{
	if(!IsValidID(nID)) return NULL;
	
	LPBYTE pbtData = (LPBYTE)_RawDataArray;
	
	CRawDataInfo *pInfo = (CRawDataInfo*)(pbtData + _GetRawDataInfoSize() * (nID - _nIDStart));

	return pInfo;
}

inline CRawDataInfo* CRawDataSet::GetRawDataInfo(const char *pszDataName)
{
	map<string, CRawDataInfo*>::iterator it = _IDIdx.find(pszDataName);

	if(it!=_IDIdx.end()) // ��ID�Ѿ�����
	{
		return (*it).second;
    }
    return NULL;
}

inline void* CRawDataSet::GetRawData(int nID, BOOL bRequest)
{
	CRawDataInfo *pInfo =  GetRawDataInfo(nID);
	if(pInfo==NULL) return NULL;
	
	pInfo->dwLastUseTick = GetTickCount();
	if(!pInfo->pData)
	{
	    if(bRequest && _bEnableRequest)
        {
            LG("debug", "Push Request RawData!\n");
            _RequestList.push_back(nID);
            return NULL;
        }
        
        pInfo->pData = _CreateNewRawData(pInfo);
        pInfo->dwLoadCnt++;
		if(pInfo->pData==NULL)
		{
			LG("error", "Load Raw Data [%s] Failed! (ID = %d)\n", pInfo->szDataName, nID);
		}
		else
		{
			_nLoadedRawDataCnt++;
		}
	}
	return pInfo->pData;
}

inline int CRawDataSet::GetRawDataID(const char *pszDataName) // �����ֻ�ȡID, ���û�������һ��
{
	CRawDataInfo *pInfo;

    map<string, CRawDataInfo*>::iterator it = _IDIdx.find(pszDataName);

	if(it!=_IDIdx.end()) // ��ID�Ѿ�����
	{
		pInfo = (*it).second;
	}
	else
	{
		if(_nUnusedIndex >= _nIDCnt)
		{
			LG("error", "RawDataSet OverMax Dynamic ID, MaxIDCnt = %d, Index = %d\n", _nIDCnt, _nUnusedIndex);
			return -1;
		}
		
		LPBYTE pbtData = (LPBYTE)_RawDataArray;
		pInfo = (CRawDataInfo*)(pbtData + _GetRawDataInfoSize() * _nUnusedIndex);
		strcpy(pInfo->szDataName, pszDataName);

		_IDIdx[pInfo->szDataName] = pInfo;
		_nUnusedIndex++;
	}
	return pInfo->nIndex + _nIDStart;
}


inline void* CRawDataSet::GetRawData(const char* pszDataName, int *pnID)
{
	int nID = GetRawDataID(pszDataName);
    if(pnID) *pnID = nID;
    if(nID==-1)
    {
        return NULL;
    }
    return GetRawData(nID);
}

inline BOOL CRawDataSet::IsValidID(int nID)
{
	if(nID < _nIDStart || nID >= (_nIDStart + _nIDCnt)) return FALSE;
	return TRUE;
}


inline BOOL CRawDataSet::LoadRawDataInfo(const char *pszFile, BOOL bBinary)
{
	char szTxtName[255], szBinName[255];

	_bBinary  = bBinary;
	
	sprintf(szTxtName, "%s.txt", pszFile);
	sprintf(szBinName, "%s.bin", pszFile);
	if(bBinary) 
	{
		return _LoadRawDataInfo_Bin(szBinName);
	}
	else
	{
		BOOL bLoad = _LoadRawDataInfo_Txt(szTxtName);
		if(bLoad)
		{
			_WriteRawDataInfo_Bin(szBinName);
		}
		return bLoad;
	}
	return TRUE;
}

inline void CRawDataSet::FrameLoad(int nFrameLoad)
{
    int nMaxLoadPerFrame = nFrameLoad;

    list<int>::iterator it;
    list<int> FinishList;
    int n = 0;
    for(it = _RequestList.begin(); it!=_RequestList.end(); it++)
    {
        int nID = (*it);
        GetRawData(nID, FALSE);
        FinishList.push_back(nID);
        n++;
        if(n > nFrameLoad) break;
    }
    
    for(it = FinishList.begin(); it!=FinishList.end(); it++)
    {
        int nID = (*it);
        _RequestList.remove(nID);
    }
}

inline void CRawDataSet::DynamicRelease(BOOL bClearAll)
{
	if(bClearAll)
    {
        for(int i = 0; i < _nIDCnt; i++)
	    {
		    CRawDataInfo *pInfo = GetRawDataInfo(_nIDStart + i);
		    if(pInfo->pData==NULL)  continue;
            _DeleteRawData(pInfo);
			pInfo->pData = NULL;
			_nLoadedRawDataCnt--;
			if(_nLoadedRawDataCnt < 0)
			{
			    LG("error", "LoadedRawDataCnt = %d , < 0 ?\n", _nLoadedRawDataCnt);
			}
      	}
        return;
    }
    
    DWORD dwCurTick = GetTickCount();

	if(_nLoadedRawDataCnt <= _nMaxRawDataCnt) return;
	
	for(int i = 0; i < _nIDCnt; i++)
	{
		CRawDataInfo *pInfo = GetRawDataInfo(_nIDStart + i);
		if(pInfo->pData==NULL)  continue;
		
		if((dwCurTick - pInfo->dwLastUseTick) > _dwReleaseInterval)
		{
			_DeleteRawData(pInfo);
			pInfo->pData = NULL;
			_nLoadedRawDataCnt--;
			if(_nLoadedRawDataCnt < 0)
			{
				LG("error", "LoadedRawDataCnt = %d , < 0 ?\n", _nLoadedRawDataCnt);
			}
			// LG("debug", "Dynamic Release Raw Data [%s]\n", pInfo->szDataName);
		}
	}

    
}

inline void CRawDataSet::Release()
{
	for(int i = 0; i < _nIDCnt; i++)
	{
		CRawDataInfo *pInfo = GetRawDataInfo(_nIDStart + i);
		if(pInfo->pData==NULL)  continue;
		
		_DeleteRawData(pInfo);
		pInfo->pData = NULL;
		_nLoadedRawDataCnt--;
		if(_nLoadedRawDataCnt < 0)
		{
			LG("error", "LoadedRawDataCnt = %d , < 0 ?\n", _nLoadedRawDataCnt);
		}
	}
	_DeleteRawDataArray();
	_nUnusedIndex = 0;
    delete this;
}

inline BOOL CRawDataSet::_LoadRawDataInfo_Bin(const char *pszFileName)
{
	FILE* fp = fopen(pszFileName, "rb");
	if(fp==NULL) 
	{
		LG("error", "Load Raw Data Info Bin File [%s] Failed!\n", pszFileName);
		return FALSE;
	}
	
    int nSize     = Util_GetFileSize(fp);
    int nInfoSize = _GetRawDataInfoSize();
    int nResCnt   = nSize / nInfoSize;

    LPBYTE pbtResInfo = new BYTE[nSize];
    
    fread(pbtResInfo, nSize, 1, fp);
	
    for(int i = 0; i < nResCnt; i++)
    {
        CRawDataInfo *pInfo = (CRawDataInfo*)(pbtResInfo + i * _GetRawDataInfoSize());
        if(!pInfo->bExist) continue;
        CRawDataInfo *pCurInfo = GetRawDataInfo(pInfo->nID);
        memcpy(pCurInfo, pInfo, nInfoSize); // ���ԭ�е���Ϣ
        _IDIdx[pCurInfo->szDataName] = pCurInfo;
        vector<string> ParamList; _ReadRawDataInfo(pCurInfo, ParamList);
        LG("debug", "Load Bin RawData [%s] = %d\n", pCurInfo->szDataName, pCurInfo->nID);
    }
    
    delete pbtResInfo;
    
    fclose(fp);
	return TRUE;
}

inline void CRawDataSet::_WriteRawDataInfo_Bin(const char *pszFileName)
{
	FILE* fp = fopen(pszFileName, "wb");
	if(fp==NULL) return;
	
	for(int i = 0; i < _nIDCnt; i++)
    {
        CRawDataInfo *pInfo = (CRawDataInfo*)((LPBYTE)_RawDataArray + i * _GetRawDataInfoSize());
        if(pInfo->bExist)
        {
            fwrite(pInfo, _GetRawDataInfoSize(), 1, fp);
        }
    }
	fclose(fp);
}


inline BOOL CRawDataSet::_LoadRawDataInfo_Txt(const char *pszFileName)
{
	ifstream in(pszFileName);
    if(in.is_open()==0)
    {
        LG("error", "msgLoad Raw Data Info Txt File [%s] Fail!\n", pszFileName);
        return FALSE;
    }
	
	char szLine[255];
    string strList[16];
	string strComment;

	vector<string> ParamList;
    
    while(!in.eof())
    {
		in.getline(szLine, 255);
		string strLine = szLine;
		
		int p = (int)strLine.find("//");
		if(p!=-1)
		{
			string strLeft = strLine.substr(0, p);
			strComment = strLine.substr(p + 2, strLine.size() - p - 2);
			strLine = strLeft;
		}
		else
		{
			strComment = "";
		}
		
		int n = Util_ResolveTextLine(strLine.c_str(), strList, 15, ' ');

		if (n < 2) continue;

        int	nID = Str2Int(strList[0]);

        CRawDataInfo *pInfo = GetRawDataInfo(nID);
		pInfo->bExist = TRUE;
		
        ParamList.clear();
		int i;
        for(i = 0; i < n - 2; i++)
        {
			ParamList.push_back(strList[i + 2]);
		}
		for(i = 0; i < 15; i++) ParamList.push_back(""); // ���ÿմ�,���������������, ��ʾ��ʽ����
		
		Util_TrimString(strList[1]);
		strcpy(pInfo->szDataName, strList[1].c_str());
		char *pszDataName = _strlwr( _strdup( pInfo->szDataName ) );
		strcpy(pInfo->szDataName, pszDataName);
        free(pszDataName);

		_IDIdx[pInfo->szDataName] = pInfo;
        if(!_ReadRawDataInfo(pInfo, ParamList))
        {
            LG("error", "msg������Դ�ļ�[%s]ʧ��, �����ʽ�Ͱ汾!\n", pszFileName);
            in.close();
	        return FALSE;
        }
	}
    in.close();
	return TRUE;
}


//----------------------------------------------------------------------------------------------------------
//												�����ش���
//----------------------------------------------------------------------------------------------------------
inline LPBYTE Util_LoadFile(const char *pszFileName, DWORD* pdwFileSize)
{
	if(strlen(pszFileName)==0) return NULL;
	FILE *fp = fopen(pszFileName, "rb");
	if(fp==NULL)
	{
		pdwFileSize = 0;
		return NULL;
	}
	fseek(fp, 0, SEEK_END);
	long lSize = ftell(fp);
	fseek(fp, 0, SEEK_SET);
	LPBYTE pbtBuf = new BYTE[lSize];
	fread(pbtBuf, lSize, 1, fp);
	fclose(fp);
	*pdwFileSize = lSize;
	return pbtBuf;
}

inline LPBYTE Util_LoadFilePart(const char *pszFileName, DWORD dwStart, DWORD dwSize)
{
	FILE *fp = fopen(pszFileName, "rb");
	if(fp==NULL)
	{
		return NULL;
	}
	LPBYTE pbtBuf = new BYTE[dwSize];
	fseek(fp, dwStart, SEEK_SET);
	fread(pbtBuf, dwSize, 1, fp);
	fclose(fp);
	return pbtBuf;
}


inline void CRawDataSet::Pack(const char *pszPackName, const char *pszBinName)
{
	FILE *fp = fopen(pszPackName, "wb");
	for(int i = 0; i < _nIDCnt; i++)
	{
		CRawDataInfo *pInfo = GetRawDataInfo(i);
		if(!pInfo->bExist)  continue;
		DWORD  dwFileSize = 0;
		LPBYTE pbtFileContent = Util_LoadFile(pInfo->szDataName, &dwFileSize);
		if(pbtFileContent)
		{
            pInfo->dwPackOffset = ftell(fp);
			pInfo->dwDataSize   = dwFileSize;
			fwrite(pbtFileContent, dwFileSize, 1, fp);
			delete pbtFileContent;
		}
	}
	fclose(fp);
	
	_WriteRawDataInfo_Bin(pszBinName); // ���֮����дRawDataSet Bin�ļ�
}


//--------------------------------------------
//  ��Ŀ¼�ж�ȡ�ļ�, ÿ���ļ���Ϊһ����Դ, ��
//  ������Դ������Ϣ�ļ� xxx.bin
//--------------------------------------------
inline void	CRawDataSet::PackFromDirectory(list<string> &DirList, const char *pszPackName, const char *pszBinName)
{
	list<string> FileList;
	for(list<string>::iterator itD = DirList.begin(); itD!=DirList.end(); itD++)
	{
		string strDirName = (*itD);
		ProcessDirectory(strDirName.c_str(), &FileList, DIRECTORY_OP_QUERY);
	}
	
	int nFileCnt = (int)(FileList.size());
	
	FILE *fp = fopen(pszPackName, "wb");
		
	int i = 0;
	for(list<string>::iterator it = FileList.begin(); it!=FileList.end(); it++,i++)
	{
		CRawDataInfo *pInfo = GetRawDataInfo(i + _nIDStart);
		
		strcpy(pInfo->szDataName, (*it).c_str());
		
		char *pszDataName = _strlwr( _strdup( pInfo->szDataName ) );
		strcpy(pInfo->szDataName, pszDataName);
		free(pszDataName);
		
		DWORD  dwFileSize = 0;
		LPBYTE pbtFileContent = Util_LoadFile(pInfo->szDataName, &dwFileSize);
		if(pbtFileContent)
		{
		    pInfo->bExist       = TRUE;
            pInfo->dwPackOffset = ftell(fp);
			pInfo->dwDataSize   = dwFileSize;
			fwrite(pbtFileContent, dwFileSize, 1, fp);
			delete pbtFileContent;
		}
        LG("debug", "Pack File (index = %d) ID = %d [%s]\n", pInfo->nIndex, pInfo->nID, pInfo->szDataName);
	}
	
	fclose(fp);
	
	_WriteRawDataInfo_Bin(pszBinName); // ���֮����дRawDataSet Bin�ļ�
}	

inline void CRawDataSet::EnablePack(const char *pszPackName)
{
	if(pszPackName)
    {
        _bEnablePack = TRUE;
        strcpy(_szPackName, pszPackName);
    }
    else
    {
        _bEnablePack = FALSE;
    }
}
	


//-----------------------------------------------------------------------------
// ��ȡRawData���ݵ��ڴ�(һ�����ڰ������ļ�����, ��Ӱ���ȡ�������ļ����ݵĳ���
// ������������Ҫ��ʹ�ô˺���, Ҳ������ȫ����)
//-----------------------------------------------------------------------------
inline LPBYTE CRawDataSet::LoadRawFileData(CRawDataInfo *pInfo)
{
	LPBYTE pbtBuf    = NULL;
	DWORD  dwBufSize = 0;
	if(_bEnablePack) // �Ӱ��ж�ȡ
	{
		pbtBuf    = Util_LoadFilePart(_szPackName, pInfo->dwPackOffset, pInfo->dwDataSize);
		dwBufSize = pInfo->dwDataSize;
	}
	else
	{
		pbtBuf    = Util_LoadFile(pInfo->szDataName, &dwBufSize);
		pInfo->dwDataSize = dwBufSize;
	}
	return pbtBuf;
}