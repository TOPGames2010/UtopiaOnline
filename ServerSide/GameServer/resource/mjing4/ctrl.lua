function config(map)
    MapCanSavePos(map, 0) --设置地图是否保存角色位置（地图，坐标，方向），此设置影响该地图的所有副本
    MapCanPK(map, 1) --设置地图是否可以PK，此设置影响该地图的所有副本
    MapCopyNum(map, 1) --设置地图的副本数目，如果不调用该语句，则使用默认值1
    SingleMapCopyPlyNum(map, 300)
	MapCanTeam(map , 1)
	MapType ( map , 4 )

end

function init_entry(map)

end
function after_enter_mjing4(Player, map_copy)
	--SystemNotice(role, "Mysterious voice: "..GetChaDefaultName(role)..", this is your last stop and also your place of burial. Enjoy your last moments while you can!") 
end
function before_leave_mjing4(Player)
end

function map_run_mjing4(map)

end

function map_copy_run_mjing4(map_copy)

end

function map_copy_run_special_mjing4(map_copy)

end
