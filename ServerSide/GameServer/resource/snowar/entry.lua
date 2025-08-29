PortalEntryData9 = {}
function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1)

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    local EntryName = "Snow War | [ 0 ] Survivor(s)"
    SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    ScrollNotice ("Announcement: According to reports, in Lobby City at ["..posx..","..posy.."] appears a portal to Snow War. Please check it out.",1, 0XFFF6E58D)
	if not PortalEntryData9.snowar then
            PortalEntryData9.snowar = entry
	end
end

function after_destroy_entry_snowar(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    ScrollNotice("Announcement: According to reports, portal to [Snow War] has vanished. Check announcement for more details. Enjoy!",1, 0XFFF6E58D) 

end

function after_player_login_snowar(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    ChaNotice(player_name, "Announcement: According to reports, in Lobby City at ["..posx..","..posy.."] appears a portal to Snow War. Please check it out.")

end

function check_can_enter_snowar( Player, copy_mgr )
	print(0)
	if not Restriction.Check(Player, 'snowar', 'MAC') then
		SystemNotice(Player, 'You already have another character inside this map.')
		return 0
	end
	return 1
				
end

function begin_enter_snowar(Player, copy_mgr) 
	SystemNotice(Player,"Entering [Snow War]")
	MoveCity(Player, "Snow War")
	Notice(GetChaDefaultName(Player).." has entered [Snow War]")
end








