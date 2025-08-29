-- Unique Gem Vouchers
function ItemUse_RageV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
		-- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
        local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9652,  -- Replace with actual ID for level 1 voucher
        [2] = 9757,  -- Replace with actual ID for level 2 voucher
        [3] = 9758,  -- Replace with actual ID for level 3 voucher
        [4] = 9759,  -- Replace with actual ID for level 4 voucher
        [5] = 9760,  -- Replace with actual ID for level 5 voucher
        [6] = 9761,  -- Replace with actual ID for level 6 voucher
        [7] = 9762,  -- Replace with actual ID for level 7 voucher
        [8] = 9763,  -- Replace with actual ID for level 8 voucher
        [9] = 9764   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
function ItemUse_SoulxV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9651,  -- Replace with actual ID for level 1 voucher
        [2] = 9765,  -- Replace with actual ID for level 2 voucher
        [3] = 9766,  -- Replace with actual ID for level 3 voucher
        [4] = 9767,  -- Replace with actual ID for level 4 voucher
        [5] = 9768,  -- Replace with actual ID for level 5 voucher
        [6] = 9769,  -- Replace with actual ID for level 6 voucher
        [7] = 9770,  -- Replace with actual ID for level 7 voucher
        [8] = 9771,  -- Replace with actual ID for level 8 voucher
        [9] = 9772   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
function ItemUse_ColoV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9655,  -- Replace with actual ID for level 1 voucher
        [2] = 9733,  -- Replace with actual ID for level 2 voucher
        [3] = 9892,  -- Replace with actual ID for level 3 voucher
        [4] = 9893,  -- Replace with actual ID for level 4 voucher
        [5] = 9894,  -- Replace with actual ID for level 5 voucher
        [6] = 9895,  -- Replace with actual ID for level 6 voucher
        [7] = 9896,  -- Replace with actual ID for level 7 voucher
        [8] = 9897,  -- Replace with actual ID for level 8 voucher
        [9] = 9898   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
function ItemUse_StrikeV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9654,  -- Replace with actual ID for level 1 voucher
        [2] = 9899,  -- Replace with actual ID for level 2 voucher
        [3] = 9900,  -- Replace with actual ID for level 3 voucher
        [4] = 9901,  -- Replace with actual ID for level 4 voucher
        [5] = 9902,  -- Replace with actual ID for level 5 voucher
        [6] = 9903,  -- Replace with actual ID for level 6 voucher
        [7] = 9904,  -- Replace with actual ID for level 7 voucher
        [8] = 9905,  -- Replace with actual ID for level 8 voucher
        [9] = 9906   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
function ItemUse_WindV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9653,  -- Replace with actual ID for level 1 voucher
        [2] = 9907,  -- Replace with actual ID for level 2 voucher
        [3] = 9908,  -- Replace with actual ID for level 3 voucher
        [4] = 9909,  -- Replace with actual ID for level 4 voucher
        [5] = 9910,  -- Replace with actual ID for level 5 voucher
        [6] = 9911,  -- Replace with actual ID for level 6 voucher
        [7] = 9912,  -- Replace with actual ID for level 7 voucher
        [8] = 9913,  -- Replace with actual ID for level 8 voucher
        [9] = 32766   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
--- Uniqe Gem Of Rage Lv1-9
function ItemUse_RageVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0863, 1, 4)
end
function ItemUse_RageVoucha(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0863, 1, 102)
end
function ItemUse_RageVouchb(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0863, 1, 103)
end
function ItemUse_RageVouchc(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0863, 1, 104)
end
function ItemUse_RageVouchd(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0863, 1, 105)
end
function ItemUse_RageVouche(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0863, 1, 106)
end
function ItemUse_RageVouchf(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0863, 1, 107)
end
function ItemUse_RageVouchg(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0863, 1, 108)
end
function ItemUse_RageVouchh(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0863, 1, 109)
end
---End of Gem Of Rage
-- Start of Unique Gem Of Wind lv1-9
function ItemUse_WindVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0860, 1, 4)
end
function ItemUse_WindVoucha(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0860, 1, 102)
end
function ItemUse_WindVouchb(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0860, 1, 103)
end
function ItemUse_WindVouchc(role, Item)
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0860, 1, 104)
end
function ItemUse_WindVouchd(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0860, 1, 105)
end
function ItemUse_WindVouche(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0860, 1, 106)
end
function ItemUse_WindVouchf(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0860, 1, 107)
end
function ItemUse_WindVouchg(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0860, 1, 108)
end
function ItemUse_WindVouchh(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0860, 1, 109)
end
-- End of Gem of Wind
--- Start of Gem Of Wind Voucher
function ItemUse_StrikeVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Strike Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0861, 1, 4)
end
function ItemUse_StrikeVoucha(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Strike Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0861, 1, 102)
end
function ItemUse_StrikeVouchb(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Strike Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0861, 1, 103)
end
function ItemUse_StrikeVouchc(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Strike Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0861, 1, 104)
end
function ItemUse_StrikeVouchd(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Strike Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0861, 1, 105)
end
function ItemUse_StrikeVouche(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Strike Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0861, 1, 106)
end
function ItemUse_StrikeVouchf(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Strike Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0861, 1, 107)
end
function ItemUse_StrikeVouchg(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Strike Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0861, 1, 108)
end
function ItemUse_StrikeVouchh(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Strike Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0861, 1, 109)
end
--End of Gem of Wind voucher

