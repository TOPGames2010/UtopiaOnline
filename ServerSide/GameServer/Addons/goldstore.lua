function UseItemGoldStore(role,item)
	local num = GetItemForgeParam(item,1)
	local gold = GetChaAttr(role,ATTR_GD)
	if gold + num > 2000000000 then
		SystemNotice(role,"Total gold can not exceed 2b")
		UseItemFailed(role)
		return
	end
	AddMoney ( role , 0 , num )
end

function CreateGoldStore(role,num,TempBag)
	local isTemp = 0
	local TempBagFreeSlotsNum = GetChaFreeTempBagGridNum(role)
	local InventoryFreeSlotNum = GetChaFreeBagGridNum(role)
	--check it has free slot in temp bag or inventory 
	if GetChaFreeBagGridNum(role) < 1 and TempBagFreeSlotsNum < 1 then
		SystemNotice(role,"Requires slot in inventory")
		return
	end
	--if has no slot in inventory and has slot in temp bag send it there 
	if InventoryFreeSlotNum < 1 and TempBagFreeSlotsNum >= 1 then
		isTemp = 1
	end
	local gold = GetChaAttr(role,ATTR_GD)
	num = math.min(gold,num,1400000000)
	if num < 1 then
		SystemNotice(role,"Creating a gold store requires atleast 1 gold.")
		return
	end
	AddMoney ( role , 0 , -num )
	local itemTab = {
		ID = 9956,
		Quantity = 1,
		ForgeParam = num,
	}
	--override all options if its force to go to temp bag 
	if TempBag then
		isTemp = 1
	end
	AddItem(role,itemTab,isTemp)
end
--u can add if has slot in temp bag here 
function Addons_gold(role)
	local overflow = GetChaAttr( role , ATTR_GD )
	if overflow > 1400000000 then
		CreateGoldStore(role,1000000000)
		SystemNotice(role, "Gold OverFlow:System Changed your 1B Gold into 1B Gold Store!")
	end	
end