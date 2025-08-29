print('Loading demonichelm.lua')

Creat_DemonicHelm = Creat_ItemX

function Creat_ItemX(item, item_type, item_lv, item_event)
	local item, item_type, item_lv, item_event = Creat_DemonicHelm(item, item_type, item_lv, item_event)

	if GetItemID(item) == 9160 then
		Add_Item_Attr( ITEMATTR_COE_MXHP, 0);
		Add_Item_Attr( ITEMATTR_COE_MXSP, 0);
		Add_Item_Attr( ITEMATTR_VAL_PDEF, 0);
		Add_Item_Attr( ITEMATTR_COE_MSPD, 0);
		SetItemAttr(item, 55, 1); 
	elseif GetItemID(item) >= 15047  and GetItemID(item) <= 15052  then 
		Add_Item_Attr( ITEMATTR_COE_HREC, 0);
		Add_Item_Attr( ITEMATTR_COE_SREC, 0);
		Add_Item_Attr( ITEMATTR_VAL_PDEF, 0);
		Add_Item_Attr( ITEMATTR_COE_MSPD, 0);
		SetItemAttr(item, 55, 0); 
	end
	return item, item_type, item_lv, item_event
end

DemonicUpgade = {1,1,1,1,1,1,1,1}
--DemonicUpgade = {1,1,.8,.7,.6,.5,.4,.3,.2,.1}

DemonicAttr = {}
DemonicAttr[2] = {
	[ITEMATTR_COE_MXHP] = 20,
	[ITEMATTR_COE_MXSP] = 20,
	[ITEMATTR_COE_MSPD] = 20}
DemonicAttr[3] = {
	[ITEMATTR_COE_MXHP] = 30,
	[ITEMATTR_COE_MXSP] = 30,
	[ITEMATTR_COE_MSPD] = 30}
DemonicAttr[4] = {
	[ITEMATTR_COE_MXHP] = 40,
	[ITEMATTR_COE_MXSP] = 40,
	[ITEMATTR_COE_MSPD] = 40}
DemonicAttr[5] = {
	[ITEMATTR_COE_MXHP] = 50,
	[ITEMATTR_COE_MXSP] = 50,
	[ITEMATTR_COE_MSPD] = 50}
DemonicAttr[6] = {
	[ITEMATTR_COE_MXHP] = 60,
	[ITEMATTR_COE_MXSP] = 60,
	[ITEMATTR_COE_MSPD] = 60}
DemonicAttr[7] = {
	[ITEMATTR_COE_MXHP] = 70,
	[ITEMATTR_COE_MXSP] = 70,
	[ITEMATTR_COE_MSPD] = 70}
DemonicAttr[8] = {
	[ITEMATTR_COE_MXHP] = 80,
	[ITEMATTR_COE_MXSP] = 80,
	[ITEMATTR_COE_MSPD] = 80,
	[ITEMATTR_VAL_PDEF] = 4}
DemonicAttr[9] = {
	[ITEMATTR_COE_MXHP] = 90,
	[ITEMATTR_COE_MXSP] = 90,
	[ITEMATTR_COE_MSPD] = 90,
	[ITEMATTR_VAL_PDEF] = 5}
DemonicAttr[10] = {
	[ITEMATTR_COE_MXHP] = 100,
	[ITEMATTR_COE_MXSP] = 100,
	[ITEMATTR_COE_MSPD] = 100,
	[ITEMATTR_VAL_PDEF] = 10}

