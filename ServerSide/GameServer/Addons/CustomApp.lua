print("-- [Loading] System SDK")
--Start of Custom App Chest
--Normal Mall Custom
function CustomDarkAc(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 12004, 1, 0)
    GiveItem(cha, 0, 12005, 1, 0)
    GiveItem(cha, 0, 12006, 1, 0)
	GiveItem(cha, 0, 12007, 1, 0)
end
--Champ
function CustomChampx(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 12008, 1, 0)
    GiveItem(cha, 0, 12009, 1, 0)
    GiveItem(cha, 0, 12010, 1, 0)
	GiveItem(cha, 0, 12011, 1, 0)
end
--end
function CustomRoyalF(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 12024, 1, 0)
    GiveItem(cha, 0, 12025, 1, 0)
    GiveItem(cha, 0, 12026, 1, 0)
	GiveItem(cha, 0, 12027, 1, 0)
end

function CustomWhiteF(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 12032, 1, 0)
    GiveItem(cha, 0, 12033, 1, 0)
    GiveItem(cha, 0, 12034, 1, 0)
	GiveItem(cha, 0, 12035, 1, 0)
end

function CustomWaterG(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 12036, 1, 0)
    GiveItem(cha, 0, 12037, 1, 0)
    GiveItem(cha, 0, 12038, 1, 0)
	GiveItem(cha, 0, 12039, 1, 0)
end

function CustomStellar(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 12028, 1, 0)
    GiveItem(cha, 0, 12029, 1, 0)
    GiveItem(cha, 0, 12030, 1, 0)
	GiveItem(cha, 0, 12031, 1, 0)
end

function CustomOktober(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 12044, 1, 0)
    GiveItem(cha, 0, 12045, 1, 0)
    GiveItem(cha, 0, 12046, 1, 0)
	GiveItem(cha, 0, 12047, 1, 0)
end

function CustomPurpleK(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 12048, 1, 0)
    GiveItem(cha, 0, 12049, 1, 0)
    GiveItem(cha, 0, 12050, 1, 0)
	GiveItem(cha, 0, 12051, 1, 0)
end

function CustomPolice(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 12060, 1, 0)
    GiveItem(cha, 0, 12061, 1, 0)
    GiveItem(cha, 0, 12062, 1, 0)
	GiveItem(cha, 0, 12063, 1, 0)
end

function CustomMonokuma(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 20010, 1, 0)
    GiveItem(cha, 0, 20011, 1, 0)
    GiveItem(cha, 0, 20012, 1, 0)
	GiveItem(cha, 0, 20013, 1, 0)
end

function CustomWaterDG(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 20014, 1, 0)
    GiveItem(cha, 0, 20015, 1, 0)
    GiveItem(cha, 0, 20016, 1, 0)
	GiveItem(cha, 0, 20017, 1, 0)
end

function CustomBunnyE(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 20018, 1, 0)
    GiveItem(cha, 0, 20019, 1, 0)
    GiveItem(cha, 0, 20020, 1, 0)
	GiveItem(cha, 0, 20021, 1, 0)
end

function CustomKnightWH(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 20053, 1, 0)
    GiveItem(cha, 0, 20054, 1, 0)
    GiveItem(cha, 0, 20055, 1, 0)
	GiveItem(cha, 0, 20056, 1, 0)
end

function CustomKnightRD(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 20057, 1, 0)
    GiveItem(cha, 0, 20058, 1, 0)
    GiveItem(cha, 0, 20059, 1, 0)
	GiveItem(cha, 0, 20060, 1, 0)
end

function CustomKnightDKH(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 20061, 1, 0)
    GiveItem(cha, 0, 20062, 1, 0)
    GiveItem(cha, 0, 20063, 1, 0)
	GiveItem(cha, 0, 20064, 1, 0)
end

function CustomKnightDGX(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 20065, 1, 0)
    GiveItem(cha, 0, 20066, 1, 0)
    GiveItem(cha, 0, 20067, 1, 0)
	GiveItem(cha, 0, 20068, 1, 0)
end

function CustomKnightHkH(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 20069, 1, 0)
    GiveItem(cha, 0, 20070, 1, 0)
    GiveItem(cha, 0, 20071, 1, 0)
	GiveItem(cha, 0, 20072, 1, 0)
