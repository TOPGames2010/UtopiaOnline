--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)
    MapCanSavePos(map, 0) --设置地图是否保存角色位置（地图，坐标，方向），此设置影响该地图的所有副本
    MapCanPK(map, 1) --设置地图是否可以PK，此设置影响该地图的所有副本
    MapCopyNum(map, 1) --设置地图的副本数目，如果不调用该语句，则使用默认值1
    SingleMapCopyPlyNum(map, 300)   --设置一个副本的玩家数
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