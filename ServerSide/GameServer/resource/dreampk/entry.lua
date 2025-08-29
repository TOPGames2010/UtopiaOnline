PortalEntryData8 = {}
function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1)

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --
    local EntryName = "Chaos Dream | [ 0 ] Survivor(s)"
    SetMapEntryEventName( entry, EntryName )

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --
    ScrollNotice("Announcement: According to reports, near Phoenix Island at ["..posx..","..posy.."] appears a portal to Chaos Dream. Please check it out.",1, 0XFFF6E58D)  --通知本组服务器的所有玩家
	if not PortalEntryData8.dreampk then
            PortalEntryData8.dreampk = entry
	end	
end

function after_destroy_entry_dreampk(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    ScrollNotice("Announcement: According to reports, portal to [Chaos Dream] has vanished. Check announcement for more details. Enjoy!",1, 0XFFF6E58D)
end

function after_player_login_dreampk(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --
    ChaNotice(player_name, "Announcement: According to reports, Phoenix Island at ["..posx..","..posy.."] appears a portal to Chaos Dream. Please check it out.")

end

function check_can_enter_dreampk( Player, copy_mgr )	
	print(0)
	if not Restriction.Check(Player, 'dreampk', 'MAC') then
		SystemNotice(Player, 'You already have another character inside this map.')
		return 0
	end
	return 1
end

function begin_enter_dreampk(Player, copy_mgr) 
		SystemNotice(Player,"Entering [Chaos Dream]") 
		MoveCity(Player, "Chaos Dream")
		Notice(GetChaDefaultName(Player).." has entered [Chaos Dream]")
end