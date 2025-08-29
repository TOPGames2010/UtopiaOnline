function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,1)
end 
function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    SetMapEntryEventName(entry, "Black Dragon Lair")
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Announcement: In the depths of Black Dragon lair ["..posx..","..posy.."], cries of the undead have constantly been heard, resulting in the people of Caribbean Island being afraid. Is there any warrior whose willing to investigate?")
	--Abaddon_Init()
end
function after_destroy_entry_heilong(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
end
function after_player_login_heilong(entry, player_name)
end
function check_can_enter_heilong(Player, copy_mgr)
return 1
end
function begin_enter_heilong(Player, copy_mgr) 
	SystemNotice(Player, "An unknown gravity pulls you towards the endless darkness. A darker Black Dragon lair awaits you.")
	MoveCity(Player, "Black Dragon Lair")
end 
