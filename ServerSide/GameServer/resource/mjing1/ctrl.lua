--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
    MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    MapCanPK(map, 1) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1
    SingleMapCopyPlyNum(map, 300)   --����һ�������������
    MapCanTeam(map , 1)
    MapType ( map , 4 )
end


function init_entry(map)

end
function after_enter_mjing1(Player, map_copy)
	--SystemNotice(role, "Mysterious voice: "..GetChaDefaultName(role)..", this is your last stop and also your place of burial. Enjoy your last moments while you can!") 
end
function before_leave_mjing1(Player)
end
function map_run_mjing1(map)

end

function map_copy_run_mjing1(map_copy)

end

function map_copy_run_special_mjing1(map_copy)

end