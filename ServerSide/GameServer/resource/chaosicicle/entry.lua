PortalEntryData2 = {}
function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1)

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    local EntryName = "Chaos Icicle | [ 0 ] Survivor(s)"
    SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    ScrollNotice ("Announcement: According to reports, in Icicle City at ["..posx..","..posy.."] appears a portal to Chaos Icicle. Please check it out.",1, 0XFFF6E58D)
	if not PortalEntryData2.chaosicicle then
            PortalEntryData2.chaosicicle = entry
	end
end

function after_destroy_entry_chaosicicle(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    ScrollNotice("Announcement: According to reports, portal to [Chaos Icicle] has vanished. Check announcement for more details. Enjoy!",1, 0XFFF6E58D) 

end

function after_player_login_chaosicicle(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    ChaNotice(player_name, "Announcement: According to reports, in Icicle City at ["..posx..","..posy.."] appears a portal to Chaos Icicle. Please check it out.")

end

function check_can_enter_chaosicicle( Player, copy_mgr )
	-- if (BeforeEnterZone(Player) == 0) then
		-- local PID = GetCharID(Player)
		-- local Dir = GetResPath(string.format("../PlayerData/RelogPenalty/%d.dat", GetPlayerID(GetChaPlayer(Player))))
		-- local Table = DataFile:Init(Dir, Table):Load()
		-- local TimeLeft = Table[PID].Time - os.time()
		-- PopupNotice(Player, "You\'ve received a penalty for reloging.\nUnable to enter Chaos Icicle for "..TimeLeft.." second(s)!")
		-- return 0
	-- end
	print(0)
	if not Restriction.Check(Player, 'chaosicicle', 'MAC') then
		SystemNotice(Player, 'You already have another character inside this map.')
		return 0
	end
	return 1
				
end

function begin_enter_chaosicicle(Player, copy_mgr) 
	SystemNotice(Player,"Entering [Chaos Icicle]")
	MoveCity(Player, "Chaos Icicle")
	Notice(GetChaDefaultName(Player).." has entered [Chaos Icicle]")
end








