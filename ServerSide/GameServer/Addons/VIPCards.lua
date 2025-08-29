-- vip card system @mothannakh
-- setup items variable 
local VIPCards = {
    -- item id and the days to activate vip
    [9954] = 30, -- one month
    [9955] = 14, -- 14 days
    [9953] = 7 -- 7 days
}
-- if we want to boost vips like adding buff for x days , vip effect
-- convert days to seconds in lua
function days_to_seconds(days)
    return days * 24 * 60 * 60
end
function ToClockFormat(time)
    local Days = math.floor(time / 86400)
    local Hours = math.floor((time - math.floor(time / 86400) * 86400) / 3600)
    local Minutes = math.floor((time - math.floor(time / 3600) * 3600) / 60)
    local Seconds = math.floor(time - math.floor(time / 60) * 60)
    local Str = string.format('%02d:%02d', Minutes, Seconds)
    if Hours > 0 then
        Str = string.format('%02d:', Hours) .. Str
    end
    if Days > 0 then
        Str = string.format('%02d:', Days) .. Str
    end
    return Str
end
-- use this in chat handler / getviptime or what ever 
function GetRemainVipDats(Player)
    if GetPlayerVIp(Player) then
        local days = GetPlayerNitroTimeS(Player) - os.time()
        PopupNotice(Player, "Your VIP Subscription has remaining " .. ToClockFormat(days) .. " Day(s)")
    else
        PopupNotice(Player, "Only VIP Members can use this command.")
    end
end
function VipBuffMe(Player)
    -- Check if the player is VIP
    if GetPlayerVIp(Player) then
        -- Apply buffs to the player
        vipBoost(Player)
        RefreshCha(Player)
        -- Notify the player
        BickerNotice(Player, 'VIP Buff Activated!')
    else
        -- Notify non-VIP player
        BickerNotice(Player, 'This command is available only for VIP players.')
    end
end

-- add all buff states 
function AllVIPBuffs(role, seconds)
    if not seconds then
        seconds = 900
    end
    for i, v in pairs({STATE_SHPF, STATE_XLZH, STATE_TSHD, STATE_FZLZ, STATE_MLCH, STATE_JSFB}) do
        AddState(role, role, v, 10, seconds)
    end
end

function vipBoost(Player, seconds)
    -- add buffs for x seconds
    AllVIPBuffs(Player, seconds)
end
-- function to remove vip buff if player not vip anymore 
function RemoveVipBuffs(role)
    for _, v in pairs({STATE_SHPF, STATE_XLZH, STATE_TSHD, STATE_FZLZ, STATE_MLCH, STATE_JSFB}) do
        RemoveState(role, v)
    end
end
--	SetPlayerVIp(role,1)
--	GetPlayerVIp(role)
-- GetPlayerNitroTimeS(role)
function Use_VIPMembershipCard(Player, Item)

    local ItemID = GetItemID(Item)
    local ItemName = GetItemName(ItemID)
    local PlayerName = GetChaDefaultName(Player)
    if not VIPCards[ItemID] then
        SystemNotice(Player, "Cannot open [" .. ItemName .. "], it has no effect.")
        UseItemFailed(Player)
        return
    end
    if GetPlayerVIp(Player) then
        local days = GetPlayerNitroTimeS(Player) - os.time()
        PopupNotice(Player, "You're Already vip for " .. ToClockFormat(days) .. " Day(s)")
        UseItemFailed(Player)
        return
    end
    local days = VIPCards[ItemID]
    SetPlayerVIp(Player, days)
    vipBoost(Player)
    local date = os.date("%Y-%m-%d:%H:%M:%S", GetPlayerNitroTimeS(Player))
    local textstring = string.format(
        "You just used:[%s] and gained drop boost x1.5 and a VIP member for [%s] days with full buff boost  and  VIP states until: %s",
        ItemName, VIPCards[ItemID], date)
    HelpInfoX(Player, 0, textstring)

    LG("VIP System", " Player:[" .. PlayerName .. "], Used:[" .. ItemName .. "]")
end

