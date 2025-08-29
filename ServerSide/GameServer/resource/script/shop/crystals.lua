print("-- [Loading] Crystals Category")

local MainTabName = 'Crystals'

IGS.Category[MainTabName] = {
	[MainTabName] = {Packs = {}, Pointer = nil}
}

--	AddMallPack('Pack Title', 'Description', Price, 'Hot', Items ({ID, ID, ID} or {{ID =, Qty = , Qly = }, {ID =, Qty = , Qly = }), Ignored?, StockQty)
IGS.Category[MainTabName][MainTabName].Packs[1] = AddMallPack("1 Crystals", "Double click to get 1 In-Game Mall Points.", 1, 1, {9914}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[2] = AddMallPack("5 Crystals", "Double click to get 5 In-Game Mall Points.", 5, 1, {9915}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[3] = AddMallPack("10 Crystals", "Double click to get 10 In-Game Mall Points.", 10, 1, {9916}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[4] = AddMallPack("20 Crystals", "Double click to get 20 In-Game Mall Points.", 20, 1, {9917}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[5] = AddMallPack("25 Crystals", "Double click to get 25 In-Game Mall Points.", 25, 1, {9918}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[6] = AddMallPack("50 Crystals", "Double click to get 50 In-Game Mall Points.", 50, 1, {9919}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[7] = AddMallPack("100 Crystals", "Double click to get 100 In-Game Mall Points.", 100, 1, {9920}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[8] = AddMallPack("250 Crystals", "Double click to get 250 In-Game Mall Points.", 250, 1, {9921}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[9] = AddMallPack("500 Crystals", "Double click to get 500 In-Game Mall Points.", 500, 1, {9922}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[10] = AddMallPack("1000 Crystals", "Double click to get 1000 In-Game Mall Points.", 1000, 1, {9923}, 1, -1)

IGS.Category[MainTabName][MainTabName].Pointer = AddMallTab(MainTabName, IGS.Category[MainTabName][MainTabName].Packs)