-- Start of Gem of Colossus Voucher
function ItemUse_ColoVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0862, 1, 4)
end
function ItemUse_ColoVoucha(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0862, 1, 102)
end
function ItemUse_ColoVouchb(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0862, 1, 103)
end
function ItemUse_ColoVouchc(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0862, 1, 104)
end
function ItemUse_ColoVouchd(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0862, 1, 105)
end
function ItemUse_ColoVouche(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0862, 1, 106)
end
function ItemUse_ColoVouchf(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0862, 1, 107)
end
function ItemUse_ColoVouchg(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0862, 1, 108)
end
function ItemUse_ColoVouchh(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0862, 1, 109)
end
--End of Gem of Colossus Voucher
-- Start of Unique Gem Of Soul Lv1-9
function ItemUse_SoulVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 1012, 1, 4)
end
function ItemUse_SoulVoucha(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 1012, 1, 102)
end
function ItemUse_SoulVouchb(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 1012, 1, 103)
end
function ItemUse_SoulVouchc(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 1012, 1, 104)
end
function ItemUse_SoulVouchd(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 1012, 1, 105)
end
function ItemUse_SoulVouche(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 1012, 1, 106)
end
function ItemUse_SoulVouchf(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 1012, 1, 107)
end
function ItemUse_SoulVouchg(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 1012, 1, 108)
end
function ItemUse_SoulVouchh(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Gem of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 1012, 1, 109)
end
--End Of Unique Gem Vouchers
------------- Start Of Chipped Gems Vouchers
-- Chipped Gems to Vouchers

function ItemUse_ChipRV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9667,  -- Replace with actual ID for level 1 voucher
        [2] = 9717,  -- Replace with actual ID for level 2 voucher
        [3] = 9718,  -- Replace with actual ID for level 3 voucher
        [4] = 9719,  -- Replace with actual ID for level 4 voucher
        [5] = 9720,  -- Replace with actual ID for level 5 voucher
        [6] = 9721,  -- Replace with actual ID for level 6 voucher
        [7] = 9722,  -- Replace with actual ID for level 7 voucher
        [8] = 9723,  -- Replace with actual ID for level 8 voucher
        [9] = 9724   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end

function ItemUse_ChipSlV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
        local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9668,  -- Replace with actual ID for level 1 voucher
        [2] = 9725,  -- Replace with actual ID for level 2 voucher
        [3] = 9726,  -- Replace with actual ID for level 3 voucher
        [4] = 9727,  -- Replace with actual ID for level 4 voucher
        [5] = 9728,  -- Replace with actual ID for level 5 voucher
        [6] = 9729,  -- Replace with actual ID for level 6 voucher
        [7] = 9730,  -- Replace with actual ID for level 7 voucher
        [8] = 9731,  -- Replace with actual ID for level 8 voucher
        [9] = 9732   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end

function ItemUse_ChipClV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
            local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9669,  -- Replace with actual ID for level 1 voucher
        [2] = 9733,  -- Replace with actual ID for level 2 voucher
        [3] = 9734,  -- Replace with actual ID for level 3 voucher
        [4] = 9735,  -- Replace with actual ID for level 4 voucher
        [5] = 9736,  -- Replace with actual ID for level 5 voucher
        [6] = 9737,  -- Replace with actual ID for level 6 voucher
        [7] = 9738,  -- Replace with actual ID for level 7 voucher
        [8] = 9739,  -- Replace with actual ID for level 8 voucher
        [9] = 9740   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end

function ItemUse_ChipSkV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9670,  -- Replace with actual ID for level 1 voucher
        [2] = 9741,  -- Replace with actual ID for level 2 voucher
        [3] = 9742,  -- Replace with actual ID for level 3 voucher
        [4] = 9743,  -- Replace with actual ID for level 4 voucher
        [5] = 9744,  -- Replace with actual ID for level 5 voucher
        [6] = 9745,  -- Replace with actual ID for level 6 voucher
        [7] = 9746,  -- Replace with actual ID for level 7 voucher
        [8] = 9747,  -- Replace with actual ID for level 8 voucher
        [9] = 9748   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
function ItemUse_ChipWdV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
  local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9671,  -- Replace with actual ID for level 1 voucher
        [2] = 9749,  -- Replace with actual ID for level 2 voucher
        [3] = 9750,  -- Replace with actual ID for level 3 voucher
        [4] = 9751,  -- Replace with actual ID for level 4 voucher
        [5] = 9752,  -- Replace with actual ID for level 5 voucher
        [6] = 9753,  -- Replace with actual ID for level 6 voucher
        [7] = 9754,  -- Replace with actual ID for level 7 voucher
        [8] = 9755,  -- Replace with actual ID for level 8 voucher
        [9] = 9756   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
--Lv1-9 Chipped Gem Of Rage Vouchers
function ItemUse_ChipRVouch(role, Item)
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6828, 1, 4)
end
function ItemUse_ChipaRVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6828, 1, 102)
end
function ItemUse_ChipbRVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6828, 1, 103)
end
function ItemUse_ChipcRVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6828, 1, 104)
end
function ItemUse_ChipdRVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6828, 1, 105)
end
function ItemUse_ChipeRVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6828, 1, 106)
end
function ItemUse_ChipfRVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6828, 1, 107)
end
function ItemUse_ChipgRVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6828, 1, 108)
end
function ItemUse_ChiphRVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6828, 1, 109)
end
--Lv1-9 Chipped Gem Of Soul Vouchers

