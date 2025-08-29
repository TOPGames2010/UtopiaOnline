--[[
							*###########################################################################*
							#                  -Player Kill Player Handler by Eviles.-                  #
							#                        Discord: _eviles                                   #
							*###########################################################################*

    [TODO]:
        1. Voodoo Doll Puppet function;
]]
print('Loading pvp.lua')

PANEL_PLAYER_KILL_COUNT = {}
PANEL_PLAYER_DEATH_COUNT = {}
PANEL_LAST_PLAYER_KILLED = {}

PvP = {
    MapName = {},
    Message = {
        "< %s >: [%s] was defeated by [%s]!",
        "< %s >: [%s] was destroyed by [%s]!",
        "< %s >: [%s] was killed by [%s]!",
        "< %s >: [%s] was outraged by [%s]!",
        "Haha! Don't kill your guildmates, this is bad way to get Mighty Points!",
        "Was defeated by guild mate and no penalty.",
        "Defeats opponent and obtain: %d %s Point(s)!",
        "Was defeated by opponent and loses: %d %s Point(s)!",
        "Defeated low level opponent. No %s Point obtained..",
        "No %s points will be deducted when defeated by a higher level opponent.",
        "Defeated high level opponent. Obtained: %d additional %s Point(s)!",
        "Defeated by low level opponent. Lost: %d additional %s Point(s)!",
    },
}

---Function to increment extended attribute within database c++
---@param character userdata of player
---@param attr integer representing the attr
---@param amount integer to be updated
function AttributeAdd(character, attr, amount)
    local attrPoint = GetChaAttr(character, attr) + amount
	--SystemNotice(character,"Points Before:" ..GetChaAttr(character, attr) .. "/n Points After ".. attrPoint )
    AttributeSet(character, attr, attrPoint)
end

---Function to remove extended attribute within database c++
---@param character any of player
---@param attr integer representing the attr
---@param amount integer to be updated
function AttributeRem(character, attr, amount)
    local attrPoint = GetChaAttr(character, attr) - amount
    attrPoint = math.max(attrPoint, 0)
    AttributeSet(character, attr, attrPoint)
end

---Function to update extended attribute within database c++
---@param character userdata of player
---@param attr integer representing the attr
---@param amount integer to be updated
function AttributeSet(character, attr, amount)
    SetChaAttrI(character, attr, amount)
    SyncChar(character, 4)
end

---Function to update panel count: kills and deaths
---@param panel table name for the map
---@param param string representing what to be updated in the table: kills, deaths or killed;
---@param map_name string representing the map to be updated
---@param player_name string name of the player
---@param defer_userdata userdata of the defeated player
function UpdatePanelCount(panel, param, map_name, player_name, defer_userdata)
    -- Checking if "param" has been parsed into the function call
    if not param then
        --LG("UpdatePanelCount", "Function has 4 params: table, param, map_name, player_name. Param value was not recognized..")
            return
    end
    -- Checking if param is a string, if not a log will be saved in LOGS -> UpdatePanelCount;
    if type(param) ~= "string" then
       -- LG("UpdatePanelCount", "Failed to update data because param is not a string.")
        return
    end

    -- Initialize map entry if it doesn't exist
    if not panel[map_name] then
        panel[map_name] = {}
    end

    if param == "kills" or param == "deaths" then
        -- Initialize player entry if it doesn't exist and increment count
        panel[map_name][player_name] = (panel[map_name][player_name] or 0) + 1
    end

    if param == "killed" then
        panel[map_name][player_name] = defer_userdata
    end
end

---Sends a notice when a player kill another in PK maps to all players in-game
---@param atker userdata of the attacker character
---@param defer userdata of the killed character
local function NoticeOnDead(atker, defer)
    local deadName, atkerName = GetChaDefaultName(defer), GetChaDefaultName(atker)
    local mapName = GetMapRealName(GetChaMapName(atker))
    math.randomseed(os.time())
    local offset = math.random(1, 4)
    local message = string.format(PvP.Message[offset], mapName, deadName, atkerName)
    Notice(message)
