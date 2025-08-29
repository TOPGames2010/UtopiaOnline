print("-- [Loading] Accessories Category")

local MainTabName = 'Accessories'

IGS.Category[MainTabName] =  {
	[MainTabName] = {Packs = {}, Pointer = nil}
}

--	AddMallPack('Pack Title', 'Description', Price, 'Hot', Items ({ID, ID, ID} or {{ID =, Qty = , Qly = }, {ID =, Qty = , Qly = }), Ignored?, StockQty)
IGS.Category[MainTabName][MainTabName].Packs[1] = AddMallPack("Hardin's Power", "", 1899, 1, {{ID = 9963, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[2] = AddMallPack("Darkness Power", "", 1899, 1, {{ID = 9964, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[3] = AddMallPack("Hell Feather", "", 1899, 1, {{ID = 9965, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[4] = AddMallPack("Soul of Asura", "", 1899, 1, {{ID = 9966, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[5] = AddMallPack("Styx's Demonizing", "", 1899, 1, {{ID = 9967, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[6] = AddMallPack("Spirit Crystal of Abyss", "", 1899, 1, {{ID = 9968, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[7] = AddMallPack("Lion's Necklace", "", 4899, 1, {{ID = 9952, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[8] = AddMallPack("Arthurs Faith", "", 4999, 1, {{ID = 7002, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[9] = AddMallPack("Admiral Cloak Chest", "", 8899, 1, {{ID = 9603, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[10] = AddMallPack("Admiral Cloak Upgrade", "", 1299, 1, {{ID = 9605, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[11] = AddMallPack("Lv65 Accessories Cruss", "", 7899, 1, {{ID = 32390, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[12] = AddMallPack("Lv65 Accessories Champ", "", 7899, 1, {{ID = 32391, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[13] = AddMallPack("Lv65 Accessories SS", "", 7899, 1, {{ID = 32392, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[14] = AddMallPack("Lv65 Accessories Voy", "", 7899, 1, {{ID = 32393, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[15] = AddMallPack("Lv65 Accessories Cleric", "", 7899, 1, {{ID = 32394, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[16] = AddMallPack("Lv65 Accessories SM", "", 7899, 1, {{ID = 32395, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Pointer = AddMallTab(MainTabName, IGS.Category[MainTabName][MainTabName].Packs)