function ItemUse_ChipSVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6831, 1, 4)
end

function ItemUse_ChipaSVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6831, 1, 102)
end
function ItemUse_ChipbSVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6831, 1, 103)
end
function ItemUse_ChipcSVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6831, 1, 104)
end
function ItemUse_ChipdSVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6831, 1, 105)
end
function ItemUse_ChipeSVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6831, 1, 106)
end
function ItemUse_ChipfSVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6831, 1, 107)
end
function ItemUse_ChipgSVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6831, 1, 108)
end
function ItemUse_ChiphSVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6831, 1, 109)
end
--Lv1-9 Chipped Gem Of Colossus Vouchers

function ItemUse_ChipCoVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6825, 1, 4)
end
function ItemUse_ChipCoaVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6825, 1, 102)
end
function ItemUse_ChipCobVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6825, 1, 103)
end
function ItemUse_ChipCocVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6825, 1, 104)
end
function ItemUse_ChipCodVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6825, 1, 105)
end
function ItemUse_ChipCoeVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6825, 1, 106)
end
function ItemUse_ChipCofVouch(role, Item)
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6825, 1, 107)
end
function ItemUse_ChipCogVouch(role, Item)
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6825, 1, 108)
end
function ItemUse_ChipCohVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6825, 1, 109)
end
--Lv2-9 Chipped Gem Of Striking Vouchers
function ItemUse_ChipStVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Striking Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6822, 1, 4)
end
function ItemUse_ChipStaVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Striking Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6822, 1, 102)
end
function ItemUse_ChipStbVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Striking Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6822, 1, 103)
end
function ItemUse_ChipStcVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Striking Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6822, 1, 104)
end
function ItemUse_ChipStdVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Striking Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6822, 1, 105)
end
function ItemUse_ChipSteVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Striking Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6822, 1, 106)
end
function ItemUse_ChipStfVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Striking Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6822, 1, 107)
end
function ItemUse_ChipStgVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Striking Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6822, 1, 108)
end
function ItemUse_ChipSthVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Striking Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6822, 1, 109)
end
--Lv1-9 Chipped Gem Of Wind Vouchers

function ItemUse_ChipWiVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6819, 1, 4)
end

function ItemUse_ChipWaiVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6819, 1, 102)
end
function ItemUse_ChipWbiVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6819, 1, 103)
end
function ItemUse_ChipWciVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6819, 1, 104)
end
function ItemUse_ChipWdiVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6819, 1, 105)
end
function ItemUse_ChipWeiVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6819, 1, 106)
end
function ItemUse_ChipWfiVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6819, 1, 107)
end
function ItemUse_ChipWgiVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6819, 1, 108)
end
function ItemUse_ChipWhiVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chipped Gem Of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6819, 1, 109)
end
---------- Great Gem Vouchers Starts Here
function ItemUse_GrtRgV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9672,  -- Replace with actual ID for level 1 voucher
        [2] = 9677,  -- Replace with actual ID for level 2 voucher
        [3] = 9678,  -- Replace with actual ID for level 3 voucher
        [4] = 9679,  -- Replace with actual ID for level 4 voucher
        [5] = 9680,  -- Replace with actual ID for level 5 voucher
        [6] = 9681,  -- Replace with actual ID for level 6 voucher
        [7] = 9682,  -- Replace with actual ID for level 7 voucher
        [8] = 9683,  -- Replace with actual ID for level 8 voucher
        [9] = 9684   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end

function ItemUse_GrtSlV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
        local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9673,  -- Replace with actual ID for level 1 voucher
        [2] = 9685,  -- Replace with actual ID for level 2 voucher
        [3] = 9686,  -- Replace with actual ID for level 3 voucher
        [4] = 9687,  -- Replace with actual ID for level 4 voucher
        [5] = 9688,  -- Replace with actual ID for level 5 voucher
        [6] = 9689,  -- Replace with actual ID for level 6 voucher
        [7] = 9690,  -- Replace with actual ID for level 7 voucher
        [8] = 9691,  -- Replace with actual ID for level 8 voucher
        [9] = 9692   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end

function ItemUse_GrtClV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
            local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9674,  -- Replace with actual ID for level 1 voucher
        [2] = 9693,  -- Replace with actual ID for level 2 voucher
        [3] = 9694,  -- Replace with actual ID for level 3 voucher
        [4] = 9695,  -- Replace with actual ID for level 4 voucher
        [5] = 9696,  -- Replace with actual ID for level 5 voucher
        [6] = 9697,  -- Replace with actual ID for level 6 voucher
        [7] = 9698,  -- Replace with actual ID for level 7 voucher
        [8] = 9699,  -- Replace with actual ID for level 8 voucher
        [9] = 9700   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end

function ItemUse_GrtSkV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9675,  -- Replace with actual ID for level 1 voucher
        [2] = 9701,  -- Replace with actual ID for level 2 voucher
        [3] = 9702,  -- Replace with actual ID for level 3 voucher
        [4] = 9703,  -- Replace with actual ID for level 4 voucher
        [5] = 9704,  -- Replace with actual ID for level 5 voucher
        [6] = 9705,  -- Replace with actual ID for level 6 voucher
        [7] = 9706,  -- Replace with actual ID for level 7 voucher
        [8] = 9707,  -- Replace with actual ID for level 8 voucher
        [9] = 9708   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