end

---Returns the level difference between attacker and killed character
---@param atker userdata of the attacker character
---@param defer userdata of the killed character
---@return integer
local function GetLevelDif(atker, defer)
    local atkerLv = Lv(atker)
    local deferLv = Lv(defer)
    local difLv = atkerLv - deferLv
    return difLv
end

---Function to check if a player is from same guild as another
---@param playerA userdata of attacker player
---@param playerB  userdata of killed player
---@return boolean
function IsGuildMate(playerA, playerB)
    local guild_player_a = GetChaGuildID(playerA)
    local guild_player_b = GetChaGuildID(playerB)
    if guild_player_a == 0 or guild_player_b == 0 then
        return 0
    end
    return guild_player_a == guild_player_b
end

---Handling player kill player event
---@param atker userdata of the attacker character
---@param defer userdata of the killed character
-- function PvP:AfterKillPlayer(atker, defer) ---- Phoenix Original
    -- SetCharaAttr(0, defer, ATTR_SP)
    -- local deadMapName = GetChaMapName(defer)
    -- local atkerMapName = GetChaMapName(atker)
    -- if deadMapName == atkerMapName then
        -- if PvP.MapName[atkerMapName] then
            -- PvP.MapName[atkerMapName](atker, defer)
        -- end
    -- end
-- end
---Handling player kill player event
---@param atker userdata of the attacker character
---@param defer userdata of the killed character
function PvP:AfterKillPlayer(atker, defer)
    -- Checking if "defer" target is a player
    if IsPlayer(defer) == 0 then
       -- LG("PvP - AfterKillPlayer", GetChaDefaultName(atker) .. ", killed a object which not a monster {id: " .. GetChaTypeID(defer) .. ",  " .. GetChaDefaultName(defer) .. "}.")
        return
    end
    SetCharaAttr(0, defer, ATTR_SP)
    local deadMapName = GetChaMapName(defer)
    local atkerMapName = GetChaMapName(atker)
    if deadMapName == atkerMapName then
        if PvP.MapName[atkerMapName] then
            PvP.MapName[atkerMapName](atker, defer)
        end
    end
end
PvP.MapName["puzzleworld"] = function(atker, defer)
    NoticeOnDead(atker, defer)
end

PvP.MapName["abandonedcity"] = function(atker, defer)
    NoticeOnDead(atker, defer)
end

PvP.MapName["darkswamp"] = function(atker, defer)
    NoticeOnDead(atker, defer)
end

PvP.MapName["teampk"] = function(atker, defer)
    -- local difLv = GetLevelDif(atker, defer)
    -- if difLv < 10 and difLv > -5 then
        -- local messagea = string.format(PvP.Message[7], 1, "Honor")
        -- local messageb = string.format(PvP.Message[8], 1, "Honor")
        -- SystemNotice(atker, messagea)
        -- SystemNotice(defer, messageb)
        -- AttributeAdd(atker, ATTR_ARENA_POINT, 1)
        -- AttributeRem(defer, ATTR_ARENA_POINT, 1)
        -- AttributeAdd(atker, ATTR_ARENA_KILL, 1)
        -- AttributeAdd(defer, ATTR_ARENA_DEATH, 1)
    -- end
    -- if difLv >= 10 then
        -- local message = string.format(PvP.Message[9], "Honor")
        -- SystemNotice(atker, message)
    -- end
    -- if difLv <= -5 then
        -- local messagea = string.format(PvP.Message[11], 2, "Honor")
        -- local messageb = string.format(PvP.Message[12], 2, "Honor")
        -- SystemNotice(atker, messagea)
        -- SystemNotice(defer, messageb)
        -- AttributeAdd(atker, ATTR_ARENA_POINT, 2)
        -- AttributeRem(defer, ATTR_ARENA_POINT, 2)
        -- AttributeAdd(atker, ATTR_ARENA_KILL, 2)
        -- AttributeRem(defer, ATTR_ARENA_DEATH, 2)
    -- end
    NoticeOnDead(atker, defer)