function ItemUse_FirstVip(role, Item)
    if KitbagLock(role, 0) == LUA_FALSE then
        PopupNotice(role, "Inventory is locked.")
        return
    end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
    if GetCtrlBoat(role) ~= nil then
        SystemNotice(role, "Cannot use while sailing!")
        UseItemFailed(role)
        return
    end
    local HasItem = CheckBagItem(role, 9986)

    if (HasItem >= 1) then

        local Cha_Boat = GetCtrlBoat(role)
        if Cha_Boat ~= nil then

            SystemNotice(role, "Cannot use while sailing")
            UseItemFailed(role)
            return
        end
        local Item_CanGet = GetChaFreeBagGridNum(role)
        if Item_CanGet < 6 then
            SystemNotice(role, "Unable to use item, at least need 6 empty inventory slots are needed.")
            UseItemFailed(role)
            return
        end
        GiveItem(role, 0, 9953, 1, 4) -- 3 Days VIP Membership
        GiveItem(role, 0, 11017, 1, 4) -- Effect
        GiveItem(role, 0, 9957, 1, 4) -- Custom Apparel Card 
        GiveItem(role, 0, 9990, 1, 4) -- Exclusive Pack A (VIP)
        GiveItem(role, 0, 20001, 1, 4) -- Golden Eagle Wings
        SystemNotice(role, "Thank you for support server, You have Successfully opened Vip Chest!")
        LG('VIP_Chest', '[' .. GetChaDefaultName(role) .. '] Opened 3 Days Membership Chest')
        return
    else
        UseItemFailed(role)
    end
end

function ItemUse_SecondVip(role, Item)
    if KitbagLock(role, 0) == LUA_FALSE then
        PopupNotice(role, "Inventory is locked.")
        return
    end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
    if GetCtrlBoat(role) ~= nil then
        SystemNotice(role, "Cannot use while sailing!")
        UseItemFailed(role)
        return
    end
    local HasItem = CheckBagItem(role, 9988)

    if (HasItem >= 1) then

        local Cha_Boat = GetCtrlBoat(role)
        if Cha_Boat ~= nil then

            SystemNotice(role, "Cannot use while sailing")
            UseItemFailed(role)
            return
        end
        local Item_CanGet = GetChaFreeBagGridNum(role)
        if Item_CanGet < 6 then
            SystemNotice(role, "Unable to use item, at least need 6 empty inventory slots are needed.")
            UseItemFailed(role)
            return
        end
        GiveItem(role, 0, 9955, 1, 4) -- 7 Days Membership
        GiveItem(role, 0, 11008, 1, 4) -- Effect
        GiveItem(role, 0, 9957, 1, 4) -- Custom Apparel Card 
        GiveItem(role, 0, 9991, 1, 4) -- Exclusive Pack B (VIP) 
        GiveItem(role, 0, 20003, 1, 4) -- Purple Devil Wings
        SystemNotice(role, "Thank you for support server, You have Successfully opened Vip Chest!")
        LG('VIP_Chest', '[' .. GetChaDefaultName(role) .. '] Opened 7 Days Membership Chest')
        return
    else
        UseItemFailed(role)
    end
end

function ItemUse_ThirdVip(role, Item)
    if KitbagLock(role, 0) == LUA_FALSE then
        PopupNotice(role, "Inventory is locked.")
        return
    end
    if IsChaStall(role) == LUA_TRUE then
        SystemNotice(role, "Cannot use while your stall is opened!")
        UseItemFailed(role)
        return
    end
    if GetCtrlBoat(role) ~= nil then
        SystemNotice(role, "Cannot use while sailing!")
        UseItemFailed(role)
        return
    end
    local HasItem = CheckBagItem(role, 9987)

    if (HasItem >= 1) then

        local Cha_Boat = GetCtrlBoat(role)
        if Cha_Boat ~= nil then

            SystemNotice(role, "Cannot use while sailing")
            UseItemFailed(role)
            return
        end
        local Item_CanGet = GetChaFreeBagGridNum(role)
        if Item_CanGet < 6 then
            SystemNotice(role, "Unable to use item, at least need 6 empty inventory slots are needed.")
            UseItemFailed(role)
            return
        end
        GiveItem(role, 0, 9954, 1, 4) -- 30 Days VIP Membership
        GiveItem(role, 0, 11000, 1, 4) -- Effect
        GiveItem(role, 0, 9957, 1, 4) -- Custom Apparel Card 
        GiveItem(role, 0, 9992, 1, 4) -- Exclusive Pack C (VIP)
        GiveItem(role, 0, 20005, 1, 4) -- Blue Dragon Wings
        SystemNotice(role, "Thank you for support server, You have Successfully opened Vip Chest!")
        LG('VIP_Chest', '[' .. GetChaDefaultName(role) .. '] Opened 30 Days Membership Chest')
        return
    else
        UseItemFailed(role)
    end
