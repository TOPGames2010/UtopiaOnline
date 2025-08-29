---------------
-- Variables --
---------------
DoneQuests = DoneQuests or {}
CLEAR_QUEST_INTERVAL = 86400 -- 24 hours
local QuestSavePath = GetResPath("../PlayerData/DailyQuest/DailyQuests.txt")
-- local QuestSavePath = GetResPath("..\\lua\\Quests\\PlayerQuests\\DailyQuests.txt")
---------------
-- Functions --
---------------
-- local function file_exists(name)
-- local file = io.open(name, "r")
-- if file then
-- io.close(file)
-- return true
-- end
-- return false
-- end

local function LoadDoneQuests()
    if not file_exists(QuestSavePath) then
        table.save(DoneQuests, QuestSavePath, "w")
        return
    end
    DoneQuests = table.load(QuestSavePath, "r")
    -- for ChaName, Data in pairs(DoneQuests) do
    -- for QuestID, Value in pairs(Data) do
    -- print(ChaName .. " " .. QuestID .. " " .. tostring(Value))
    -- end
    -- end
end

local function SaveDailyQuests()
    if not file_exists(QuestSavePath) then
        return LUA_FALSE
    end
    table.save(DoneQuests, QuestSavePath, "w")
    return LUA_TRUE
end
-- timer reset on 12am server time 
function RestDailyQuest()
    DoneQuests = {}
    table.save({}, QuestSavePath)
end
function SavePlayerQuest(Player, QuestID)
    if not file_exists(QuestSavePath) then
        return LUA_FALSE
    end
    -- local ChaName = GetChaDefaultName(Player)
    local PlayerID = GetPlayerID(GetChaPlayer(Player))
    local PlayerMac = GetPlayerMac(Player)
    local PlayerIP = GetPlayerIP(Player)
    if not DoneQuests[PlayerID] then
        DoneQuests[PlayerID] = {}
    end
    if not DoneQuests[PlayerMac] then
        DoneQuests[PlayerMac] = {}
    end
    if not DoneQuests[PlayerIP] then
        DoneQuests[PlayerIP] = {}
    end
    local DoneTime = os.time()
    DoneQuests[PlayerID][QuestID] = DoneTime
    DoneQuests[PlayerMac][QuestID] = DoneTime
    DoneQuests[PlayerIP][QuestID] = DoneTime
    return SaveDailyQuests()
end

function NoDailyQuest(Player, ID)
    -- local ChaName = GetChaDefaultName(Player)
    local PlayerID = GetPlayerID(GetChaPlayer(Player))
    local PlayerMac = GetPlayerMac(Player)
    local PlayerIP = GetPlayerIP(Player)
    if not DoneQuests[PlayerID] then
        DoneQuests[PlayerID] = {}
    end
    if not DoneQuests[PlayerMac] then
        DoneQuests[PlayerMac] = {}
    end
    if not DoneQuests[PlayerIP] then
        DoneQuests[PlayerIP] = {}
    end
    -- local timestamp = DoneQuests[PlayerID][ID]
    local CurrentTime = os.time()
    if DoneQuests[PlayerID][ID] and CurrentTime < DoneQuests[PlayerID][ID] + CLEAR_QUEST_INTERVAL then
        return LUA_FALSE
    end
    if DoneQuests[PlayerMac][ID] and CurrentTime < DoneQuests[PlayerMac][ID] + CLEAR_QUEST_INTERVAL then
        return LUA_FALSE
    end
    if DoneQuests[PlayerIP][ID] and CurrentTime < DoneQuests[PlayerIP][ID] + CLEAR_QUEST_INTERVAL then
        return LUA_FALSE
    end
    return LUA_TRUE
end