function ItemUse_GrtWdV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
  local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9676,  -- Replace with actual ID for level 1 voucher
        [2] = 9709,  -- Replace with actual ID for level 2 voucher
        [3] = 9710,  -- Replace with actual ID for level 3 voucher
        [4] = 9711,  -- Replace with actual ID for level 4 voucher
        [5] = 9712,  -- Replace with actual ID for level 5 voucher
        [6] = 9713,  -- Replace with actual ID for level 6 voucher
        [7] = 9714,  -- Replace with actual ID for level 7 voucher
        [8] = 9715,  -- Replace with actual ID for level 8 voucher
        [9] = 9716   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
-- Lv1 Great Gems
-- Great Gem Of Rage Vouchers
function ItemUse_GrtRVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7108, 1, 4)
end
function ItemUse_GrtSVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7109, 1, 4)
end
function ItemUse_GrtCoVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7111, 1, 4)
end
function ItemUse_GrtStVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Striking Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7110, 1, 4)
end
function ItemUse_GrtWiVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7112, 1, 4)
end
--Lv2-9 Great Gem Of Rage Vouchers
function ItemUse_GrttVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7108, 1, 102)
end
function ItemUse_GrttrVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7108, 1, 103)
end
function ItemUse_GrtfrVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7108, 1, 104)
end
function ItemUse_GrtfiVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7108, 1, 105)
end
function ItemUse_GrtsxVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7108, 1, 106)
end
function ItemUse_GrtzsVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7108, 1, 107)
end
function ItemUse_GrtitVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7108, 1, 108)
end
function ItemUse_GrtnnVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Rage Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7108, 1, 109)
end
--Lv2-9 Great Gem Of Soul Vouchers
function ItemUse_GrxlxVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7109, 1, 102)
end
function ItemUse_GrxlzVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7109, 1, 103)
end
function ItemUse_GrxlaVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7109, 1, 104)
end
function ItemUse_GrxlbVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7109, 1, 105)
end
function ItemUse_GrxlcVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7109, 1, 106)
end
function ItemUse_GrxldVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7109, 1, 107)
end
function ItemUse_GrxleVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7109, 1, 108)
end
function ItemUse_GrxlfVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Soul Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7109, 1, 109)
end
--Lv2-9 Great Gem Of Colossus Vouchers
function ItemUse_GrtClaVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7111, 1, 102)
end
function ItemUse_GrtClbVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7111, 1, 103)
end
function ItemUse_GrtClcVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7111, 1, 104)
end
function ItemUse_GrtCldVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7111, 1, 105)
end
function ItemUse_GrtCleVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7111, 1, 106)
end
function ItemUse_GrtClfVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7111, 1, 107)
end
function ItemUse_GrtClgVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7111, 1, 108)
end
function ItemUse_GrtClhVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Colossus Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7111, 1, 109)
end
--Lv2-9 Great Gem Of Striking Vouchers
function ItemUse_GrtStaVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Striking Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7110, 1, 102)
end
function ItemUse_GrtStbVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Striking Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7110, 1, 103)
end
function ItemUse_GrtStcVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Striking Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7110, 1, 104)
end
function ItemUse_GrtStdVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Striking Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7110, 1, 105)
end
function ItemUse_GrtSteVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Striking Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7110, 1, 106)
end
function ItemUse_GrtStfVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Striking Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7110, 1, 107)
end
function ItemUse_GrtStgVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Striking Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7110, 1, 108)
end
function ItemUse_GrtSthVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Striking Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7110, 1, 109)
end
--Lv2-9 Great Gem Of Wind Vouchers
function ItemUse_GrtWnaVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7112, 1, 102)
end
function ItemUse_GrtWnbVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7112, 1, 103)
end
function ItemUse_GrtWncVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7112, 1, 104)
end
function ItemUse_GrtWndVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7112, 1, 105)
end
function ItemUse_GrtWneVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7112, 1, 106)
end
function ItemUse_GrtWnfVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7112, 1, 107)
end
function ItemUse_GrtWngVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7112, 1, 108)
end
function ItemUse_GrtWnhVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Great Gem Of Wind Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 7112, 1, 109)
end
--------- End of Great Gem Vouchers

--------- Black Dragon Vouchers
--Black Dragon Voucher
function ItemUse_EyeVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Eye of Black Dragon Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0864, 1, 4)
end
function ItemUse_SoulbVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Soul of Black Dragon Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0865, 1, 4)
end

function ItemUse_HeartbVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Heart of Black Dragon Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0866, 1, 4)
end
-- Advance Gems Vouchers
-- Hat Gems to Vouchers
function ItemUse_YellowV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
   local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9659,  -- Replace with actual ID for level 1 voucher
        [2] = 9875,  -- Replace with actual ID for level 2 voucher
        [3] = 9876,  -- Replace with actual ID for level 3 voucher
        [4] = 9877,  -- Replace with actual ID for level 4 voucher
        [5] = 9878,  -- Replace with actual ID for level 5 voucher
        [6] = 9879,  -- Replace with actual ID for level 6 voucher
        [7] = 9880,  -- Replace with actual ID for level 7 voucher
        [8] = 9881,  -- Replace with actual ID for level 8 voucher
        [9] = 9882   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