end

function ExclusivePckA(role, Item)

    local HasItem = CheckBagItem(role, 9990)

    if (HasItem >= 1) then

        local Cha_Boat = GetCtrlBoat(role)
        if Cha_Boat ~= nil then

            SystemNotice(role, "Cannot use while sailing")
            UseItemFailed(role)
            return
        end
        local Item_CanGet = GetChaFreeBagGridNum(role)
        if Item_CanGet < 5 then
            SystemNotice(role, "Unable to use item, at least need 6 empty inventory slots are needed.")
            UseItemFailed(role)
            return
        end
        GiveItem(role, 0, 6841, 40, 4) -- Great Fairy Ration
        GiveItem(role, 0, 6842, 40, 4) -- Great Auto Ration
        GiveItem(role, 0, 5322, 1, 4) -- Angela Junior Apparel
        GiveItem(role, 0, 10002, 1, 4) -- Lv62 Mjr Card
        GiveItem(role, 0, 7001, 1, 4) -- Honorary of King Helm

        SystemNotice(role, "Thank you for support server, You have Successfully opened Exclusive VIP Chest A!")
        LG('VIP_Chest', '[' .. GetChaDefaultName(role) .. '] Opened 3 Days Membership Chest')
        return
    else
        UseItemFailed(role)
    end
end

function ExclusivePckb(role, Item)

    local HasItem = CheckBagItem(role, 9991)

    if (HasItem >= 1) then

        local Cha_Boat = GetCtrlBoat(role)
        if Cha_Boat ~= nil then

            SystemNotice(role, "Cannot use while sailing")
            UseItemFailed(role)
            return
        end
        local Item_CanGet = GetChaFreeBagGridNum(role)
        if Item_CanGet < 7 then
            SystemNotice(role, "Unable to use item, at least need 8 empty inventory slots are needed.")
            UseItemFailed(role)
            return
        end
        GiveItem(role, 0, 6841, 60, 4) -- Great Fairy Ration
        GiveItem(role, 0, 6842, 60, 4) -- Great Auto Ration
        GiveItem(role, 0, 5319, 1, 4) -- August Pet 3 Apparel
        GiveItem(role, 0, 10002, 1, 4) -- Lv62 Mjr Card
        GiveItem(role, 0, 7001, 1, 4) -- Honorary of King Helm 0919
        GiveItem(role, 0, 0919, 1, 4) -- Change Name Card
        GiveItem(role, 0, 9624, 1, 4) -- Fairy of Darkness
        GiveItem(role, 0, 32323, 1, 4) -- Lv85 Ring Voucher
        SystemNotice(role, "Thank you for support server, You have Successfully opened Exclusive VIP Chest B!")
        LG('VIP_Chest', '[' .. GetChaDefaultName(role) .. '] Opened 7 Days Membership Chest')
        return
    else
        UseItemFailed(role)
    end
end

