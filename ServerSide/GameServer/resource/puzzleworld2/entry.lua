function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) 
	SetMapEntryEventName(entry, "Demonic World 2")
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
end

function after_destroy_entry_puzzleworld2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
end

function check_can_enter_puzzleworld2(Player, copy_mgr)
	for A = 1, 1, 1 do
		if CheckMonsterDead(BossDW[A]) == 0 then
			BickerNotice(Player, "You cannot proceed until you kill Wandering Soul.")
			return 0
		end
	end
	return 1
end

function begin_enter_puzzleworld2(Player, copy_mgr) 
	SystemNotice(Player,"Enters [Demonic World 2]") 
	MoveCity(Player, "Demonic World 2")
end

function after_player_login_puzzleworld2(entry, player_name)

end