function ItemUse_RedV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9660,  -- Replace with actual ID for level 1 voucher
        [2] = 9883,  -- Replace with actual ID for level 2 voucher
        [3] = 9884,  -- Replace with actual ID for level 3 voucher
        [4] = 9885,  -- Replace with actual ID for level 4 voucher
        [5] = 9886,  -- Replace with actual ID for level 5 voucher
        [6] = 9886,  -- Replace with actual ID for level 6 voucher
        [7] = 9888,  -- Replace with actual ID for level 7 voucher
        [8] = 9889,  -- Replace with actual ID for level 8 voucher
        [9] = 9890   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
function ItemUse_GreenV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9661,  -- Replace with actual ID for level 1 voucher
        [2] = 9773,  -- Replace with actual ID for level 2 voucher
        [3] = 9774,  -- Replace with actual ID for level 3 voucher
        [4] = 9775,  -- Replace with actual ID for level 4 voucher
        [5] = 9776,  -- Replace with actual ID for level 5 voucher
        [6] = 9777,  -- Replace with actual ID for level 6 voucher
        [7] = 9778,  -- Replace with actual ID for level 7 voucher
        [8] = 9779,  -- Replace with actual ID for level 8 voucher
        [9] = 9780   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
function ItemUse_ChiatV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
   local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9662,  -- Replace with actual ID for level 1 voucher
        [2] = 9781,  -- Replace with actual ID for level 2 voucher
        [3] = 9782,  -- Replace with actual ID for level 3 voucher
        [4] = 9783,  -- Replace with actual ID for level 4 voucher
        [5] = 9784,  -- Replace with actual ID for level 5 voucher
        [6] = 9785,  -- Replace with actual ID for level 6 voucher
        [7] = 9786,  -- Replace with actual ID for level 7 voucher
        [8] = 9787,  -- Replace with actual ID for level 8 voucher
        [9] = 9788   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
-- Advance Gems to Vouchers
function ItemUse_LocksV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
       local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9663,  -- Replace with actual ID for level 1 voucher
        [2] = 9789,  -- Replace with actual ID for level 2 voucher
        [3] = 9790,  -- Replace with actual ID for level 3 voucher
        [4] = 9791,  -- Replace with actual ID for level 4 voucher
        [5] = 9792,  -- Replace with actual ID for level 5 voucher
        [6] = 9793,  -- Replace with actual ID for level 6 voucher
        [7] = 9794,  -- Replace with actual ID for level 7 voucher
        [8] = 9795,  -- Replace with actual ID for level 8 voucher
        [9] = 9796   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
function ItemUse_BingsV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
         local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9664,  -- Replace with actual ID for level 1 voucher
        [2] = 9797,  -- Replace with actual ID for level 2 voucher
        [3] = 9798,  -- Replace with actual ID for level 3 voucher
        [4] = 9799,  -- Replace with actual ID for level 4 voucher
        [5] = 9800,  -- Replace with actual ID for level 5 voucher
        [6] = 9801,  -- Replace with actual ID for level 6 voucher
        [7] = 9802,  -- Replace with actual ID for level 7 voucher
        [8] = 9803,  -- Replace with actual ID for level 8 voucher
        [9] = 9804   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
function ItemUse_FengsV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
     local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9665,  -- Replace with actual ID for level 1 voucher
        [2] = 9805,  -- Replace with actual ID for level 2 voucher
        [3] = 9806,  -- Replace with actual ID for level 3 voucher
        [4] = 9807,  -- Replace with actual ID for level 4 voucher
        [5] = 9808,  -- Replace with actual ID for level 5 voucher
        [6] = 9809,  -- Replace with actual ID for level 6 voucher
        [7] = 9810,  -- Replace with actual ID for level 7 voucher
        [8] = 9811,  -- Replace with actual ID for level 8 voucher
        [9] = 9812   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
function ItemUse_SharksV(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
   local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9666,  -- Replace with actual ID for level 1 voucher
        [2] = 9813,  -- Replace with actual ID for level 2 voucher
        [3] = 9814,  -- Replace with actual ID for level 3 voucher
        [4] = 9815,  -- Replace with actual ID for level 4 voucher
        [5] = 9816,  -- Replace with actual ID for level 5 voucher
        [6] = 9817,  -- Replace with actual ID for level 6 voucher
        [7] = 9818,  -- Replace with actual ID for level 7 voucher
        [8] = 9819,  -- Replace with actual ID for level 8 voucher
        [9] = 9820   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
--Yellow Jade
function ItemUse_YellVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Yellow Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6832, 1, 4)
end
function ItemUse_aYellVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Yellow Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6832, 1, 102)
end
function ItemUse_bYellVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Yellow Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6832, 1, 103)
end
function ItemUse_cYellVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Yellow Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6832, 1, 104)
end
function ItemUse_dYellVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Yellow Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6832, 1, 105)
end
function ItemUse_eYellVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Yellow Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6832, 1, 106)
end
function ItemUse_fYellVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Yellow Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6832, 1, 107)
end
function ItemUse_gYellVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Yellow Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6832, 1, 108)
end
function ItemUse_hYellVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Yellow Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6832, 1, 109)
end
--End of Yellow Jade
--Start of Red Jade
function ItemUse_RedVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Red Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6833, 1, 4)
end
function ItemUse_aRedVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Red Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6833, 1, 102)
end
function ItemUse_bRedVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Red Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6833, 1, 103)
end
function ItemUse_cRedVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Red Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6833, 1, 104)
end
function ItemUse_dRedVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Red Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6833, 1, 105)
end
function ItemUse_eRedVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Red Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6833, 1, 106)
end
function ItemUse_fRedVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Red Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6833, 1, 107)
end
function ItemUse_gRedVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Red Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6833, 1, 108)
end
function ItemUse_hRedVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Red Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6833, 1, 109)
end
--End of Red Jade

