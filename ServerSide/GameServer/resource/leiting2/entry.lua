--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀，如after_destroy_entry_testpk
--此文件每行最大字符个数为255，若有异议，请与程序探讨

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --设置地图入口实体的编号（该编号对应于characterinfo.txt的索引）

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --创建副本管理对象，此函数在有显式入口的地图中必须调用，对于隐式入口的地图（如队伍挑战）无要调用该接口
    local EntryName = "Gold Farming"
    SetMapEntryEventName( entry, EntryName )

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    Notice("Announcement: In Magical Ocean region, players has discovered ["..posx..","..posy.."] emerges a portal that leads to [Thundoria Mirage]. All players beware.")

end

function after_destroy_entry_leiting2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Announcement: According to reports, portal to [Thundoria Mirage] has disappeared. Check announcement for more details. Enjoy!") 

end

function after_player_login_leiting2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    ChaNotice(player_name, "Announcement: In Ascaron region, players has discovered ["..posx..","..posy.."] emerges a portal that leads to [Thundoria Mirage]. All players beware.")

end

--用于检测进入条件
--返回值：0，不满足进入条件。1，成功进入。
function check_can_enter_leiting2(Player, copy_mgr)
	local i = IsChaStall(Player)
	if i == LUA_TRUE then
		SystemNotice(Player, "Cannot teleport while setting stall")
		return 0  -- Return 0 if the character is in a stall
	else
		return 1  -- Return 1 if the character is not in a stall
	end
end



function begin_enter_leiting2(Player, copy_mgr)

	SystemNotice(Player,"Entering [Gold Farming]") 
		MoveCity(Player, "Gold Farming")

end