print("-- [Loading] Equipment Category")

local MainTabName = 'Equipment'

IGS.Category[MainTabName] =  {
	[MainTabName] = {Packs = {}, Pointer = nil}
}

--	AddMallPack('Pack Title', 'Description', Price, 'Hot', Items ({ID, ID, ID} or {{ID =, Qty = , Qly = }, {ID =, Qty = , Qly = }), Ignored?, StockQty)
IGS.Category[MainTabName][MainTabName].Packs[1] = AddMallPack("Light Ice-Covered Sword", "", 2799, 1, {{ID = 4274, Qty = 2}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[2] = AddMallPack("Heavy Ice-Covered Hammer", "", 2799, 1, {{ID = 4275, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[3] = AddMallPack("Ice-Covered Snow Spike", "", 2799, 1, {{ID = 4276, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[4] = AddMallPack("Ice-Covered Evil Spear", "", 2799, 1, {{ID = 4277, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[5] = AddMallPack("Ice-Covered Enchanted Bow", "", 2799, 1, {{ID = 4278, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[6] = AddMallPack("Ice-Covered Fledgy Staff", "", 2799, 1, {{ID = 4279, Qty = 1}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[7] = AddMallPack("Ice-Covered Frosted Staff", "", 2799, 1, {{ID = 4280, Qty = 2}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Packs[8] = AddMallPack("Ice-Covered Fury SnowBlade", "", 2799, 1, {{ID = 4281, Qty = 2}}, 1, -1)
IGS.Category[MainTabName][MainTabName].Pointer = AddMallTab(MainTabName, IGS.Category[MainTabName][MainTabName].Packs)