local function InitializeQuests()
    LoadDoneQuests()
    for _, Quest in ipairs(Quests) do
        DefineMission(Quest.NpcID, Quest.Name, Quest.MissionID)
        -- define quest type if its marked 
        -- if Quest.MissionSignIcon then
        -- if  Quest.MissionSignIcon == Questimportant then
        -- MisSetImportant(1)
        -- elseif  Quest.MissionSignIcon == QuestEvent then
        -- MisSetEvent(1)
        -- elseif  Quest.MissionSignIcon == QuestDaily then
        -- MisSetJobQuest(1)			--have to rename in lua part for be daily instead of job ?
        -- end
        -- end
        ---

        MisBeginTalk(Quest.InitDialog)
        for ConditionType, Condition in pairs(Quest.BeginConditions) do
            if type(Condition) == "table" then
                for _, ConditionValue in ipairs(Condition) do
                    MisBeginCondition(_G[ConditionType], ConditionValue)
                end
            else
                if ConditionType == "LvCheck_HigherThan" then
                    MisBeginCondition(LvCheck, ">", Condition)
                elseif ConditionType == "LvCheck_LowerThan" then
                    MisBeginCondition(LvCheck, "<", Condition)
                else
                    MisBeginCondition(_G[ConditionType], Condition)
                end
            end
        end
        MisBeginAction(AddMission, Quest.MissionID)
        MisCancelAction(ClearMission, Quest.MissionID)
        MisHelpTalk(Quest.HelpDialog)
        if Quest.Daily then
            MisBeginCondition(NoDailyQuest, Quest.MissionID)
        end
        if Quest.Need then
            local Items = Quest.Need.Items
            local TriggerCount = 0
            local FlagCount = 0
            if Items and #Items > 0 then
                for _, Item in ipairs(Items) do
                    TriggerCount = TriggerCount + 1
                    FlagCount = FlagCount + 10
                    local TriggerID = tonumber(Quest.MissionID .. "" .. TriggerCount)
                    MisBeginAction(AddTrigger, TriggerID, TE_GETITEM, Item.ID, Item.Qty)
                    MisNeed(MIS_NEED_ITEM, Item.ID, Item.Qty, FlagCount, Item.Qty)
                    MisResultCondition(HasItem, Item.ID, Item.Qty)
                    MisResultAction(TakeItem, Item.ID, Item.Qty)
                    InitTrigger()
                    TriggerCondition(1, IsItem, Item.ID)
                    TriggerAction(1, AddNextFlag, Quest.MissionID, FlagCount, Item.Qty)
                    RegCurTrigger(TriggerID)
                end
            end
            local Kills = Quest.Need.Kills
            if Kills and #Kills > 0 then
                for _, Kill in ipairs(Kills) do
                    TriggerCount = TriggerCount + 1
                    FlagCount = FlagCount + 10
                    local TriggerID = tonumber(Quest.MissionID .. "" .. TriggerCount)
                    MisBeginAction(AddTrigger, TriggerID, TE_KILL, Kill.ID, Kill.Qty)
                    MisNeed(MIS_NEED_KILL, Kill.ID, Kill.Qty, FlagCount, Kill.Qty)
                    MisResultCondition(HasFlag, Quest.MissionID, FlagCount + Kill.Qty - 1)
                    InitTrigger()
                    TriggerCondition(1, IsMonster, Kill.ID)
                    TriggerAction(1, AddNextFlag, Quest.MissionID, FlagCount, Kill.Qty)
                    RegCurTrigger(TriggerID)
                end
            end
        end
        if Quest.Rewards then
            local Items = Quest.Rewards.Items
            if Items and #Items > 0 then
                local BagSpace = Quest.Rewards.BagSpace
                if BagSpace and BagSpace > 0 then
                    MisResultBagNeed(BagSpace)
                end
                for _, Item in ipairs(Items) do
                    MisPrize(MIS_PRIZE_ITEM, Item.ID, Item.Qty, Item.Quality)
                end
            end
            local Money = Quest.Rewards.Money
            if Money and Money > 0 then
                MisPrize(MIS_PRIZE_MONEY, Money, 1)
            end
            if Quest.GiveSelectedReward then
                MisPrizeSelOne()
            else
                MisPrizeSelAll()
            end
        end
        MisResultTalk(Quest.ResultDialog)
        MisResultCondition(HasMission, Quest.MissionID)
        MisResultAction(ClearMission, Quest.MissionID)
        MisResultAction(SetRecord, Quest.MissionID)
        -- end rsult conditions 
        if Quest.ResultCondition then
            for ConditionType, Condition in pairs(Quest.ResultCondition) do
                if type(Condition) == "table" then
                    for _, ConditionValue in ipairs(Condition) do
                        MisResultCondition(_G[ConditionType], ConditionValue)
                    end
                else
                    if ConditionType == "LvCheck_HigherThan" then
                        MisResultCondition(LvCheck, ">", Condition)
                    elseif ConditionType == "LvCheck_LowerThan" then
                        MisResultCondition(LvCheck, "<", Condition)
                    elseif ConditionType == "HasFairy" then
                        MisResultCondition(HasFairyActive, Condition)
                    else
                        MisResultCondition(_G[ConditionType], Condition)
                    end
                end
            end
        end
        ---misssion action
        if Quest.ResultAction then
            for ConditionType, Condition in pairs(Quest.ResultAction) do
                if type(Condition) == "table" then
                    if ConditionType == "GiveFairyExp" then
                        if Condition and #Condition >= 2 then
                            MisResultAction(Give_ElfEXP, Condition[1], Condition[2])
                        end
                    else
                        for _, ConditionValue in ipairs(Condition) do
                            MisResultAction(_G[ConditionType], ConditionValue)
                        end
                    end

                else
                    if ConditionType == "RemoveMission" then
                        MisResultAction(ClearMission, Condition)
                    elseif ConditionType == "GiveRecord" then
                        MisResultAction(SetRecord, Condition)
                    elseif ConditionType == "GiveFairyExp" then
                        if Condition and #Condition >= 2 then
                            MisResultAction(Give_ElfEXP, Condition[1])
                        end

                    else
                        MisResultAction(_G[ConditionType], Condition)
                    end
                end
            end
        end
        ------

        if Quest.Daily then
            MisResultAction(SavePlayerQuest, Quest.MissionID)
        end
    end
end

-----------------------------
-- Resource Initialization --
-----------------------------

InitializeQuests()
