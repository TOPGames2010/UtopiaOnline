--------------------------------------------------------------------------
--									--
--									--
--				ctrl.lua				--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading farm Ctrl.lua" )


--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
	 MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    -----MapCanPK(map, 0) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1
    SingleMapCopyPlyNum(map, 300)   --����һ�������������
    MapCanTeam(map , 1)
    MapType ( map , 1 )	
end


function get_map_entry_pos_farm()   --������ڵ�λ�õ����꣨���꣨�ף���

end

function init_entry(map)

end

function after_enter_farm( role , map_copy )
end

function before_leave_farm( role )
end

function map_copy_first_run_farm( map_copy )

end

function map_copy_run_farm( map_copy )
end
function map_copy_run_special_farm(map_copy)
end

--ÿ5��ִ��һ�ε�
function map_run_farm( map )
end

--��ͼ�ر�ʱִ��
function map_copy_close_farm ( map_copy )
end
		
--��ͼ�����жϡ�����������������������������������������������������������������������������������

function can_open_entry_farm( map ) 
end 