end

PvP.MapName["garner2"] = function(atker, defer)
    local check_from_same_guild = IsGuildMate(atker, defer)
    if check_from_same_guild == 1 then
        SystemNotice(atker, PvP.Message[5])
        SystemNotice(defer, PvP.Message[6])
        return
    end

    local attacker_name = GetChaDefaultName(atker)
    local defender_name = GetChaDefaultName(defer)
    local attacker_map = GetChaMapName(atker)

    local difLv = GetLevelDif(atker, defer)
    if difLv < 15 and difLv > -15 then
        local messagea = string.format(PvP.Message[7], 1, "Mighty")
        local messageb = string.format(PvP.Message[8], 1, "Mighty")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
        BickerNotice(atker, "You killed an opponent +1 Mighty Points")
        AttributeAdd(atker, ATTR_CHAOS_POINT, 1)
        AttributeRem(defer, ATTR_CHAOS_POINT, 1)
    end
    if difLv >= 15 then
        local messagea = string.format(PvP.Message[9], "Mighty")
        local messageb = string.format(PvP.Message[10], "Mighty")
        BickerNotice(atker, "You killed an opponent +1 Mighty Points")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
    end
    if difLv <= -14 then
        local messagea = string.format(PvP.Message[11], 1, "Mighty")
        local messageb = string.format(PvP.Message[12], 1, "Mighty")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
        --BickerNotice(atker, "killed player difLv <= -14")
        AttributeAdd(atker, ATTR_CHAOS_POINT, 1)
        AttributeRem(defer, ATTR_CHAOS_POINT, 1)
    end
    NoticeOnDead(atker, defer)
    -- updating mini-map statistics panel
    UpdatePanelCount(PANEL_PLAYER_KILL_COUNT, "kills", attacker_map, attacker_name, defer)
    UpdatePanelCount(PANEL_PLAYER_DEATH_COUNT, "deaths", attacker_map, defender_name, defer)
    UpdatePanelCount(PANEL_LAST_PLAYER_KILLED, "killed", attacker_map, attacker_name, defer)

end
PvP.MapName["chaosicicle"] = function(atker, defer)
    local check_from_same_guild = IsGuildMate(atker, defer)
    if check_from_same_guild == 1 then
        SystemNotice(atker, PvP.Message[5])
        SystemNotice(defer, PvP.Message[6])
        return
    end

    local attacker_name = GetChaDefaultName(atker)
    local defender_name = GetChaDefaultName(defer)
    local attacker_map = GetChaMapName(atker)
    local defender_map = GetChaMapName(defer)

    local difLv = GetLevelDif(atker, defer)
    if difLv < 15 and difLv > -15 then
        local messagea = string.format(PvP.Message[7], 1, "Mighty")
        local messageb = string.format(PvP.Message[8], 1, "Mighty")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
        BickerNotice(atker, "You killed an opponent +1 Mighty Points")
        AttributeAdd(atker, ATTR_CHAOS_POINT, 1)
        AttributeRem(defer, ATTR_CHAOS_POINT, 1)
    end
    if difLv >= 15 then
        local messagea = string.format(PvP.Message[9], "Mighty")
        local messageb = string.format(PvP.Message[10], "Mighty")
        BickerNotice(atker, "You killed an opponent +1 Mighty Points")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
    end
    if difLv <= -14 then
        local messagea = string.format(PvP.Message[11], 1, "Mighty")
        local messageb = string.format(PvP.Message[12], 1, "Mighty")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
        --BickerNotice(atker, "killed player difLv <= -14")
        AttributeAdd(atker, ATTR_CHAOS_POINT, 1)
        AttributeRem(defer, ATTR_CHAOS_POINT, 1)
    end
    NoticeOnDead(atker, defer)
    -- updating kills and death on panel
    UpdatePanelCount(PANEL_PLAYER_KILL_COUNT, "kills", attacker_map, attacker_name, defer)
    UpdatePanelCount(PANEL_PLAYER_DEATH_COUNT, "deaths", defender_map, defender_name, defer)
	UpdatePanelCount(PANEL_LAST_PLAYER_KILLED, "killed", attacker_map, attacker_name, defer)
