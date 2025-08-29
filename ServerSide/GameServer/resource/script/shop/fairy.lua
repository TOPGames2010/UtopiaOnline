print("-- [Loading] Fairy Category")

local MainTabName = 'Fairy'
local SubTabName1 = 'Rations'
local SubTabName2 = 'Fruits'
local SubTabName3 = 'Skills'
local SubTabName4 = 'Rear Hand Pet'

IGS.Category[MainTabName] = {
	[MainTabName] = {Packs = {}, Pointer = nil},
	[SubTabName1] = {Packs = {}, Pointer = nil},
	[SubTabName2] = {Packs = {}, Pointer = nil},
	[SubTabName3] = {Packs = {}, Pointer = nil},
	[SubTabName4] = {Packs = {}, Pointer = nil}
}

-- AddMallPack('Pack Title', 'Description', Price, 'Hot', Items ({ID, ID, ID} or {{ID =, Qty = , Qly = }, {ID =, Qty = , Qly = }), Ignored?, StockQty)
--	Fairy Rations
IGS.Category[MainTabName][SubTabName1].Packs[1] = AddMallPack("Great Fairy Ration", "Recovers the stamina of a pet.", 199, 1, {{ID = 6841, Qty = 99}}, 1, -1)
IGS.Category[MainTabName][SubTabName1].Packs[2] = AddMallPack("Great Auto Ration", "Automatically recovers the stamina of a pet.", 299, 1, {{ID = 6842, Qty = 99}}, 1, -1)
--	Normal/Great Fairy Fruits.
IGS.Category[MainTabName][SubTabName2].Packs[1] = AddMallPack("Improved Strength Fruit", "It will increase a Fairy's Level by 1 and Strength by 1 point.", 15, 1, {7003}, 1, -1)
IGS.Category[MainTabName][SubTabName2].Packs[2] = AddMallPack("Improved Agility Fruit", "It will increase a Fairy's Level by 1 and Agility by 1 point.", 15, 1, {7004}, 1, -1)
IGS.Category[MainTabName][SubTabName2].Packs[3] = AddMallPack("Improved Accuracy Fruit", "It will increase a Fairy's Level by 1 and Accuracy by 1 point.", 15, 1, {7005}, 1, -1)
IGS.Category[MainTabName][SubTabName2].Packs[4] = AddMallPack("Improved Constitution Fruit", "It will increase a Fairy's Level by 1 and Constitution by 1 point.", 15, 1, {7006}, 1, -1)
IGS.Category[MainTabName][SubTabName2].Packs[5] = AddMallPack("Improved Spirit Fruit", "It will increase a Fairy's Level by 1 and Spirit by 1 point.", 15, 1, {7007}, 1, -1)
IGS.Category[MainTabName][SubTabName2].Packs[6] = AddMallPack("Great Snow Dragon Fruit", "Great Snow Dragon Fruit can increases the Strength of pet by 2.", 10, 1, {0276}, 1, -1)
IGS.Category[MainTabName][SubTabName2].Packs[7] = AddMallPack("Great Icespire Plum", "Icespire Plum can increases the Agility of pet by 2.",10, 1, {0277}, 1, -1)
IGS.Category[MainTabName][SubTabName2].Packs[8] = AddMallPack("Great Zephyr Fish Floss", "Zephyr Fish Floss can increases the Accuracy of pet by 2.", 10, 1, {0278}, 1, -1)
IGS.Category[MainTabName][SubTabName2].Packs[9] = AddMallPack("Great Argent Mango", "Argent Mango can increases the Constitution of pet by 2.", 10, 1, {0279}, 1, -1)
IGS.Category[MainTabName][SubTabName2].Packs[10] = AddMallPack("Great Shaitan Biscuit", "Shaitan Biscuit can increases the Spirit of pet by 2.", 10, 1, {0280}, 1, -1)
--	Standard Fairy Skills.
IGS.Category[MainTabName][SubTabName3].Packs[1] = AddMallPack("Standard Protection", "Pet Skill", 20, 1, {0244}, 1, -1)
IGS.Category[MainTabName][SubTabName3].Packs[2] = AddMallPack("Standard Berserk", "Pet Skill", 20, 1, {0247}, 1, -1)
IGS.Category[MainTabName][SubTabName3].Packs[3] = AddMallPack("Standard Magic", "Pet Skill", 20, 1, {0250}, 1, -1)
IGS.Category[MainTabName][SubTabName3].Packs[4] = AddMallPack("Standard Recover", "Pet Skill", 20, 1, {0253}, 1, -1)
IGS.Category[MainTabName][SubTabName3].Packs[5] = AddMallPack("Standard Meditation", "Pet Skill", 20, 1, {0260}, 1, -1)
--	Rear Hand Pet
IGS.Category[MainTabName][SubTabName4].Packs[1] = AddMallPack("Dragon Fairy", "Rear Pet", 4799, 1, {19009}, 1, -1)
IGS.Category[MainTabName][SubTabName4].Packs[2] = AddMallPack("Fairy of Dawn", "Rear Pet", 4799, 1, {19007}, 1, -1)
IGS.Category[MainTabName][SubTabName4].Packs[3] = AddMallPack("Fairy of Winter", "Rear Pet", 4799, 1, {19005}, 1, -1)
IGS.Category[MainTabName][SubTabName4].Packs[4] = AddMallPack("Fairy of Weather", "Rear Pet", 4799, 1, {19002}, 1, -1)

IGS.Category[MainTabName][MainTabName].Pointer = AddMallTab(MainTabName, IGS.Category[MainTabName][MainTabName].Packs)
IGS.Category[MainTabName][SubTabName1].Pointer = AddMallTab(SubTabName1, IGS.Category[MainTabName][SubTabName1].Packs, IGS.Category[MainTabName][MainTabName].Pointer)
IGS.Category[MainTabName][SubTabName2].Pointer = AddMallTab(SubTabName2, IGS.Category[MainTabName][SubTabName2].Packs, IGS.Category[MainTabName][MainTabName].Pointer)
IGS.Category[MainTabName][SubTabName3].Pointer = AddMallTab(SubTabName3, IGS.Category[MainTabName][SubTabName3].Packs, IGS.Category[MainTabName][MainTabName].Pointer)
IGS.Category[MainTabName][SubTabName4].Pointer = AddMallTab(SubTabName4, IGS.Category[MainTabName][SubTabName4].Packs, IGS.Category[MainTabName][MainTabName].Pointer)