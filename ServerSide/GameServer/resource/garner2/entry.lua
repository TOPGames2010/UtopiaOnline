PortalEntryData = {}
function config_entry(entry)
    SetMapEntryEntiID(entry,193,1)
end

function after_create_entry(entry) 
    local copy_mgr		= GetMapEntryCopyObj(entry, 0)
    local EntryName = "Chaos Argent | [ 0 ] Survivor(s)"
    SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    ScrollNotice("Announcement: Portal to Chaos Argent has opened at ["..posx..","..posy.."] Icicle City!",1, 0XFFF6E58D)
	if not PortalEntryData.garner2 then
            PortalEntryData.garner2 = entry
	end	
end

function after_destroy_entry_garner2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    ScrollNotice("Announcement: The portal to Chaos Argent has vanished!",1, 0XFFF6E58D) 
end

function after_player_login_garner2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "Announcement: Portal to Chaos Argent has opened at ["..posx..","..posy.."] Icicle City!")
end

function check_can_enter_garner2(Player, copy_mgr)
	-- if (BeforeEnterZone(Player) == 0) then
		-- local PID = GetCharID(Player)
		-- local Dir = GetResPath(string.format("../PlayerData/RelogPenalty/%d.dat", GetPlayerID(GetChaPlayer(Player))))
		-- local Table = DataFile:Init(Dir, Table):Load()
		-- local TimeLeft = Table[PID].Time - os.time()
		-- PopupNotice(Player, "You\'ve received a penalty for reloging.\nUnable to enter Chaos Argent for "..TimeLeft.." second(s)!")
		-- return 0
	-- end
	print(0)
	if not Restriction.Check(Player, 'garner2', 'MAC') then
		SystemNotice(Player, 'You already have another character inside this map.')
		return 0
	end
	return 1
end

function begin_enter_garner2(Player, copy_mgr)
	SystemNotice(Player,"Entering [Chaos Argent]")
	MoveCity(Player, "Chaos Argent")
	Notice(GetChaDefaultName(Player).." has entered [Chaos Argent]")
end