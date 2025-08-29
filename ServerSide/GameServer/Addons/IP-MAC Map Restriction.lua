--[[
	IP-MAC Map Restriction: by Angelix @ pkoDev.net	/	Discord: Angelix#2836

	This file should be loaded AFTER the file containing LuaSQL functions.
	
	Maps should be loaded where their portal opens.
	Example:
		-	If portal to 'Chaos Argent' opens in 'Icicle Castle', then 'garner2' and 'darkblue' should be loaded in the same GameServer.
		-	This is if you use the restriction function on 'Chaos Argent'.
		-	If not done this way, it may cause issues of variables not being properly declared or not clearing? Don't know.
]]--
--[[
	Function intructions, where to add them.

	Inside entry.lua, function 'check_can_enter_', add this:

		if not Restriction.Check(Player, '<MapName>', 'IP') then
			SystemNotice(Player, 'You already have another character inside this map.')
			return 0
		end
		if not Restriction.Check(Player, '<MapName>', 'MAC') then
			SystemNotice(Player, 'You already have another character inside this map.')
			return 0
		end
		
	Inside ctrl.lua, function 'after_enter_', add this:

		Restriction.Add(Player, '<MapName>', 'IP')
		Restriction.Add(Player, '<MapName>', 'MAC')
	
	Inside ctrl.lua, function 'before_leave_', add this:

		Restriction.Rem(Player, '<MapName>', 'IP')
		Restriction.Rem(Player, '<MapName>', 'MAC')
		
	Change <MapName> to the corresponding map name you're adding it to.
]]--
print( "Loading 1 Mac Per Maze.Lua" )
Restriction = Restriction or {}
Restriction.MapVar = Restriction.MapVar or {}
Restriction.Conf = {}

Restriction.Conf.Active = true				--	Is this feature active?
Restriction.Conf.Limit = 1					--	How many players of same type can enter?

Restriction.Check = function(Player, MapName, Type)
	print(0, 'Check', Player, MapName, Type)
	--	Check if feature is active, if not, do not bother calling the rest of the function.
	if not Restriction.Conf.Active then
		return true
	end
	print(1, 'Check', Player, MapName, Type)
	local PlayerType = GetChaDefaultName(Player)
	if Type == 'IP' then
		PlayerType = GetPlayerIP(Player)
	elseif Type == 'MAC' then
		PlayerType = GetPlayerMac(Player)
	end
	print(2, 'Check', Player, MapName, Type, PlayerType)
	Restriction.MapVar[MapName] = Restriction.MapVar[MapName] or {}										--	Check if map table is declared for the map we're about to use, if not, create it.
	Restriction.MapVar[MapName][Type] = Restriction.MapVar[MapName][Type] or {}							--	Check if type table is declared for the map we're about to use, if not, create it.
	Restriction.MapVar[MapName][Type][PlayerType] = Restriction.MapVar[MapName][Type][PlayerType] or 0	--	Check if player table is declared for the map we're about to use, if not, create it.
	print(3, 'Check', Player, MapName, Type, Restriction.MapVar[MapName][Type][PlayerType])
	--	Do the actual check if they are inside already, how many are inside and if they're above the limit we want.
	--	If they're at or above the limit, then return false and limit their entry to the map.
	if Restriction.MapVar[MapName][Type][PlayerType] >= Restriction.Conf.Limit then
		return false
	end
	--	If they passed the above check then lets just return true.
	return true
end

Restriction.Add = function(Player, MapName, Type)
	print(0, 'Add', Player, MapName, Type)
	--	Check if feature is active, if not, do not bother calling the rest of the function.
	if not Restriction.Conf.Active then
		return
	end
	print(1, 'Add', Player, MapName, Type)
	local PlayerType = GetChaDefaultName(Player)	
	if Type == 'IP' then
		PlayerType = GetPlayerIP(Player)
	elseif Type == 'MAC' then
		PlayerType = GetPlayerMac(Player)
	end
	print(2, 'Add', Player, MapName, Type, PlayerType)
	Restriction.MapVar[MapName] = Restriction.MapVar[MapName] or {}										--	Check if map table is declared for the map we're about to use, if not, create it.
	Restriction.MapVar[MapName][Type] = Restriction.MapVar[MapName][Type] or {}							--	Check if type table is declared for the map we're about to use, if not, create it.
	Restriction.MapVar[MapName][Type][PlayerType] = Restriction.MapVar[MapName][Type][PlayerType] or 0	--	Check if player table is declared for the map we're about to use, if not, create it.
	Restriction.MapVar[MapName][Type][PlayerType] = Restriction.MapVar[MapName][Type][PlayerType] + 1	--	Add 1 to the count as they've entered the map.
	print(3, 'Add', Player, MapName, Type, Restriction.MapVar[MapName][Type][PlayerType])
end

Restriction.Rem = function(Player, MapName, Type)
	print(0, 'Rem', Player, MapName, Type)
	--	Check if feature is active, if not, do not bother calling the rest of the function.
	if not Restriction.Conf.Active then
		return
	end
	print(1, 'Rem', Player, MapName, Type)
	local PlayerType = GetChaDefaultName(Player)
	if Type == 'IP' then
		PlayerType = GetPlayerIP(Player)
	elseif Type == 'MAC' then
		PlayerType = GetPlayerMac(Player)  -- GetPlayerMac
	end
	print(2, 'Rem', Player, MapName, Type, PlayerType)
	Restriction.MapVar[MapName] = Restriction.MapVar[MapName] or {}										--	Check if map table is declared for the map we're about to use, if not, create it.
	Restriction.MapVar[MapName][Type] = Restriction.MapVar[MapName][Type] or {}							--	Check if type table is declared for the map we're about to use, if not, create it.
	Restriction.MapVar[MapName][Type][PlayerType] = Restriction.MapVar[MapName][Type][PlayerType] or 0	--	Check if player table is declared for the map we're about to use, if not, create it.
	Restriction.MapVar[MapName][Type][PlayerType] = Restriction.MapVar[MapName][Type][PlayerType] - 1	--	Remove 1 from the count.
	print(3, 'Rem', Player, MapName, Type, Restriction.MapVar[MapName][Type][PlayerType])
	--	If count reaches zero, lets clear the player variable.
	if Restriction.MapVar[MapName][Type][PlayerType] == 0 then
		Restriction.MapVar[MapName][Type][PlayerType] = nil
	end
end
