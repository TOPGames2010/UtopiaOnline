/******************************************************************
**	Project Satisfy 2021
**	Base Files: PKO/Corsair, Mothanna Files
**	All rights for code changes/edits/mods and Interface Changes to
**					Mothanna And Satisfy
*******************************************************************/
#include "stdafx.h"
#include "SteadyFrame.h"
#include "GameApp.h"
#include "UISystemForm.h"

namespace 
{
	 long long GetCurrentTickCount() {
		using Clock = std::chrono::steady_clock;
		using namespace std::chrono;
		// Get the current time in milliseconds as a long long
		return duration_cast<milliseconds>(Clock::now().time_since_epoch()).count();
	}
}


DWORD CSteadyFrame::_dwFPS = 0;

bool CSteadyFrame::Init() {
	_dwRefreshFPS = g_stUISystem.m_sysProp.m_gameOption.bFramerate ? Fps60 : DefaultFPS;
	_running = true;
	_dwTotalTime = 0;
	_dwRunCount = 0;
	// Start thread with `std::jthread` (auto-managed)
	_thread = std::jthread([this] { Sleep(); });

	if (_thread.joinable()) {
		LG("CSteadyFrame", "Thread started: _SleepThreadProc\n");
		return true;
	}
	return false;
}

// Add by lark.li 20080923 begin

void CSteadyFrame::Exit() {
	if (_running) {
		_running = false; // Signal thread to stop
		if (_thread.joinable()) {
			_thread.join(); // Wait for the thread to finish
		}
		LG("CSteadyFrame", "_SleepThreadProc terminated gracefully\n");
	}
}


// End

//atm disabled all other checks so make it drop fps only if client minimized
EShowWhat CSteadyFrame::GetShowWhat() {
	if (!g_pGameApp)
		return EShowWhat::eShowNo;

	const HWND hwnd = g_pGameApp->GetHWND();
	if (nullptr == hwnd)
		return EShowWhat::eShowNo; //
	// Retrieves a handle to the foreground window
	//  (the window with which the user is currently working).
	//  The system assigns a slightly higher priority to the thread that creates the
	//   foreground window than it does to other threads.
	// const HWND hFore = GetForegroundWindow();
	// if (hFore == hwnd)
	//	return EShowWhat::eShowAll;
	// Determines whether the specified window is minimized (iconic).
	// Determines the visibility state of the specified window.IsWindowVisible
	if (IsIconic(hwnd)) //|| !::IsWindowVisible(hwnd)
		return EShowWhat::eShowNo;
	// Determines whether a window is maximized.
	// if (hFore && IsZoomed(hFore))
	//	return EShowWhat::eShowNo;
	return EShowWhat::eShowAll;
	// return EShowWhat::eShowSome;
}

void CSteadyFrame::Sleep() {
	int nCount = 0;
	static auto s_dwLastTime = GetCurrentTickCount();
	bool previousIs60FPS = g_stUISystem.m_sysProp.m_gameOption.bFramerate; // Track toggle state

	while (_running) {
		const auto dwTime = GetCurrentTickCount();
		s_dwLastTime = dwTime;
		static long long s_dwSlower = 0;

		// Check if the toggle changed and update FPS and timing if necessary
		if (previousIs60FPS != g_stUISystem.m_sysProp.m_gameOption.bFramerate) {
			// Update FPS and dependent values
			_dwFPS = g_stUISystem.m_sysProp.m_gameOption.bFramerate ? Fps60 : DefaultFPS;// Update FPS
			_dwTimeSpace = static_cast<long long>(1000.0 / static_cast<float>(_dwFPS));// Update timing
			previousIs60FPS = g_stUISystem.m_sysProp.m_gameOption.bFramerate; // Sync toggle state
		}

		// Calculate sleep duration based on current FPS settings
		auto dwSleep = _dwTimeSpace > s_dwSlower ? _dwTimeSpace - s_dwSlower : 0;
		// Adjust sleep duration for specific display conditions
		if (const auto showwhat = GetShowWhat(); showwhat == EShowWhat::eShowNo) {
			dwSleep += 60;// Add extra sleep to balance rendering
		}

		if (const auto dwElapsed = dwTime - s_dwLastTime; dwElapsed < dwSleep * 2) {
			if (dwElapsed > dwSleep) {
				s_dwSlower = dwElapsed - dwSleep;
				dwSleep -= s_dwSlower;
			}
			else {
				s_dwSlower = 0;
			}

			dwSleep = std::min<long long>(dwSleep, 100);//100
			// Perform short active wait for precision or passive sleep for longer durations
			if (dwSleep < 2) {
				auto activeWaitUntil = std::chrono::steady_clock::now() + std::chrono::milliseconds(1);// Active wait
				while (std::chrono::steady_clock::now() < activeWaitUntil) {
					std::this_thread::yield(); // Yield CPU to other threads
				}
			}
			else {
				std::this_thread::sleep_for(std::chrono::milliseconds(dwSleep));// Passive sleep
			}
		}
		else {
			s_dwSlower = dwSleep;
		}

		++_lRun;

		nCount++;
		if (const auto currentfps = g_stUISystem.m_sysProp.m_gameOption.bFramerate ? Fps60 : DefaultFPS; nCount >= currentfps) {
			auto tempfps = currentfps;
			const auto dwCurTime = GetCurrentTickCount();

			// Recalibrate FPS based on frame rate stability
			if (const double fRate = static_cast<double>(_dwTotalTime) / static_cast<double>(dwCurTime - dwTime); fRate < 0.5) {
				tempfps = _dwFPS + 4;
			}
			else if (fRate < 0.6) {
				tempfps = _dwFPS + 3;
			}
			else if (fRate < 0.7) {
				tempfps = _dwFPS + 2;
			}
			else if (fRate > 1.0) {
				tempfps = _dwFPS - 3;
			}
			else if (fRate > 0.97) {
				tempfps = _dwFPS - 2;
			}
			else if (fRate > 0.92) {
				tempfps = _dwFPS - 1;
			}
			else {
				tempfps = _dwFPS;
			}
			// Clamp FPS dynamically to avoid exceeding boundaries
			const auto minFPS = g_stUISystem.m_sysProp.m_gameOption.bFramerate ? Fps60 : DefaultFPS + 3;
			const auto maxFPS = g_stUISystem.m_sysProp.m_gameOption.bFramerate ? Fps60 : Fps60 + 4;
			tempfps = std::clamp(tempfps, minFPS, maxFPS);

			// Update refresh FPS
			_dwRefreshFPS = tempfps;

			nCount = 0;
			_dwTotalTime = 0;
			_dwRunCount = 0;
		}
	}
}


bool CSteadyFrame::Run() {
	if (_lRun.load() > 0) { // Atomically read the value of _lRun
		_lRun.store(0);     // Atomically reset _lRun to 0
		_dwCurTime = GetCurrentTickCount();

		_dwRunCount++;
		return true;
	}
	return false;
}
void CSteadyFrame::End() {
	_dwTotalTime += GetCurrentTickCount() - _dwCurTime;
}
