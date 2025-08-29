//=============================================================================
// FileName: Expand.h
// Creater: 
// Date: 2004.11.22
// Comment: 
//=============================================================================

#ifndef TIMER_H
#define TIMER_H

class CTimer
{
public:

    void Begin(const DWORD dwInterval)
    {
        _dwLastTick = GetTickCount();
        _dwInterval = dwInterval;
    }

    //BOOL IsOK(DWORD dwCurTime)
    //{
    //    if((dwCurTime - _dwLastTick) > _dwInterval)
    //    {
    //        _dwLastTick = dwCurTime;
    //        return TRUE;
    //    }
    //    return FALSE;
    //}
    DWORD IsOK(const DWORD dwCurTime) {
        if (dwCurTime < _dwLastTick) {
            _dwLastTick = dwCurTime;
            return 0;
        }

        if (_dwInterval == 0) {
            // Handle the zero interval case as needed
            return 0;
        }

        const DWORD dwExecTime = (dwCurTime - _dwLastTick) / _dwInterval;
        if (dwExecTime)
            _dwLastTick = dwCurTime - (dwCurTime - _dwLastTick) % _dwInterval;

        return dwExecTime;
    }


	void Reset() {_dwLastTick = GetTickCount();}
    [[nodiscard]] DWORD GetInterval() const {return _dwInterval;}
	void SetInterval(const DWORD dwInterval) {_dwInterval = dwInterval;}

protected:

    DWORD _dwLastTick{};
    DWORD _dwInterval{};
};

#endif // TIMER_H