-- Start of Green Jade
function ItemUse_GreenVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Green Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6834, 1, 4)
end
function ItemUse_GreenVoucha(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Green Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6834, 1, 102)
end
function ItemUse_GreenVouchb(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Green Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6834, 1, 103)
end
function ItemUse_GreenVouchc(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Green Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6834, 1, 104)
end
function ItemUse_GreenVouchd(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Green Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6834, 1, 105)
end
function ItemUse_GreenVouche(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Green Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6834, 1, 106)
end
function ItemUse_GreenVouchf(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Green Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6834, 1, 107)
end
function ItemUse_GreenVouchg(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Green Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6834, 1, 108)
end
function ItemUse_GreenVouchh(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Green Jade Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6834, 1, 109)
end
--End of Green Jade
-- Start of Chiatan's Aura
function ItemUse_ChiatVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chiatan's Aura Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6836, 1, 4)
end
function ItemUse_ChiatVoucha(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chiatan's Aura Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6836, 1, 102)
end
function ItemUse_ChiatVouchb(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chiatan's Aura Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6836, 1, 103)
end
function ItemUse_ChiatVouchc(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chiatan's Aura Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6836, 1, 104)
end
function ItemUse_ChiatVouchd(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chiatan's Aura Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6836, 1, 105)
end
function ItemUse_ChiatVouche(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chiatan's Aura Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6836, 1, 106)
end
function ItemUse_ChiatVouchf(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chiatan's Aura Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6836, 1, 107)
end
function ItemUse_ChiatVouchg(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chiatan's Aura Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6836, 1, 108)
end
function ItemUse_ChiatVouchh(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Chiatan's Aura Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6836, 1, 109)
end
--End of Chiatan's Aura
--Start of Lock's Hit
function ItemUse_LocksVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Lock's Hit Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6837, 1, 4)
end
function ItemUse_LocksVoucha(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Lock's Hit Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6837, 1, 102)
end
function ItemUse_LocksVouchb(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Lock's Hit Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6837, 1, 103)
end
function ItemUse_LocksVouchc(role, Item)
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
	local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Lock's Hit Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6837, 1, 104)
end
function ItemUse_LocksVouchd(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Lock's Hit Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6837, 1, 105)
end
function ItemUse_LocksVouche(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Lock's Hit Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6837, 1, 106)
end
function ItemUse_LocksVouchf(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Lock's Hit Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6837, 1, 107)
end
function ItemUse_LocksVouchg(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Lock's Hit Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6837, 1, 108)
end
function ItemUse_LocksVouchh(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Lock's Hit Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6837, 1, 109)
end
--End of Lock's Hit
--Start of Bing's Dodging
function ItemUse_BingVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Bing's Dodging Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6838, 1, 4)
end
function ItemUse_BingVoucha(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Bing's Dodging Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6838, 1, 102)
end
function ItemUse_BingVouchb(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Bing's Dodging Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6838, 1, 103)
end
function ItemUse_BingVouchc(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Bing's Dodging Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6838, 1, 104)
end
function ItemUse_BingVouchd(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Bing's Dodging Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6838, 1, 105)
end
function ItemUse_BingVouche(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Bing's Dodging Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6838, 1, 106)
end
function ItemUse_BingVouchf(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Bing's Dodging Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6838, 1, 107)
end
function ItemUse_BingVouchg(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Bing's Dodging Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6838, 1, 108)
end
function ItemUse_BingVouchh(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Bing's Dodging Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6838, 1, 109)
end
--End of Bings Dodging
--Starts of Feng's Defense
function ItemUse_FengVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Feng's Defense Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6839, 1, 4)
end
function ItemUse_FengVoucha(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Feng's Defense Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6839, 1, 102)
end
function ItemUse_FengVouchb(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Feng's Defense Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6839, 1, 103)
end
function ItemUse_FengVouchc(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Feng's Defense Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6839, 1, 104)
end
function ItemUse_FengVouchd(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Feng's Defense Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6839, 1, 105)
end
function ItemUse_FengVouche(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Feng's Defense Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6839, 1, 106)
end
function ItemUse_FengVouchf(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Feng's Defense Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6839, 1, 107)
end
function ItemUse_FengVouchg(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Feng's Defense Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6839, 1, 108)
end
function ItemUse_FengVouchh(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Feng's Defense Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6839, 1, 109)
end
--End of Feng's Defense
--Start of Shark's Strengthening
function ItemUse_SharkVouch(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Shark's Strengthening Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6840, 1, 4)
end
function ItemUse_SharkVoucha(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Shark's Strengthening Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6840, 1, 102)
end
function ItemUse_SharkVouchb(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Shark's Strengthening Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6840, 1, 103)
end
function ItemUse_SharkVouchc(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Shark's Strengthening Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6840, 1, 104)
end
function ItemUse_SharkVouchd(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Shark's Strengthening Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6840, 1, 105)
end
function ItemUse_SharkVouche(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Shark's Strengthening Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6840, 1, 106)
end
function ItemUse_SharkVouchf(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Shark's Strengthening Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6840, 1, 107)
end
function ItemUse_SharkVouchg(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Shark's Strengthening Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6840, 1, 108)
end
function ItemUse_SharkVouchh(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Shark's Strengthening Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 6840, 1, 109)
end
-- Starts of Refining Gem and voucher
function ItemUse_RefxGem(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
   local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9821,  -- Replace with actual ID for level 1 voucher
        [2] = 9822,  -- Replace with actual ID for level 2 voucher
        [3] = 9823,  -- Replace with actual ID for level 3 voucher
        [4] = 9824,  -- Replace with actual ID for level 4 voucher
        [5] = 9825,  -- Replace with actual ID for level 5 voucher
        [6] = 9826,  -- Replace with actual ID for level 6 voucher
        [7] = 9827,  -- Replace with actual ID for level 7 voucher
        [8] = 9828,  -- Replace with actual ID for level 8 voucher
        [9] = 9829   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end

function ItemUse_RefxGema(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Refining Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0885, 1, 4)
end
function ItemUse_RefxGemb(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Refining Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0885, 1, 102)
end
function ItemUse_RefxGemc(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Refining Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0885, 1, 103)
end
function ItemUse_RefxGemd(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Refining Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0885, 1, 104)
end
function ItemUse_RefxGeme(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Refining Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0885, 1, 105)
end
function ItemUse_RefxGemf(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Refining Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0885, 1, 106)
end
function ItemUse_RefxGemg(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Refining Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0885, 1, 107)
end
function ItemUse_RefxGemh(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Refining Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0885, 1, 108)
end
function ItemUse_RefxGemi(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Refining Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 0885, 1, 109)
end
---- Start of Azrael's Gems
-- Start of Azrael Glare voucher
function ItemUse_AzzGlr(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
   local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9830,  -- Replace with actual ID for level 1 voucher
        [2] = 9831,  -- Replace with actual ID for level 2 voucher
        [3] = 9832,  -- Replace with actual ID for level 3 voucher
        [4] = 9833,  -- Replace with actual ID for level 4 voucher
        [5] = 9834,  -- Replace with actual ID for level 5 voucher
        [6] = 9835,  -- Replace with actual ID for level 6 voucher
        [7] = 9836,  -- Replace with actual ID for level 7 voucher
        [8] = 9837,  -- Replace with actual ID for level 8 voucher
        [9] = 9838   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
function ItemUse_AzzGlra(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael Glare Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5845, 1, 4)
end
function ItemUse_AzzGlrb(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael Glare Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5845, 1, 102)
end
function ItemUse_AzzGlrc(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael Glare Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5845, 1, 103)
end
function ItemUse_AzzGlrd(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael Glare Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5845, 1, 104)
end
function ItemUse_AzzGlre(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael Glare Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5845, 1, 105)
end
function ItemUse_AzzGlrf(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael Glare GemVoucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5845, 1, 106)
end
function ItemUse_AzzGlrg(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael Glare Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5845, 1, 107)
end
function ItemUse_AzzGlrh(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael Glare Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5845, 1, 108)
end
function ItemUse_AzzGlri(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael Glare Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5845, 1, 109)
end
-- End of Azrael Glare voucher
-- Start of Undead Azrael
function ItemUse_AzzUnd(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
   local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9839,  -- Replace with actual ID for level 1 voucher
        [2] = 9840,  -- Replace with actual ID for level 2 voucher
        [3] = 9841,  -- Replace with actual ID for level 3 voucher
        [4] = 9842,  -- Replace with actual ID for level 4 voucher
        [5] = 9843,  -- Replace with actual ID for level 5 voucher
        [6] = 9844,  -- Replace with actual ID for level 6 voucher
        [7] = 9845,  -- Replace with actual ID for level 7 voucher
        [8] = 9846,  -- Replace with actual ID for level 8 voucher
        [9] = 9847   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
function ItemUse_AzzUnda(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Undead Azrael Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5846, 1, 4)
end
function ItemUse_AzzUndb(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Undead Azrael Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5846, 1, 102)
end
function ItemUse_AzzUndc(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Undead Azrael Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5846, 1, 103)
end
function ItemUse_AzzUndd(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Undead Azrael Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5846, 1, 104)
end
function ItemUse_AzzUnde(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Undead Azrael Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5846, 1, 105)
end
function ItemUse_AzzUndf(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Undead Azrael GemVoucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5846, 1, 106)
end
function ItemUse_AzzUndg(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Undead Azrael Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5846, 1, 107)
end
function ItemUse_AzzUndh(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Undead Azrael Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5846, 1, 108)
end
function ItemUse_AzzUndi(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Undead Azrael Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5846, 1, 109)
end
-- Start of Azrael's Light
function ItemUse_AzzLigh(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
   local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9848,  -- Replace with actual ID for level 1 voucher
        [2] = 9849,  -- Replace with actual ID for level 2 voucher
        [3] = 9850,  -- Replace with actual ID for level 3 voucher
        [4] = 9851,  -- Replace with actual ID for level 4 voucher
        [5] = 9852,  -- Replace with actual ID for level 5 voucher
        [6] = 9853,  -- Replace with actual ID for level 6 voucher
        [7] = 9854,  -- Replace with actual ID for level 7 voucher
        [8] = 9855,  -- Replace with actual ID for level 8 voucher
        [9] = 9856   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
function ItemUse_AzzLigha(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael Light Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5847, 1, 4)
end
function ItemUse_AzzLighb(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael Light Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5847, 1, 102)
end
function ItemUse_AzzLighc(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael Light Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5847, 1, 103)
end
function ItemUse_AzzLighd(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael Light Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5847, 1, 104)
end
function ItemUse_AzzLighe(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael Light Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5847, 1, 105)
end
function ItemUse_AzzLighf(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael Light Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5847, 1, 106)
end
function ItemUse_AzzLighg(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael Light Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5847, 1, 107)
end
function ItemUse_AzzLighh(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael Light Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5847, 1, 108)
end
function ItemUse_AzzLighi(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael Light Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5847, 1, 109)
end
--Start of Azrael's Agg
function ItemUse_AzzAgg(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
   local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9857,  -- Replace with actual ID for level 1 voucher
        [2] = 9858,  -- Replace with actual ID for level 2 voucher
        [3] = 9859,  -- Replace with actual ID for level 3 voucher
        [4] = 9860,  -- Replace with actual ID for level 4 voucher
        [5] = 9861,  -- Replace with actual ID for level 5 voucher
        [6] = 9862,  -- Replace with actual ID for level 6 voucher
        [7] = 9863,  -- Replace with actual ID for level 7 voucher
        [8] = 9864,  -- Replace with actual ID for level 8 voucher
        [9] = 9865   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
function ItemUse_AzzAgga(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael's Aggregation Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5848, 1, 4)
end
function ItemUse_AzzAggb(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael's Aggregation Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5848, 1, 102)
end
function ItemUse_AzzAggc(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael's Aggregation Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5848, 1, 103)
end
function ItemUse_AzzAggd(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael's Aggregation Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5848, 1, 104)
end
function ItemUse_AzzAgge(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael's Aggregation Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5848, 1, 105)
end
function ItemUse_AzzAggf(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael's Aggregation Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5848, 1, 106)
end
function ItemUse_AzzAggg(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael's Aggregation Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5848, 1, 107)
end
function ItemUse_AzzAggh(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael's Aggregation Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5848, 1, 108)
end
function ItemUse_AzzAggi(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael's Aggregation Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5848, 1, 109)
end
--Start of Azrael's Dance
function ItemUse_AzzDan(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
   local GemLv = Get_StoneLv(Item)
    
    -- Define a table mapping gem levels to voucher IDs
    local voucherMapping = {
        [1] = 9866,  -- Replace with actual ID for level 1 voucher
        [2] = 9867,  -- Replace with actual ID for level 2 voucher
        [3] = 9868,  -- Replace with actual ID for level 3 voucher
        [4] = 9869,  -- Replace with actual ID for level 4 voucher
        [5] = 9870,  -- Replace with actual ID for level 5 voucher
        [6] = 9871,  -- Replace with actual ID for level 6 voucher
        [7] = 9872,  -- Replace with actual ID for level 7 voucher
        [8] = 9873,  -- Replace with actual ID for level 8 voucher
        [9] = 9874   -- Replace with actual ID for level 9 voucher
    }
    
    -- Check if GemLv is between 1 and 9
    if GemLv < 1 or GemLv > 9 then
        SystemNotice(role, "Cannot use the voucher. Gem level must be between 1 and 9.")
        UseItemFailed(role)
        return
    end
    
    -- Check if there's enough inventory space
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to Convert")
        UseItemFailed(role)
        return
    end
    
    -- Get the voucher ID based on GemLv
    local voucherID = voucherMapping[GemLv]
    
    -- Give the appropriate voucher based on GemLv
    GiveItem(role, 0, voucherID, 1, 4)
end
function ItemUse_AzzDana(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael's Dance Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5849, 1, 4)
end
function ItemUse_AzzDanb(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael's Dance Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5849, 1, 102)
end
function ItemUse_AzzDanc(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael's Dance Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5849, 1, 103)
end
function ItemUse_AzzDand(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael's Dance Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5849, 1, 104)
end
function ItemUse_AzzDane(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael's Dance Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5849, 1, 105)
end
function ItemUse_AzzDanf(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael's Dance Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5849, 1, 106)
end
function ItemUse_AzzDang(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael's Dance Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5849, 1, 107)
end
function ItemUse_AzzDanh(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael's Dance Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5849, 1, 108)
end
function ItemUse_AzzDani(role, Item)
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
	-- local ItemID = GetItemID(Item)
    -- local PlayerID = GetCharID(role)
    -- local cooldownDuration = 4  -- Cooldown duration in seconds
	-- if ItemCooldown == nil then
        -- ItemCooldown = {}
    -- end
    -- if ItemCooldown[PlayerID] == nil then
        -- ItemCooldown[PlayerID] = {}
    -- end
	 -- if ItemCooldown[PlayerID][ItemID] ~= nil then
        -- local cooldownEndTime = ItemCooldown[PlayerID][ItemID]
        -- local remainingCooldown = cooldownEndTime - os.time()
        -- if remainingCooldown > 0 then
            -- BickerNotice(role, string.format("Item:[%s] in cooldown mode, remaining time is %d sec(s)", GetItemName(GetItemID(Item)), remainingCooldown))
            -- UseItemFailed(role)
            -- return
        -- end
    -- end

    -- -- Set the cooldown for this item
    -- ItemCooldown[PlayerID][ItemID] = os.time() + cooldownDuration
    local Item_CanGet = GetChaFreeBagGridNum(role)
    if Item_CanGet <= 0 then
        SystemNotice(role, "Insufficient slot in inventory. Failed to use Azrael's Dance Gem Voucher")
        UseItemFailed(role)
        return
    end
    GiveItem(role, 0, 5849, 1, 109)
end