end
PvP.MapName["glacierpk"] = function(atker, defer)
    local check_from_same_guild = IsGuildMate(atker, defer)
    if check_from_same_guild == 1 then
        SystemNotice(atker, PvP.Message[5])
        SystemNotice(defer, PvP.Message[6])
        return
    end

    local attacker_name = GetChaDefaultName(atker)
    local defender_name = GetChaDefaultName(defer)
    local attacker_map = GetChaMapName(atker)
    local defender_map = GetChaMapName(defer)

    local difLv = GetLevelDif(atker, defer)
    if difLv < 15 and difLv > -15 then
        local messagea = string.format(PvP.Message[7], 1, "Mighty")
        local messageb = string.format(PvP.Message[8], 1, "Mighty")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
        BickerNotice(atker, "You killed an opponent +1 Mighty Points")
        AttributeAdd(atker, ATTR_CHAOS_POINT, 1)
        AttributeRem(defer, ATTR_CHAOS_POINT, 1)
    end
    if difLv >= 15 then
        local messagea = string.format(PvP.Message[9], "Mighty")
        local messageb = string.format(PvP.Message[10], "Mighty")
        BickerNotice(atker, "You killed an opponent +1 Mighty Points")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
    end
    if difLv <= -14 then
        local messagea = string.format(PvP.Message[11], 1, "Mighty")
        local messageb = string.format(PvP.Message[12], 1, "Mighty")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
        --BickerNotice(atker, "killed player difLv <= -14")
        AttributeAdd(atker, ATTR_CHAOS_POINT, 1)
        AttributeRem(defer, ATTR_CHAOS_POINT, 1)
    end
    NoticeOnDead(atker, defer)
    -- updating kills and death on panel
    UpdatePanelCount(PANEL_PLAYER_KILL_COUNT, "kills", attacker_map, attacker_name, defer)
    UpdatePanelCount(PANEL_PLAYER_DEATH_COUNT, "deaths", defender_map, defender_name, defer)
	UpdatePanelCount(PANEL_LAST_PLAYER_KILLED, "killed", attacker_map, attacker_name, defer)
end
PvP.MapName["shalan2"] = function(atker, defer)
    local check_from_same_guild = IsGuildMate(atker, defer)
    if check_from_same_guild == 1 then
        SystemNotice(atker, PvP.Message[5])
        SystemNotice(defer, PvP.Message[6])
        return
    end

    local attacker_name = GetChaDefaultName(atker)
    local defender_name = GetChaDefaultName(defer)
    local attacker_map = GetChaMapName(atker)
    local defender_map = GetChaMapName(defer)

    local difLv = GetLevelDif(atker, defer)
    if difLv < 15 and difLv > -15 then
        local messagea = string.format(PvP.Message[7], 1, "Mighty")
        local messageb = string.format(PvP.Message[8], 1, "Mighty")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
        BickerNotice(atker, "You killed an opponent +1 Mighty Points")
        AttributeAdd(atker, ATTR_CHAOS_POINT, 1)
        AttributeRem(defer, ATTR_CHAOS_POINT, 1)
    end
    if difLv >= 15 then
        local messagea = string.format(PvP.Message[9], "Mighty")
        local messageb = string.format(PvP.Message[10], "Mighty")
        BickerNotice(atker, "You killed an opponent +1 Mighty Points")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
    end
    if difLv <= -14 then
        local messagea = string.format(PvP.Message[11], 1, "Mighty")
        local messageb = string.format(PvP.Message[12], 1, "Mighty")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
        --BickerNotice(atker, "killed player difLv <= -14")
        AttributeAdd(atker, ATTR_CHAOS_POINT, 1)
        AttributeRem(defer, ATTR_CHAOS_POINT, 1)
    end
    NoticeOnDead(atker, defer)
    -- updating kills and death on panel
    UpdatePanelCount(PANEL_PLAYER_KILL_COUNT, "kills", attacker_map, attacker_name, defer)
    UpdatePanelCount(PANEL_PLAYER_DEATH_COUNT, "deaths", defender_map, defender_name, defer)
	UpdatePanelCount(PANEL_LAST_PLAYER_KILLED, "killed", attacker_map, attacker_name, defer)
