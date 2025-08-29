--[[
-- OnBankItem
-- @author: kong@pkodev.net
-- @param Player - player who is banking
-- @param Item - userdata Item type of targeted Item
-- @return return 1 to allow banking, return 0 to prevent banking
--]]

function OnBankItem(Player, Item)
    local ItemType = GetItemType(Item)
    if ItemType == 43 or ItemType == 45 or ItemType == 46 or GetItemID(Item) == 0682 then
        return 0
    end
    return 1
end

CUSTOM_RETURN_POINTS = 
{
	['puzzleworld'] = {Spawn = 'Demonic World Portal', Heal = true},
	['puzzleworld2'] = {Spawn = 'Demonic World Portal', Heal = true},
	['garner2'] = {Spawn = 'Chaos Argent Portal', Heal = false},
	['glacierpk'] = {Spawn = 'Chaos Argent Portal', Heal = false},
	['shalan2'] = {Spawn = 'Chaos Argent Portal', Heal = false},
	['chaosicicle'] = {Spawn = 'Chaos Argent Portal', Heal = false},
	['dreampk'] = {Spawn = 'Maze Portal', Heal = false},
	['springpk'] = {Spawn = 'Maze Portal', Heal = false},
	['snowar'] = {Spawn = 'Maze Portal', Heal = false},
	
}

function MapRespawnOnDeath(Player, MapName)
	if CUSTOM_RETURN_POINTS[MapName] ~= nil then
		if CUSTOM_RETURN_POINTS[MapName].Heal then
			ReAll(Player)
		end
		return CUSTOM_RETURN_POINTS[MapName].Spawn
	end
	return ""
end

function ClearOnlineChars(cha_id)
	local role = GetRoleByID(cha_id)
	if (role ~= nil and type(role) == "userdata") then
		RemoveOfflineMode(role)
	end
end

-- item pick track {mothannakh}--
function ItemPickTrack(role, item, pickQty, isPickedBefore) -- item = int, pickQty = int , isPickedBefore = int, 1 means true 0 false
    -- when item picked up for first time 
    if isPickedBefore == 0 and item > 0 then
        -- get guild id of player 
        local guildId = GetChaGuildID(role)
        local playerName = GetChaDefaultName(role) -- his name 
        local itemName = GetItemName(item) -- item name he picked 

        -- Define the list of specific items
        local specificItems = {
            [9934] = true,
            [9937] = true,
            [9939] = true,
            [9940] = true,
            [9941] = true,
            [9962] = true,
            [9969] = true,
            [9970] = true,
            [9612] = true,
            [9613] = true,
            [9614] = true,
            [9615] = true,
            [9616] = true,
            [9617] = true,
            [9618] = true,
            [9971] = true
        }

        -- Check if the item is in the specific items list
        if specificItems[item] then
            if guildId > 0 then
                -- Send notice to guild members
                GuildNotice(guildId, "Guild Member:[" .. playerName .. "] picked up an item [" .. itemName .. "].")
            else
                -- Player picked item but not in a guild, send your own notice
                -- (Add custom notice here if needed)
            end
        end
    end
end