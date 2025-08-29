/******************************************************************
**	Project Satisfy 2021
**	Base Files: PKO/Corsair, Mothanna Files
**	All rights for code changes/edits/mods and Interface Changes to
**					Mothanna And Satisfy
*******************************************************************/
#pragma once
#include "UIGlobalVar.h"
constexpr auto DefaultFPS = 30;
constexpr auto Fps60 = 60;

enum class EShowWhat {
	eShowNo,
	eShowSome,
	eShowAll,
};

class CSteadyFrame {
public:
	CSteadyFrame() {
		SetFPS(DefaultFPS);
	}

	bool Init();

	static DWORD GetFPS() { return _dwFPS; }

	void SetFPS(const DWORD v) {
		_dwFPS = v;
		_dwTimeSpace = static_cast<int>(1000.0f / static_cast<float>(_dwFPS));
	}

	bool Run();
	void Exit();

	auto GetTick() const { return _dwCurTime; }
	void End();

	void RefreshFPS() {
		if (_dwFPS != _dwRefreshFPS)
			SetFPS(_dwRefreshFPS);
	}

	static EShowWhat GetShowWhat(); // this control if need show all info or client in active mode

private:

	void Sleep();

	static DWORD _dwFPS; // Set FPS, how many frames to render in one second
	std::atomic<bool> _running; // For thread lifecycle control
	std::atomic<long> _lRun{};

	long long _dwCurTime{};
	long long _dwTimeSpace{};

	long long _dwTotalTime{};
	DWORD _dwRunCount{};

	DWORD _dwRefreshFPS{};

	std::jthread _thread; // Automatically managed thread (C++20)
	// End
};
