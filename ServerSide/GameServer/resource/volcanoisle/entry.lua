function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,1)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    local EntryName = "[Volcano Island] Lv80-130 - I recommend Hunting in Party"
    SetMapEntryEventName( entry, EntryName )

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    Notice("Announcement: According to reports, near Magic Sea at ["..posx..","..posy.."] appears a portal to Volcano Island. Please check it out.")
end

function after_destroy_entry_volcanoisle(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Announcement: According to reports, portal to [Volcano Island] has vanished. Check announcement for more details. Enjoy!") 
end

function after_player_login_volcanoisle(entry, player_name)end

function check_can_enter_volcanoisle(role, copy_mgr)

	local Cha = TurnToCha(role)
  
	if Lv(Cha) >=80 and Lv(Cha) <=130 then
	
			return 1

	else
		SystemNotice(role, "Characters need to be between Lv 80 to 130 to enter Volcano Island")
		return 0    
	end
end

function begin_enter_volcanoisle(role, copy_mgr) 
		SystemNotice(role,"Entering [Volcano Island]") 
		MoveCity(role, "Volcano Island")
end