--DemonicAttr[ITEMATTR_VAL_MXHP] = 1000
--DemonicAttr[ITEMATTR_VAL_MXSP] = 1000
--DemonicAttr[ITEMATTR_VAL_PDEF] = 1
--DemonicAttr[ITEMATTR_VAL_MSPD] = 10
--upgrade fix by mothannakh---
function Nightmare_Demonic(role, Item, Item_Traget)
	local isboat = 0
	isboat = GetCtrlBoat(role)
	if isboat ~= nil then
		SystemNotice(role, "Cannot use while sailing")
		UseItemFailed(role)
		return
	end
	--check if inventory locked--
	if KitbagLock(role, 1) == LUA_TRUE or GetChaStateLv(role, STATE_BAT) >= 1 or GetChaStateLv(role, STATE_JY) >= 1 then
		PopupNotice(role, "Inventory Locked! unlock it!")
		UseItemFailed(role)
		return
	end
	-- check item
	local itemid = GetItemID(Item_Traget)
	local itemname = GetItemName(itemid)
	--print(itemid..itemname)
	if itemid ~= 9160 then
		SystemNotice(role, "Please use only on Nightmare Demonic Helm!")
		UseItemFailed(role)
		return
	end
	-- check level
	local helmlv = GetItemAttr(Item_Traget, 55)
	--local helmlv = GetItemAttr(Item_Traget, ITEMATTR_MAXENERGY)
	--print("first["..helmlv.."]")
	---incase if helm lvl is 0--
	if helmlv <= 0 then 
		helmlv = 1
	end
	if helmlv >= 8 then
		SystemNotice(role, "Nightmare Demonic Helm already maxed upgrade")
		UseItemFailed(role)
		return
	end
	local b = DemonicUpgade[helmlv]
	local r = Percentage_Random(b)
	--check Percentage 
	if r == 1 then
		helmlv = (helmlv + 1)
		
		for i,v in pairs(DemonicAttr[helmlv]) do
			SetItemAttr(Item_Traget,i,v)
		end		
		--SetItemAttr(Item_Traget, ITEMATTR_VAL_LEVEL, helmlv)
		SetItemAttr(Item_Traget, ITEMATTR_MAXENERGY, helmlv)
		SetItemAttr(Item_Traget, 55, helmlv);  
		BickerNotice(role, 'Successfully upgrade '..itemname..'! to lvl'..helmlv.."]")
		LG('Nightmare Demonic','Player ['..GetChaDefaultName(role)..'] Successfully upgrade [ '..itemname..'! to lvl'..helmlv.."]")
		PlayEffect(role, 345)
		
		if helmlv == 8 then 
			PlayEffect(role, 345);
			GMNotice (GetChaDefaultName(role).." Upgraded Nightmare Demonic Helm to Lv8 Enjoy!")
			LG('Nightmare Demonic Helm Max', ''..GetChaDefaultName(role)..' has maxed out the level of Nightmare Demonic Helm.')
		end
		SynChaKitbag(role, 13)
		
		
	else
		BickerNotice(role,"Upgrade Failed! try again!")
		PlayEffect(role, 346)
		LG('Nightmare Demonic','Player ['..GetChaDefaultName(role)..'] Failed upgrade [ '..itemname..'! to lvl'..helmlv.."]")
	end
end
--[[
iteminfo lines

9160	Nightmare Demonic Helm	e1043	10110001	0000920001	0001930001	0002991001	0003010301	0	00	20	0	0	0	0	1	1	1	1	1	1	1	2000	-1	70	-1	0	0	0	-1	0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	10,10	10,10	0,0	0,0	0,0	0,0	0,0	0,0	20,20	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0	0,0	20000,20000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	Nightmare Demonic equipments	1
9161	Nightmare Demonic Helm Upgrade	cos005	10130005	0	0	0	0	0	00	66	0	0	0	0	0	1	1	1	1	15	0	200	-1	0	-1	0	0	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0,0	0	0	0,0	0	0	0	0	0	0	0	0	0	Nightmare_Demonic	0	0	0	0	0	0	Said to be used on a Nightmare Demonic Helm to upgrade it!	1	

]]--
		
function ItemUse_Nightmare(role, Item)
	local isboat = 0
	isboat = GetCtrlBoat(role)
	if isboat ~= nil then
		SystemNotice(role, "Cannot use while sailing")
		UseItemFailed(role)
		return
	end
	--check if inventory locked--
	if KitbagLock(role, 1) == LUA_TRUE or GetChaStateLv(role, STATE_BAT) >= 1 or GetChaStateLv(role, STATE_JY) >= 1 then
		PopupNotice(role, "Inventory Locked! unlock it!")
		UseItemFailed(role)
		return
	end
	local itemid = GetItemID(Item)
	local itemname = GetItemName(itemid)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 2 then
		SystemNotice(role, "Failed to use ["..itemname.."]. Requires 2 slots in inventory")
		UseItemFailed(role)
		return 
	else
		GiveItem(role, 0, 9160, 1, 20);
		GMNotice (GetChaDefaultName(role)..' successfully Opened '..itemname..'!');
		--SystemNotice('Nightmare Demonic', ''..GetChaDefaultName(role)..' opened Nightmare Demonic.')
		RefreshCha(role)
	end
end		