function ExclusivePckc(role, Item)

    local HasItem = CheckBagItem(role, 9992)

    if (HasItem >= 1) then

        local Cha_Boat = GetCtrlBoat(role)
        if Cha_Boat ~= nil then

            SystemNotice(role, "Cannot use while sailing")
            UseItemFailed(role)
            return
        end
        local Item_CanGet = GetChaFreeBagGridNum(role)
        if Item_CanGet < 7 then
            SystemNotice(role, "Unable to use item, at least need 8 empty inventory slots are needed.")
            UseItemFailed(role)
            return
        end
        GiveItem(role, 0, 6841, 99, 4) -- Great Fairy Ration
        GiveItem(role, 0, 6842, 99, 4) -- Great Auto Ration
        GiveItem(role, 0, 5323, 1, 4) -- Little Dragon Apparel
        GiveItem(role, 0, 10002, 1, 4) -- Lv62 Mjr Card
        GiveItem(role, 0, 7002, 1, 4) -- Arthurs of King Helm
        GiveItem(role, 0, 0919, 1, 4) -- Change Name Card
        GiveItem(role, 0, 9624, 1, 4) -- Fairy of Darkness
        GiveItem(role, 0, 32327, 1, 4) -- Iced Covered Card
        GiveItem(role, 0, 32323, 1, 4) -- Lv85 Ring Voucher
        SystemNotice(role, "Thank you for support server, You have Successfully opened Exclusive VIP Chest C!")
        LG('VIP_Chest', '[' .. GetChaDefaultName(role) .. '] Opened 30 Days Membership Chest')
        return
    else
        UseItemFailed(role)
    end
end
-----------------------------------VIP Teleport @mothannakh---------------------------------
VIPFastTeleportLocation = {} -- x,y-map location , Display name
VIPFastTeleportLocation[0] = {216, 356, "garner", "Argent City"} -- first index always main map 
VIPFastTeleportLocation[1] = {134,203, "mjing1", "1st Aurora Area"}
VIPFastTeleportLocation[2] = {133,200, "mjing2", "2nd Aurora Area"}
VIPFastTeleportLocation[3] = {279,357, "lobbycityafk", "Phoenix Lobby"}
VIPFastTeleportLocation[4] = {279,357, "lobbycityafk2", "Phoenix Lobby 2"}
VIPFastTeleportLocation[5] = {141, 684, "garner", "Argent City"}
VIPFastTeleportLocation[6] = {141, 684, "garner", "Argent City"}
VIPFastTeleportLocation[7] = {141, 684, "garner", "Argent City"}
VIPFastTeleportLocation[8] = {141, 684, "garner", "Argent City"}

function VIP_FastTravel(Player, place)
    if VIPFastTeleportLocation[place] == nil then
        return
    end
    GoTo(Player, VIPFastTeleportLocation[place][1], VIPFastTeleportLocation[place][2], VIPFastTeleportLocation[place][3])
    BickerNotice(Player, "<Teleporter> Fasttravel successfull!")
end
--this can be written for dynamic size current code placeholder only 
function InitVipNPc()
    TeleUltimate = extNpc:Create()
    local MainPage = TeleUltimate:AddPage("	Where would you like to go?")
    local SecondPage = TeleUltimate:AddPage("	Where would you like to go?")
    TeleUltimate:AddListItem(MainPage, "Fasttravel to City", {VIP_FastTravel, {"!role", 0, 1}})
    local cityname = "Argent"
    for i = 1, 6, 1 do
        if VIPFastTeleportLocation[i] then
            cityname = VIPFastTeleportLocation[i][4]
        end

        TeleUltimate:AddListItem(MainPage, "Fasttravel to " .. cityname, {VIP_FastTravel, {"!role", i}})
    end
    TeleUltimate:AddListItem(MainPage, "Next Page =>", {ExtNpc, {"!role", "JumpPage", SecondPage}})
    for i = 7, 8, 1 do
        if VIPFastTeleportLocation[i] then
            cityname = VIPFastTeleportLocation[i][4]
        end
        TeleUltimate:AddListItem(SecondPage, "Fasttravel to " .. cityname, {VIP_FastTravel, {"!role", i}})
    end
    TeleUltimate:AddListItem(SecondPage, "<= Previous Page", {ExtNpc, {"!role", "JumpPage", MainPage}})

end
InitVipNPc()

function TeleportButton(Player)
    if not GetPlayerVIp(Player) then
        PopupNotice(Player, "This Feature Available for vip/nitro players! buy your package first!")
        return
    end
    -- Open NPC Dialog
    createExtNpcSession(Player, TeleUltimate)
end
