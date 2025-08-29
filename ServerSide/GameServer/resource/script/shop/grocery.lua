print("-- [Loading] Miscellaneous Category")

local MainTabName = 'Miscellaneous'
local SubTabName1 = 'Effect'
local SubTabName2 = 'Potions'
local SubTabName3 = 'Others'

IGS.Category[MainTabName] = {
	[MainTabName] = {Packs = {}, Pointer = nil},
	[SubTabName1] = {Packs = {}, Pointer = nil},
	[SubTabName2] = {Packs = {}, Pointer = nil},
	[SubTabName3] = {Packs = {}, Pointer = nil},
	
}

--	AddMallPack('Pack Title', 'Description', Price, 'Hot', Items ({ID, ID, ID} or {{ID =, Qty = , Qly = }, {ID =, Qty = , Qly = }), Ignored?, StockQty)


IGS.Category[MainTabName][SubTabName1].Packs[1] = AddMallPack("Aura of Hardin", "Put to glow app slot to obtain unique effect.", 75, 1, {8110}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[2] = AddMallPack("Aura of Darkness", "Put to glow app slot to obtain unique effect.", 75, 1, {8111}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[3] = AddMallPack("Aura of Abaddon", "Put to glow app slot to obtain unique effect.", 75, 1, {8112}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[4] = AddMallPack("Aura of Asura", "Put to glow app slot to obtain unique effect.", 75, 1, {8109}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[5] = AddMallPack("Aura of Abyss", "Put to glow app slot to obtain unique effect.", 75, 1, {8113}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[6] = AddMallPack("Aura of Styx", "Put to glow app slot to obtain unique effect.", 75, 1, {8108}, 1, -1)
--
IGS.Category[MainTabName][SubTabName1].Packs[7] = AddMallPack("Aura Effect 1", "Put to glow app slot to obtain unique effect.", 120, 1, {8101}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[8] = AddMallPack("Aura Effect 2", "Put to glow app slot to obtain unique effect.", 120, 1, {8102}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[9] = AddMallPack("Aura Effect 16", "Put to glow app slot to obtain unique effect.", 120, 1, {8116}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[10] = AddMallPack("Aura Effect 17", "Put to glow app slot to obtain unique effect.", 120, 1, {8117}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[11] = AddMallPack("Aura Effect 18", "Put to glow app slot to obtain unique effect.", 120, 1, {8118}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[12] = AddMallPack("Aura Effect 19", "Put to glow app slot to obtain unique effect.", 120, 1, {8119}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[13] = AddMallPack("Aura Effect 21", "Put to glow app slot to obtain unique effect.", 120, 1, {8121}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[14] = AddMallPack("Aura Effect 24", "Put to glow app slot to obtain unique effect.", 120, 1, {8124}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[15] = AddMallPack("Aura Effect 25", "Put to glow app slot to obtain unique effect.", 120, 1, {8125}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[16] = AddMallPack("Aura Effect 28", "Put to glow app slot to obtain unique effect.", 120, 1, {8128}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[17] = AddMallPack("Aura Effect 31", "Put to glow app slot to obtain unique effect.", 120, 1, {8131}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[18] = AddMallPack("Aura Effect 32", "Put to glow app slot to obtain unique effect.", 120, 1, {8132}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[19] = AddMallPack("Special Effect #4", "Put to glow app slot to obtain unique effect.", 120, 1, {11003}, 1, -1)
IGS.Category[MainTabName][SubTabName2].Packs[1] = AddMallPack("Phoenix Pots", "All In Potions!", 300, 1, {{ID = 10015, Qty = 25}}, 1, -1)
IGS.Category[MainTabName][SubTabName2].Packs[2] = AddMallPack("Manu Packs", "Full Set of Manu", 225, 1, {{ID = 10085, Qty = 1}}, 1, 5000)
IGS.Category[MainTabName][SubTabName3].Packs[1] = AddMallPack("Change Name Card", "Use to Change your name In Game!", 1899, 1, {0918}, 1, -1)
IGS.Category[MainTabName][SubTabName3].Packs[2] = AddMallPack("Change Item Card", "Use to Change Item", 2500, 1, {32338}, 1, -1)
IGS.Category[MainTabName][SubTabName3].Packs[3] = AddMallPack("Rebirth Card", "Use to do Rebirth", 3500, 1, {2941}, 1, -1)

IGS.Category[MainTabName][MainTabName].Pointer = AddMallTab(MainTabName, IGS.Category[MainTabName][MainTabName].Packs)
IGS.Category[MainTabName][SubTabName1].Pointer = AddMallTab(SubTabName1, IGS.Category[MainTabName][SubTabName1].Packs, IGS.Category[MainTabName][MainTabName].Pointer)
IGS.Category[MainTabName][SubTabName2].Pointer = AddMallTab(SubTabName2, IGS.Category[MainTabName][SubTabName2].Packs, IGS.Category[MainTabName][MainTabName].Pointer)
IGS.Category[MainTabName][SubTabName3].Pointer = AddMallTab(SubTabName3, IGS.Category[MainTabName][SubTabName3].Packs, IGS.Category[MainTabName][MainTabName].Pointer)