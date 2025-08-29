print("-- [Loading] Forging Category")

local MainTabName = 'Forging'

IGS.Category[MainTabName] = {
	[MainTabName] = {Packs = {}, Pointer = nil}
}

--	AddMallPack('Pack Title', 'Description', Price, 'Hot', Items ({ID, ID, ID} or {{ID =, Qty = , Qly = }, {ID =, Qty = , Qly = }), Ignored?, StockQty)
IGS.Category[MainTabName][MainTabName].Packs[1] = AddMallPack("Azrael Gem Pack", "Full Set of Azrael Gems.", 120, 1, {9613}, 1, 500)
IGS.Category[MainTabName][MainTabName].Packs[2] = AddMallPack("Great Gem Pack", "Full Set of Great Gems", 85, 1, {9612}, 1, 500)
IGS.Category[MainTabName][MainTabName].Packs[3] = AddMallPack("Advance Gem Pack", "Full Set of Advance Gems", 70, 1, {9614}, 1, 500)
IGS.Category[MainTabName][MainTabName].Packs[4] = AddMallPack("Jades Gem Pack", "Full Set of Jades Gems", 70, 1, {9615}, 1, 500)

IGS.Category[MainTabName][MainTabName].Pointer = AddMallTab(MainTabName, IGS.Category[MainTabName][MainTabName].Packs)
