PortalEntryData7 = {}
function config_entry(entry)
    SetMapEntryEntiID(entry,193,1)
end

function after_create_entry(entry) 
    local copy_mgr		= GetMapEntryCopyObj(entry, 0)
    local EntryName = "Chaos Spring | [ 0 ] Survivor(s)"
    SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    ScrollNotice("Announcement: Portal to Chaos Spring has opened at ["..posx..","..posy.."] Icicle City!",1, 0XFFF6E58D)
	if not PortalEntryData7.springpk then
            PortalEntryData7.springpk = entry
	end	
end

function after_destroy_entry_springpk(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    ScrollNotice("Announcement: The portal to Chaos Spring has vanished!",1, 0XFFF6E58D) 
end

function after_player_login_springpk(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "Announcement: Portal to Chaos Spring has opened at ["..posx..","..posy.."] Icicle City!")
end

function check_can_enter_springpk(Player, copy_mgr)

	print(0)
	if not Restriction.Check(Player, 'springpk', 'MAC') then
		SystemNotice(Player, 'You already have another character inside this map.')
		return 0
	end
	
	return 1
end

function begin_enter_springpk(Player, copy_mgr)
	SystemNotice(Player,"Entering [Chaos Spring]")
	MoveCity(Player, "Chaos Spring")
	Notice(GetChaDefaultName(Player).." has entered [Chaos Spring]")
end