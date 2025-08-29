#include "stdafx.h"
#include "BossesRespawnInfo.h"
#include "GameApp.h"
#include "Tools.h"
#include "UICheckBox.h"
#include "UIFormMgr.h"
#include "UIListView.h"

DWORD Monster_Name = 0XFF694307;//0XFFfaaf3a;
DWORD Alive_color = 0XFF027542;//Alive_color

BossRespawn::BossRespawn(std::string BossName, std::string Location, DWORD NextRespawn, std::string MonsterStates)
	: BossName(std::move(BossName)), Location(std::move(Location)), NextRespawn(NextRespawn), MonsterStates(std::move(MonsterStates)) {
}

std::string CBossRespawnInfo::GenerateRespawnString(const DWORD NextRespawn)
{
	if (NextRespawn <= 0)
		return "--";
	const auto seconds = NextRespawn;
	const auto minutes = seconds / 60;
	const auto hours = minutes / 60;
	std::string buildtime = to_string(hours) + ":" + to_string(minutes % 60) + ":" + to_string(seconds % 60);
	return buildtime;
}

bool CBossRespawnInfo::Init() {
	if (frmBossRespawn = CFormMgr::s_Mgr.Find("frmBossRespawn"); !frmBossRespawn) {
		return false;
	}
	frmBossRespawn->SetIsDrag(true);

	if (list = dynamic_cast<CListView*>(frmBossRespawn->Find("list")); !list) {
		return false;
	}
	list->GetList()->GetItemImage()->SetColor(COLOR_BLUE);
	list->GetList()->GetItems()->SetItemMargin(20, 0);
	list->SetMargin(0, 0, 0, 0);
	list->GetList()->SetIsChangeColor(false);
	//filters 
	if (chkSortStatus = dynamic_cast<CCheckBox*>(frmBossRespawn->Find("chkSortStatus")); !chkSortStatus)
		return Error(g_oLangRec.GetString(45), frmBossRespawn->GetName(), "chkSortStatus");
	chkSortStatus->evtCheckChange = SortFiltersChange;
	if (chkSortName = dynamic_cast<CCheckBox*>(frmBossRespawn->Find("chkSortName")); !chkSortName)
		return Error(g_oLangRec.GetString(45), frmBossRespawn->GetName(), "chkSortName");
	chkSortName->evtCheckChange = SortFiltersChange;
	//
	return true;
}

//SortFiltersChange
void CBossRespawnInfo::SortFiltersChange(CGuiData* pSender) {
	if (const std::string name = pSender->GetName(); name == "chkSortStatus") {
		const auto Ischecked = g_stBossRespawnInfo.chkSortStatus->GetIsChecked();
		g_stBossRespawnInfo.SortList(Ischecked, FilterType::SortStatus);
	} else if (name == "chkSortName") {
		const auto Ischecked = g_stBossRespawnInfo.chkSortName->GetIsChecked();
		g_stBossRespawnInfo.SortList(Ischecked, FilterType::SortName);
	}

}

void CBossRespawnInfo::Add(BossRespawn BossRespawn) {
	BossRespawnInfo.emplace_back(BossRespawn);
	const auto row = list->AddItemRow();
	// first rown monster name
	auto pItem = new CItem;
	pItem->SetString(BossRespawn.BossName.c_str());
	row->SetIndex(0, pItem);
	row->SetColor(COLOR_BLACK); // Alive_color
	// second row location
	pItem = new CItem;
	pItem->SetString(BossRespawn.Location.c_str());
	row->SetIndex(1, pItem);
	row->SetColor(Monster_Name); // COLOR_WHITE
	// 3rd row spawn timer
	pItem = new CItem;
	pItem->SetString(GenerateRespawnString(BossRespawn.NextRespawn).c_str());
	row->SetIndex(2, pItem);
	// row->SetColor(Alive_color); // Alive_color
	// 4th row monster states
	pItem = new CItem;
	pItem->SetString(BossRespawn.MonsterStates.c_str());
	row->SetIndex(3, pItem);
	if (BossRespawn.MonsterStates == "Alive")
		row->SetColor(Alive_color); // Alive_color
	else
		row->SetColor(COLOR_RED); // Alive_color
	list->Refresh();
}

void CBossRespawnInfo::ClearList() {
	BossRespawnInfo.clear();
	list->GetList()->Clear();
}

void CBossRespawnInfo::SortList(const bool direction, const FilterType sorttype) {
	list->GetList()->Clear();
	ranges::sort(BossRespawnInfo, [&](const auto& lhs, const auto& rhs) {
		switch (sorttype) {
		case FilterType::SortStatus:
			return direction ? lhs.MonsterStates < rhs.MonsterStates : lhs.MonsterStates > rhs.MonsterStates;
		case FilterType::SortName:
			return direction ? lhs.BossName < rhs.BossName : lhs.BossName > rhs.BossName;
		}
		});

	for (const auto& info : BossRespawnInfo) {
		const auto row = list->AddItemRow();
		// first rown monster name
		auto pItem = new CItem;
		pItem->SetString(info.BossName.c_str());
		row->SetIndex(0, pItem);
		row->SetColor(COLOR_BLACK); // Alive_color
		// second row location
		pItem = new CItem;
		pItem->SetString(info.Location.c_str());
		row->SetIndex(1, pItem);
		row->SetColor(Monster_Name); // COLOR_WHITE
		// 3rd row spawn timer
		pItem = new CItem;
		pItem->SetString(GenerateRespawnString(info.NextRespawn).c_str());
		row->SetIndex(2, pItem);
		// row->SetColor(Alive_color); // Alive_color
		// 4th row monster states
		pItem = new CItem;
		pItem->SetString(info.MonsterStates.c_str());
		row->SetIndex(3, pItem);
		if (info.MonsterStates == "Alive")
			row->SetColor(Alive_color); // Alive_color
		else
			row->SetColor(COLOR_RED); // Alive_color
		list->Refresh();
	}

}

void CBossRespawnInfo::FrameMove(DWORD dwTime) {
	if (!frmBossRespawn->GetIsShow()) {
		return;
	}
	if (static CTimeWork time(1000); time.IsTimeOut(CGameApp::GetCurTick())) {
		static auto state_Dead = "Dead";
		for (size_t row = 0; row < BossRespawnInfo.size(); ++row) {
			static auto state_Alive = "Alive";
			auto& BossInfo = BossRespawnInfo[row];
			// update respawn -1
			if (BossInfo.NextRespawn > 0)
				BossInfo.SetNextRespawn(BossInfo.NextRespawn - 1);
			auto respawn = BossInfo.NextRespawn;
			const auto state = [&]() -> const char* {
				if (respawn <= 0)
					return state_Alive;
				return state_Dead;
			}();
			// Update state
			const auto BossName = list->GetItemObj(row, 0);
			const auto Location = list->GetItemObj(row, 1);
			const auto RespawnTicks = list->GetItemObj(row, 2);
			const auto Status = list->GetItemObj(row, 3);
			Status->SetString(state);
			if (state == state_Alive) {
				Status->SetColor(Alive_color);
				// update the monster name color
				BossName->SetColor(COLOR_BLACK);
				// update location color
				Location->SetColor(Monster_Name);
			} else {
				Status->SetColor(COLOR_RED);
				// update the monster name color
				BossName->SetColor(COLOR_RED);
				// update location color
				Location->SetColor(COLOR_RED);
			}

			// update ticks
			RespawnTicks->SetString(GenerateRespawnString(respawn).c_str());
			if (respawn > 0)
				RespawnTicks->SetColor(COLOR_RED);
			else
				RespawnTicks->SetColor(Alive_color);

		}
	}
}