end

function CustomSamuraiE(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 20097, 1, 0)
    GiveItem(cha, 0, 20098, 1, 0)
    GiveItem(cha, 0, 20099, 1, 0)
	GiveItem(cha, 0, 20100, 1, 0)
end

function CustomHadesx(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 20034, 1, 0)
    GiveItem(cha, 0, 20035, 1, 0)
    GiveItem(cha, 0, 20036, 1, 0)
	GiveItem(cha, 0, 20037, 1, 0)
end
--Custom VIP Mall
function CustomFrostyD(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 12020, 1, 0)
    GiveItem(cha, 0, 12021, 1, 0)
    GiveItem(cha, 0, 12022, 1, 0)
	GiveItem(cha, 0, 12023, 1, 0)
end

function CustomTokyoG(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0, 12064, 1, 0)
    GiveItem(cha, 0, 12065, 1, 0)
    GiveItem(cha, 0, 12066, 1, 0)
	GiveItem(cha, 0, 12067, 1, 0)
end
--Phyllis
function CustomPhantomEf(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0,12084, 1, 0)
    GiveItem(cha, 0,12085, 1, 0)
    GiveItem(cha, 0,12086, 1, 0)
	GiveItem(cha, 0,12087, 1, 0)
end
--end
function CustomFrameST(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0,20022, 1, 0)
    GiveItem(cha, 0,20023, 1, 0)
    GiveItem(cha, 0,20024, 1, 0)
	GiveItem(cha, 0,20025, 1, 0)
end

function CustomFunnyCT(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0,20026, 1, 0)
    GiveItem(cha, 0,20027, 1, 0)
    GiveItem(cha, 0,20028, 1, 0)
	GiveItem(cha, 0,20029, 1, 0)
end

function CustomGreenDR(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0,20030, 1, 0)
    GiveItem(cha, 0,20031, 1, 0)
    GiveItem(cha, 0,20032, 1, 0)
	GiveItem(cha, 0,20033, 1, 0)
end

function CustomScareSC(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0,20045, 1, 0)
    GiveItem(cha, 0,20046, 1, 0)
    GiveItem(cha, 0,20047, 1, 0)
	GiveItem(cha, 0,20048, 1, 0)
end

function CustomPotterH(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0,20049, 1, 0)
    GiveItem(cha, 0,20050, 1, 0)
    GiveItem(cha, 0,20051, 1, 0)
	GiveItem(cha, 0,20052, 1, 0)
end

function CustomLoLG(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0,20073, 1, 0)
    GiveItem(cha, 0,20074, 1, 0)
    GiveItem(cha, 0,20075, 1, 0)
	GiveItem(cha, 0,20076, 1, 0)
end

function CustomLoLGx(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0,20077, 1, 0)
    GiveItem(cha, 0,20078, 1, 0)
    GiveItem(cha, 0,20079, 1, 0)
	GiveItem(cha, 0,20080, 1, 0)
end

function CustomHawnEyeB(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0,20081, 1, 0)
    GiveItem(cha, 0,20082, 1, 0)
    GiveItem(cha, 0,20083, 1, 0)
	GiveItem(cha, 0,20084, 1, 0)
end

function CustomClownA(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0,20101, 1, 0)
    GiveItem(cha, 0,20102, 1, 0)
    GiveItem(cha, 0,20103, 1, 0)
	GiveItem(cha, 0,20104, 1, 0)
end

function CustomEasterB(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0,20105, 1, 0)
    GiveItem(cha, 0,20106, 1, 0)
    GiveItem(cha, 0,20107, 1, 0)
	GiveItem(cha, 0,20108, 1, 0)
end

function CustomKaynH(role, Item)
    local cha = TurnToCha(role)
    local cha_type = GetChaTypeID(cha)

    local Item_CanGet = GetChaFreeBagGridNum(cha)

    if Item_CanGet <= 4 then
        SystemNotice(role, "Requires 5 slots in inventory to open Custom Apparel Chest")
        UseItemFailed(role)
        return
    end
 
    GiveItem(cha, 0,20117, 1, 0)
    GiveItem(cha, 0,20118, 1, 0)
    GiveItem(cha, 0,20119, 1, 0)
	GiveItem(cha, 0,20120, 1, 0)
end