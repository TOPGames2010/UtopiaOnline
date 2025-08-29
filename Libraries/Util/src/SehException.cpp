#include "SehException.h"
#include <windows.h>
#include <bit>
#include <dbghelp.h>
#include <fstream> // for logging to file
#include <functional>
#include <minidumpapiset.h>
#include <shlobj.h>
#include <strsafe.h>
#include "pch.h"

#pragma warning(disable : 4311) //type cast warning
#pragma warning(disable : 4312) //warning C4312: 'type cast' : conversion from 'DWORD' to 'void *' of greater size

typedef BOOL(WINAPI* MINIDUMPWRITEDUMP)(HANDLE hProcess, DWORD dwPid, HANDLE hFile, MINIDUMP_TYPE DumpType, PMINIDUMP_EXCEPTION_INFORMATION ExceptionParam,
    PMINIDUMP_USER_STREAM_INFORMATION UserStreamParam, PMINIDUMP_CALLBACK_INFORMATION CallbackParam);

void LogError(const std::string& message) {
	if (std::ofstream logFile("error_dumps_log.txt", std::ios::app); logFile.is_open()) {
        logFile << message << '\n';
        logFile.close();
    }
}

LONG WINAPI UnExcept(EXCEPTION_POINTERS* pExceptionPointers)
{
    CHAR szFileName[MAX_PATH];
    CHAR szAppName[] = "SquidsLegacy";
    CHAR szVersion[] = "v1.1";
    SYSTEMTIME stLocalTime;
    GetLocalTime(&stLocalTime);

    if (FAILED(StringCchPrintf(szFileName, MAX_PATH, "dumps\\%s-%s-%04d%02d%02d-%02d%02d%02d-%ld-%ld.dmp",
        szAppName, szVersion,
        stLocalTime.wYear, stLocalTime.wMonth, stLocalTime.wDay,
        stLocalTime.wHour, stLocalTime.wMinute, stLocalTime.wSecond,
        GetCurrentProcessId(), GetCurrentThreadId()))) {
        LogError("StringCchPrintf failed");
        return EXCEPTION_EXECUTE_HANDLER;
    }

    if (!CreateDirectory("dumps", nullptr) && GetLastError() != ERROR_ALREADY_EXISTS) {
        LogError("CreateDirectory failed");
        return EXCEPTION_EXECUTE_HANDLER;
    }

    const HMODULE mhLib = ::LoadLibrary("dbghelp.dll");
    if (!mhLib) {
        LogError("LoadLibrary failed");
        return EXCEPTION_EXECUTE_HANDLER;
    }

    const auto pDumpFunc = std::bit_cast<MINIDUMPWRITEDUMP>(GetProcAddress(mhLib, "MiniDumpWriteDump"));
    if (!pDumpFunc) {
        LogError("GetProcAddress failed");
        FreeLibrary(mhLib);
        return EXCEPTION_EXECUTE_HANDLER;
    }

    std::function pDump = pDumpFunc;

    const HANDLE hFile = ::CreateFile(szFileName, GENERIC_WRITE, FILE_SHARE_WRITE, nullptr, CREATE_ALWAYS,
        FILE_ATTRIBUTE_NORMAL, nullptr);
    if (hFile == INVALID_HANDLE_VALUE) {
        LogError("CreateFile failed");
        FreeLibrary(mhLib);
        return EXCEPTION_EXECUTE_HANDLER;
    }

    _MINIDUMP_EXCEPTION_INFORMATION ExInfo;
    ExInfo.ThreadId = GetCurrentThreadId();
    ExInfo.ExceptionPointers = pExceptionPointers;
    ExInfo.ClientPointers = TRUE;

    if (const BOOL success = std::invoke(pDump, GetCurrentProcess(), GetCurrentProcessId(), hFile, MiniDumpNormal, &ExInfo, nullptr, nullptr); !success) {
        LogError("MiniDumpWriteDump failed");
    }

    CloseHandle(hFile);
    FreeLibrary(mhLib);

    return EXCEPTION_EXECUTE_HANDLER;
}

void SehExceptionBase::InitializeSehTranslator()
{
    SetUnhandledExceptionFilter(UnExcept);
}
