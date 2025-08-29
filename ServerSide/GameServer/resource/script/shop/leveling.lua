print("-- [Loading] Leveling Category")

local MainTabName = 'Leveling'

IGS.Category[MainTabName] =  {
	[MainTabName] = {Packs = {}, Pointer = nil}
}

--	AddMallPack('Pack Title', 'Description', Price, 'Hot', Items ({ID, ID, ID} or {{ID =, Qty = , Qly = }, {ID =, Qty = , Qly = }), Ignored?, StockQty)
IGS.Category[MainTabName][MainTabName].Packs[1] = AddMallPack("Hi-Amplifier of Luck", "Grants an extra 2X drop rate for a short period of time.", 8, 1, {{ID = 3097, Qty = 3}}, 1, -1)

IGS.Category[MainTabName][MainTabName].Pointer = AddMallTab(MainTabName, IGS.Category[MainTabName][MainTabName].Packs)
