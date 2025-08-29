print("-- [Loading] Starter Pack")
-- Starter Weapon
function StarterSword1( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 43		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 44 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 45		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7750,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function StarterHammer( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 43		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 44 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 45		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7752,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function StarterDagger( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 46		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 47 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 48		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7754,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function StarterGun( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 37		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 38 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 39		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7756,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function StarterBow( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 37		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 38 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 39		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7758,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function StarterStafC( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 46		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 47 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 48		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7760,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function StarterStafSm( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 37		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 38 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 39		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7762,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end
-- Starter Set
-- Champion Set
function StarterChampA( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 40		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 41 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 42		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7764,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function StarterChampB( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 37		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 38 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 39		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7765,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function StarterChampC( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 34		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 35 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 36		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7766,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end
--Crusader Set
-- Starter Set
function StarterCrusA( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 40		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 41 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 42		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7767,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function StarterCrusB( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 37		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 38 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 39		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7768,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function StarterCrusC( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 34		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 35 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 36		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7769,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end
-- Sharpshooter Set
-- Starter Set
function StarterSharpA( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 40		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 41 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 42		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7770,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function StarterSharpB( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 37		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 38 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 39		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7771,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function StarterSharpC( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 34		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 35 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 36		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7772,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

-- Voyager Set
-- Starter Set
function StarterVoyA( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 40		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 41 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 42		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7773,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function StarterVoyB( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 46		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 47 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 48		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7774,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function StarterVoyC( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 46		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 47 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 48		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7775,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

-- Cleric Set
-- Starter Set
function StarterClerA( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 40		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 41 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 42		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7776,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function StarterClerB( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 46		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 47 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 48		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7777,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function StarterClerC( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 46		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 47 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 48		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7778,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

-- Cleric Set
-- Starter Set
function StarterSealA( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 40		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 41 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 42		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7779,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function StarterSealB( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 46		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 47 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 48		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7780,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function StarterSealC( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 46		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 47 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 48		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7781,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end
--Chest Starter Starts Here!
--Crussader Starter Pack
function CrusStartPck(role, Item)
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
    local role = TurnToCha(role)
    local cha_type = GetChaTypeID(role)
    local Item_CanGet = GetChaFreeBagGridNum(role)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 4 slots in inventory to open Starter Chest")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 10056, 1, 0)
    GiveItem(role, 0, 10057, 1, 0)
    GiveItem(role, 0, 10058, 1, 0)
	GiveItem(role, 0, 10059, 2, 0)
end
--Champion Starter packs
function ChamStartPck(role, Item)
		if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
    local role = TurnToCha(role)
    local cha_type = GetChaTypeID(role)

    local Item_CanGet = GetChaFreeBagGridNum(role)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 4 slots in inventory to open Starter Chest")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 10060, 1, 0)
    GiveItem(role, 0, 10061, 1, 0)
    GiveItem(role, 0, 10062, 1, 0)
	GiveItem(role, 0, 10063, 1, 0)
end
--Sharpshooter Starter packs
function SharpStartPck(role, Item)
		if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
    local role = TurnToCha(role)
    local cha_type = GetChaTypeID(role)

    local Item_CanGet = GetChaFreeBagGridNum(role)

    if Item_CanGet <= 5 then
        SystemNotice(role, "Requires 5 slots in inventory to open Starter Chest")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 10077, 1, 0)
    GiveItem(role, 0, 10078, 1, 0)
    GiveItem(role, 0, 10079, 1, 0)
	GiveItem(role, 0, 10080, 1, 0)
	GiveItem(role, 0, 10081, 1, 0)
end
--Voyager Starter packs
function VoyStartPck(role, Item)
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
    local role = TurnToCha(role)
    local cha_type = GetChaTypeID(role)

    local Item_CanGet = GetChaFreeBagGridNum(role)

    if Item_CanGet <= 5 then
        SystemNotice(role, "Requires 5 slots in inventory to open Starter Chest")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 10065, 1, 0)
    GiveItem(role, 0, 10066, 1, 0)
    GiveItem(role, 0, 10067, 1, 0)
	GiveItem(role, 0, 10068, 1, 0)
end
--Cleric Starter packs
function ClerStartPck(role, Item)
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
    local role = TurnToCha(role)
    local cha_type = GetChaTypeID(role)

    local Item_CanGet = GetChaFreeBagGridNum(role)

    if Item_CanGet <= 5 then
        SystemNotice(role, "Requires 5 slots in inventory to open Starter Chest")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 10069, 1, 0)
    GiveItem(role, 0, 10070, 1, 0)
    GiveItem(role, 0, 10071, 1, 0)
	GiveItem(role, 0, 10072, 1, 0)
end
--Sealmaster Starter packs
function SealStartPck(role, Item)
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
    local role = TurnToCha(role)
    local cha_type = GetChaTypeID(role)

    local Item_CanGet = GetChaFreeBagGridNum(role)

    if Item_CanGet <= 5 then
        SystemNotice(role, "Requires 5 slots in inventory to open Starter Chest")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 10073, 1, 0)
    GiveItem(role, 0, 10074, 1, 0)
    GiveItem(role, 0, 10075, 1, 0)
	GiveItem(role, 0, 10076, 1, 0)
end
--------------------------------------------------------------------------------------
--Compensation For Server Wipe
--Crussader Refund Pack
function RefundCrus(role, Item)
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
    local role = TurnToCha(role)
    local cha_type = GetChaTypeID(role)

    local Item_CanGet = GetChaFreeBagGridNum(role)

    if Item_CanGet <= 10 then
        SystemNotice(role, "Requires 11 slots in inventory to open Refund Chest")
        UseItemFailed(role)
        return
    end 
    GiveItem(role, 0, 10056, 1, 0)
    GiveItem(role, 0, 10057, 1, 0)
    GiveItem(role, 0, 10058, 1, 0)
	GiveItem(role, 0, 10059, 2, 0)
	GiveItem(role, 0, 10082, 1, 0)
	GiveItem(role, 0, 10002, 1, 0)
	GiveItem(role, 0, 9964, 2, 0)
	GiveItem(role, 0, 2941, 1, 0)
	GiveItem(role, 0, 10082, 1, 0)
	GiveItem(role, 0, 32410, 1, 0)
	
end
--Champion Refund packs
function RefundChamp(role, Item)
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
    local role = TurnToCha(role)
    local cha_type = GetChaTypeID(role)

    local Item_CanGet = GetChaFreeBagGridNum(role)

    if Item_CanGet <= 10 then
        SystemNotice(role, "Requires 11 slots in inventory to open Refund Chest")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 10060, 1, 0)
    GiveItem(role, 0, 10061, 1, 0)
    GiveItem(role, 0, 10062, 1, 0)
	GiveItem(role, 0, 10063, 1, 0)
	GiveItem(role, 0, 10002, 1, 0)
	GiveItem(role, 0, 10082, 1, 0)
	--GiveItem(role, 0, 9923, 5, 0)
	GiveItem(role, 0, 9963, 2, 0)
	GiveItem(role, 0, 10082, 1, 0)
	GiveItem(role, 0, 2941, 1, 0)
	GiveItem(role, 0, 32410, 1, 0)
end
--Sharpshooter Refund packs
function RefundSharp(role, Item)
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
    local role = TurnToCha(role)
    local cha_type = GetChaTypeID(role)

    local Item_CanGet = GetChaFreeBagGridNum(role)

    if Item_CanGet <= 11 then
        SystemNotice(role, "Requires 12 slots in inventory to open Refund Chest")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 10077, 1, 0)
    GiveItem(role, 0, 10078, 1, 0)
    GiveItem(role, 0, 10079, 1, 0)
	GiveItem(role, 0, 10080, 1, 0)
	GiveItem(role, 0, 10081, 1, 0)
	GiveItem(role, 0, 10082, 1, 0)
	--GiveItem(role, 0, 9923, 5, 0)
	GiveItem(role, 0, 10002, 1, 0)
	GiveItem(role, 0, 9965, 2, 0)
	GiveItem(role, 0, 10082, 1, 0)
	GiveItem(role, 0, 2941, 1, 0)
	GiveItem(role, 0, 32410, 1, 0)
end
--Voyager Refund packs
function RefundVoy(role, Item)
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
    local role = TurnToCha(role)
    local cha_type = GetChaTypeID(role)

    local Item_CanGet = GetChaFreeBagGridNum(role)

    if Item_CanGet <= 10 then
        SystemNotice(role, "Requires 11 slots in inventory to open Refund Chest")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 10065, 1, 0)
    GiveItem(role, 0, 10066, 1, 0)
    GiveItem(role, 0, 10067, 1, 0)
	GiveItem(role, 0, 10068, 1, 0)
	GiveItem(role, 0, 10083, 1, 0)
	--GiveItem(role, 0, 9923, 5, 0)
	GiveItem(role, 0, 10002, 1, 0)
	GiveItem(role, 0, 9966,2 , 0)
	GiveItem(role, 0, 10083, 1, 0)
	GiveItem(role, 0, 2941, 1, 0)
	GiveItem(role, 0, 32410, 1, 0)
end
--Cleric Refund packs
function RefundCler(role, Item)
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
    local role = TurnToCha(role)
    local cha_type = GetChaTypeID(role)

    local Item_CanGet = GetChaFreeBagGridNum(role)

    if Item_CanGet <= 10 then
        SystemNotice(role, "Requires 11 slots in inventory to open Refund Chest")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 10069, 1, 0)
    GiveItem(role, 0, 10070, 1, 0)
    GiveItem(role, 0, 10071, 1, 0)
	GiveItem(role, 0, 10072, 1, 0)
	GiveItem(role, 0, 10083, 1, 0)
	--GiveItem(role, 0, 9923, 5, 0)
	GiveItem(role, 0, 10002, 1, 0)
	GiveItem(role, 0, 9968,2 , 0)
	GiveItem(role, 0, 10083, 1, 0)
	GiveItem(role, 0, 2941, 1, 0)
	GiveItem(role, 0, 32410, 1, 0)
end
--Sealmaster Refund packs
function RefundSeal(role, Item)
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
    local role = TurnToCha(role)
    local cha_type = GetChaTypeID(role)

    local Item_CanGet = GetChaFreeBagGridNum(role)

    if Item_CanGet <= 10 then
        SystemNotice(role, "Requires 11 slots in inventory to open Refund Chest")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 10073, 1, 0)
    GiveItem(role, 0, 10074, 1, 0)
    GiveItem(role, 0, 10075, 1, 0)
	GiveItem(role, 0, 10076, 1, 0)
	GiveItem(role, 0, 10083, 1, 0)
	--GiveItem(role, 0, 9923, 5, 0)
	GiveItem(role, 0, 10002, 1, 0)
	GiveItem(role, 0, 9967,2 , 0)
	GiveItem(role, 0, 10083, 1, 0)
	GiveItem(role, 0, 2941, 1, 0)
	GiveItem(role, 0, 32410, 1, 0)
end
---end refund chest = make as starter new chest
---------------------------------------Set and Weapon Gemmed New Refund
-- Starter Weapon
function RefundSword1( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 12		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 25 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 13		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7750,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function RefundHammer( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 12		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 25 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 13		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7752,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function RefundSword( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 12		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 25 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 13		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 5		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,4281,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function RefundDagger( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 16		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 50 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 27		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7754,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function RefundGun( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 13		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 28 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 51		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7756,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function RefundBow( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 13		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 28 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 51		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7758,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function RefundStafC( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 16		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 50 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 27		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7760,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function RefundStafSm( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 16		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 50 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 27		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7762,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end
-- Starter Set
-- Champion Set
function RefundChampA( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 14		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 26 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 52		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7764,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function RefundChampB( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 15		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 21 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 28		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7765,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function RefundChampC( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 15		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 53 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 29		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7766,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end
--Crusader Set
-- Starter Set
function RefundCrusA( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 14		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 26 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 52		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7767,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function RefundCrusB( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 4		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 21 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 28		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7768,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function RefundCrusC( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 15		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 53 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 29		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7769,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end
-- Sharpshooter Set
-- Starter Set
function RefundSharpA( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 14		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 26 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 52		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7770,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function RefundSharpB( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 10		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 51 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 28		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7771,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function RefundSharpC( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 15		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 53 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 29		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7772,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

-- Voyager Set
-- Starter Set
function RefundVoyA( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 14		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 26 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 52		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7773,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function RefundVoyB( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 15		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 50 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 27		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7774,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function RefundVoyC( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 15		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 48 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 16		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7775,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

-- Cleric Set
-- Starter Set
function RefundClerA( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 27		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 14 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 50		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7776,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function RefundClerB( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 16		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 50 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 27		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7777,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function RefundClerC( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 47		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 48 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 16		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7778,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

-- Cleric Set
-- Starter Set
function RefundSealA( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 14		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 26 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 52		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7779,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function RefundSealB( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 15		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 50 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 27		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7780,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end

function RefundSealC( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 15		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 48 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 16		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 5		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7781,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end
------------------Refund Helm Honorary
function RefundHelmDg( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 20		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 18 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 24		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7782,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end
--Refund Helm Magic
function RefundHelmMg( role, Item )
	if KitbagLock(role, 0) == LUA_FALSE then
		PopupNotice(role, "Inventory is locked.")
		return
	end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
	if GetCtrlBoat(role) ~= nil then 
		SystemNotice(role, "Cannot use while sailing!") 
		UseItemFailed(role) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet <= 0 then
		SystemNotice(role, "Insufficient space in inventory!")
		UseItemFailed(role)
		return
	end
	local GemSlotAID = 19		-- Gem Stone ID A ( Can be founded in stoneinfo.txt )
	local GemSlotBID = 18 		-- Gem Stone ID B ( Can be founded in stoneinfo.txt )	
	local GemSlotCID = 24		-- Gem Stone ID C ( Can be founded in stoneinfo.txt )
	local GemSlotALevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotBLevel = 7		-- Gem Level - 1 ~ 9
	local GemSlotCLevel = 7		-- Gem Level - 1 ~ 9
	r1,r2 = MakeItem(role,7782,1,12)
	local Equipp = GetChaItem(role,2,r2)
    local param = GetItemForgeParam(Equipp,1)
    local Item_Stone = {}
    local Item_StoneLv = {}

    param = TansferNum(param)
    Item_Stone[0] = GetNum_Part2(param)
    Item_StoneLv[0] = GetNum_Part3(param)
    Item_Stone[0] = GemSlotAID							
    Item_StoneLv[0] = GemSlotALevel						
    param = SetNum_Part2(param, Item_Stone[0]) 			
    param = SetNum_Part3(param, Item_StoneLv[0]) 		
    SetItemForgeParam(Equipp, 1, param)
	
    param = TansferNum(param)
    Item_Stone[1] = GetNum_Part2(param)
    Item_StoneLv[1] = GetNum_Part3(param)
    Item_Stone[1] =  GemSlotBID							
    Item_StoneLv[1] = GemSlotBLevel						
    param = SetNum_Part4(param, Item_Stone[1]) 			
    param = SetNum_Part5(param, Item_StoneLv[1]) 	
    SetItemForgeParam(Equipp, 1, param)

    param = TansferNum(param)
    Item_Stone[2] = GetNum_Part2(param)
    Item_StoneLv[2] = GetNum_Part3(param)
    Item_Stone[2] = GemSlotCID						
    Item_StoneLv[2] = GemSlotCLevel 				
    param = SetNum_Part6(param, Item_Stone[2]) 			
    param = SetNum_Part7(param, Item_StoneLv[2]) 		
    SetItemForgeParam(Equipp, 1, param)

	local Socket = GetItemForgeParam(Equipp, 1)
	Socket = TansferNum(Socket)
	Socket = SetNum_Part1(Socket, 3)
	SetItemForgeParam(Equipp, 1, Socket)
	RefreshCha(role)
	--[[local cha_map = GetChaMapName (role)
	local x,y = GetChaPos (role) 
	GoTo(role,math.floor (x/100),math.floor (y/100),cha_map)--]]
	local cha_name = GetChaDefaultName ( role )
	--Notice( 'StarterChest', ''..cha_name..' obtained a +12 [Starter Weapon] ')
end