end
PvP.MapName["springpk"] = function(atker, defer)
    local check_from_same_guild = IsGuildMate(atker, defer)
    if check_from_same_guild == 1 then
        SystemNotice(atker, PvP.Message[5])
        SystemNotice(defer, PvP.Message[6])
        return
    end

    local attacker_name = GetChaDefaultName(atker)
    local defender_name = GetChaDefaultName(defer)
    local attacker_map = GetChaMapName(atker)
    local defender_map = GetChaMapName(defer)

    local difLv = GetLevelDif(atker, defer)
    if difLv < 15 and difLv > -15 then
        local messagea = string.format(PvP.Message[7], 1, "Mighty")
        local messageb = string.format(PvP.Message[8], 1, "Mighty")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
        BickerNotice(atker, "You killed an opponent +1 Mighty Points")
        AttributeAdd(atker, ATTR_CHAOS_POINT, 1)
        AttributeRem(defer, ATTR_CHAOS_POINT, 1)
    end
    if difLv >= 15 then
        local messagea = string.format(PvP.Message[9], "Mighty")
        local messageb = string.format(PvP.Message[10], "Mighty")
        BickerNotice(atker, "You killed an opponent +1 Mighty Points")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
    end
    if difLv <= -14 then
        local messagea = string.format(PvP.Message[11], 1, "Mighty")
        local messageb = string.format(PvP.Message[12], 1, "Mighty")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
        --BickerNotice(atker, "killed player difLv <= -14")
        AttributeAdd(atker, ATTR_CHAOS_POINT, 1)
        AttributeRem(defer, ATTR_CHAOS_POINT, 1)
    end
    NoticeOnDead(atker, defer)
    -- updating kills and death on panel
    UpdatePanelCount(PANEL_PLAYER_KILL_COUNT, "kills", attacker_map, attacker_name, defer)
    UpdatePanelCount(PANEL_PLAYER_DEATH_COUNT, "deaths", defender_map, defender_name, defer)
	UpdatePanelCount(PANEL_LAST_PLAYER_KILLED, "killed", attacker_map, attacker_name, defer)
end
PvP.MapName["dreampk"] = function(atker, defer)
    local check_from_same_guild = IsGuildMate(atker, defer)
    if check_from_same_guild == 1 then
        SystemNotice(atker, PvP.Message[5])
        SystemNotice(defer, PvP.Message[6])
        return
    end

    local attacker_name = GetChaDefaultName(atker)
    local defender_name = GetChaDefaultName(defer)
    local attacker_map = GetChaMapName(atker)
    local defender_map = GetChaMapName(defer)

    local difLv = GetLevelDif(atker, defer)
    if difLv < 15 and difLv > -15 then
        local messagea = string.format(PvP.Message[7], 1, "Mighty")
        local messageb = string.format(PvP.Message[8], 1, "Mighty")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
        BickerNotice(atker, "You killed an opponent +1 Mighty Points")
        AttributeAdd(atker, ATTR_CHAOS_POINT, 1)
        AttributeRem(defer, ATTR_CHAOS_POINT, 1)
    end
    if difLv >= 15 then
        local messagea = string.format(PvP.Message[9], "Mighty")
        local messageb = string.format(PvP.Message[10], "Mighty")
        BickerNotice(atker, "You killed an opponent +1 Mighty Points")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
    end
    if difLv <= -14 then
        local messagea = string.format(PvP.Message[11], 1, "Mighty")
        local messageb = string.format(PvP.Message[12], 1, "Mighty")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
        --BickerNotice(atker, "killed player difLv <= -14")
        AttributeAdd(atker, ATTR_CHAOS_POINT, 1)
        AttributeRem(defer, ATTR_CHAOS_POINT, 1)
    end
    NoticeOnDead(atker, defer)
    -- updating kills and death on panel
    UpdatePanelCount(PANEL_PLAYER_KILL_COUNT, "kills", attacker_map, attacker_name, defer)
    UpdatePanelCount(PANEL_PLAYER_DEATH_COUNT, "deaths", defender_map, defender_name, defer)
	UpdatePanelCount(PANEL_LAST_PLAYER_KILLED, "killed", attacker_map, attacker_name, defer)
