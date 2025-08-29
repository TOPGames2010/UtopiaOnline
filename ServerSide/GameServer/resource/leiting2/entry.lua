--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�
    local EntryName = "Gold Farming"
    SetMapEntryEventName( entry, EntryName )

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("Announcement: In Magical Ocean region, players has discovered ["..posx..","..posy.."] emerges a portal that leads to [Thundoria Mirage]. All players beware.")

end

function after_destroy_entry_leiting2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Announcement: According to reports, portal to [Thundoria Mirage] has disappeared. Check announcement for more details. Enjoy!") 

end

function after_player_login_leiting2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    ChaNotice(player_name, "Announcement: In Ascaron region, players has discovered ["..posx..","..posy.."] emerges a portal that leads to [Thundoria Mirage]. All players beware.")

end

--���ڼ���������
--����ֵ��0�����������������1���ɹ����롣
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