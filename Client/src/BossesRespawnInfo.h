#pragma once
#include "UIGlobalVar.h"

class BossRespawn {
public:
	BossRespawn(std::string BossName, std::string Location, DWORD NextRespawn, std::string MonsterStates);
	~BossRespawn() = default;
	BossRespawn& operator=(const BossRespawn& other) = default; // Copy assignment
	BossRespawn(BossRespawn& copy) = default;                   // Copy constructor
	BossRespawn(BossRespawn&& move) = default;                  // Move constructor
	BossRespawn& operator=(BossRespawn&& moveas) = default;     // Move assignment
	void SetNextRespawn(const DWORD NextRespaw) { NextRespawn = NextRespaw; }
	std::string BossName;
	std::string Location;
	DWORD NextRespawn;
	std::string MonsterStates;

private:
};


// Interface for UI only
namespace GUI {
class CBossRespawnInfo final : CUIInterface {
public:
	bool Init() override;

	enum class FilterType {
		SortStatus,
		SortName,

	};

	void Add(BossRespawn BossRespawn);
	void ClearList();
	void SortList(bool direction, FilterType sorttype);
	[[nodiscard]] auto GePortalForm() const { return frmBossRespawn; }
	static std::string GenerateRespawnString(DWORD NextRespawn);

private:
	std::vector<BossRespawn> BossRespawnInfo;
	CForm* frmBossRespawn{nullptr};
	CListView* list{nullptr};
	CCheckBox* chkSortStatus{nullptr};                //filter status alive/dead
	CCheckBox* chkSortName{nullptr};                  //filter monsters by names 
	static void SortFiltersChange(CGuiData* pSender); // trial filter show list event 

protected:
	void FrameMove(DWORD dwTime) override;
};
} // namespace GUI