end
PvP.MapName["snowar"] = function(atker, defer)
    local check_from_same_guild = IsGuildMate(atker, defer)
    if check_from_same_guild == 1 then
        SystemNotice(atker, PvP.Message[5])
        SystemNotice(defer, PvP.Message[6])
        return
    end

    local attacker_name = GetChaDefaultName(atker)
    local defender_name = GetChaDefaultName(defer)
    local attacker_map = GetChaMapName(atker)
    local defender_map = GetChaMapName(defer)

    local difLv = GetLevelDif(atker, defer)
    if difLv < 15 and difLv > -15 then
        local messagea = string.format(PvP.Message[7], 1, "Mighty")
        local messageb = string.format(PvP.Message[8], 1, "Mighty")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
        BickerNotice(atker, "You killed an opponent +1 Mighty Points")
        AttributeAdd(atker, ATTR_CHAOS_POINT, 1)
        AttributeRem(defer, ATTR_CHAOS_POINT, 1)
    end
    if difLv >= 15 then
        local messagea = string.format(PvP.Message[9], "Mighty")
        local messageb = string.format(PvP.Message[10], "Mighty")
        BickerNotice(atker, "You killed an opponent +1 Mighty Points")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
    end
    if difLv <= -14 then
        local messagea = string.format(PvP.Message[11], 1, "Mighty")
        local messageb = string.format(PvP.Message[12], 1, "Mighty")
        SystemNotice(atker, messagea)
        SystemNotice(defer, messageb)
        --BickerNotice(atker, "killed player difLv <= -14")
        AttributeAdd(atker, ATTR_CHAOS_POINT, 1)
        AttributeRem(defer, ATTR_CHAOS_POINT, 1)
    end
    NoticeOnDead(atker, defer)
    -- updating kills and death on panel
    UpdatePanelCount(PANEL_PLAYER_KILL_COUNT, "kills", attacker_map, attacker_name, defer)
    UpdatePanelCount(PANEL_PLAYER_DEATH_COUNT, "deaths", defender_map, defender_name, defer)
	UpdatePanelCount(PANEL_LAST_PLAYER_KILLED, "killed", attacker_map, attacker_name, defer)
end
PvP.MapName["jialebi"] = function(atker, defer)
    NoticeOnDead(atker, defer)
end

PvP.MapName["heilong"] = function(atker, defer)
    NoticeOnDead(atker, defer)
end

PvP.MapName["hell"] = function(atker, defer)
    NoticeOnDead(atker, defer)
end

PvP.MapName["puzzleworld2"] = PvP.MapName["puzzleworld"]
PvP.MapName["abandonedcity2"] = PvP.MapName["abandonedcity"]
PvP.MapName["hell2"] = PvP.MapName["hell"]
PvP.MapName["hell3"] = PvP.MapName["hell"]
PvP.MapName["hell4"] = PvP.MapName["hell"]
PvP.MapName["hell5"] = PvP.MapName["hell"]
PvP.MapName["darkswamp2"] = PvP.MapName["darkswamp"]
PvP.MapName["abandonedcity2"] = PvP.MapName["abandonedcity"]
