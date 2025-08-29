print("-- [Loading] VIP Category")

local MainTabName = 'VIP'
local SubTabName1 = 'VIP Membership'

IGS.Category[MainTabName] = {
	[MainTabName] = {Packs = {}, Pointer = nil},
	[SubTabName1] = {Packs = {}, Pointer = nil},
	
}

--	AddMallPack('Pack Title', 'Description', Price, 'Hot', Items ({ID, ID, ID} or {{ID =, Qty = , Qly = }, {ID =, Qty = , Qly = }), Ignored?, StockQty)

IGS.Category[MainTabName][SubTabName1].Packs[1] = AddMallPack("VIP 7 Days Card", "VIP 7 Days Membership", 599, 1, {9953}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[2] = AddMallPack("VIP 14 Days Card", "VIP 14 Days Membership.", 799, 1, {9955}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[3] = AddMallPack("VIP 30 Days Card", "VIP 30 Days Membership.", 999, 1, {9954}, 1, -1)

IGS.Category[MainTabName][SubTabName1].Packs[4] = AddMallPack("VIP 7 Days Package", "VIP Packages with 7 Days Membership", 2299, 1, {9986}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[5] = AddMallPack("VIP 14 Days Package", "VIP Packages with 14 Days Membership.", 5999, 1, {9988}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[6] = AddMallPack("VIP 30 Days Package", "VIP Packages with 30 Days Membership.", 9999, 1, {9987}, 1, -1)
----------------------------------------------------------------------------------------------------------------------------------------------------------
IGS.Category[MainTabName][MainTabName].Pointer = AddMallTab(MainTabName, IGS.Category[MainTabName][MainTabName].Packs)
IGS.Category[MainTabName][SubTabName1].Pointer = AddMallTab(SubTabName1, IGS.Category[MainTabName][SubTabName1].Packs, IGS.Category[MainTabName][MainTabName].Pointer)