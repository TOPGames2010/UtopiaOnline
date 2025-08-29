print("------------------------------------")
print("-- Loading leiting2 file          --")
print("------------------------------------")
print("-- [Loading] ctrl.lua")

function config(map)
    MapCanSavePos(map, 0) --设置地图是否保存角色位置（地图，坐标，方向），此设置影响该地图的所有副本
    -----MapCanPK(map, 0) --设置地图是否可以PK，此设置影响该地图的所有副本
    MapCopyNum(map, 1) --设置地图的副本数目，如果不调用该语句，则使用默认值1
    SingleMapCopyPlyNum(map, 300)   --设置一个副本的玩家数
    MapCanTeam(map , 1)
    MapType ( map , 1 )
end

function get_map_entry_pos_leiting2()
	return 189,361
end

function init_entry(map)
    SetMapEntryMapName(map, "garner")
    	SetMapEntryTime(map, "2006/10/18/1/0", "0/2/0", "0/0/50", "0/0/50") -- server official time 9 pm and 9 am every 12 hours
end

function after_enter_leiting2(Player, map_copy)
end

function before_leave_leiting2(Player)
end

function map_copy_first_run_leiting2(map_copy)
end

function map_copy_run_leiting2(map_copy)
end

function map_copy_run_special_leiting2(map)
end

function map_run_leiting2(map)
end

function map_copy_close_leiting2(map_copy)
	--ClearAllSubMapCha(map_copy)
	--ClearAllSubMapMonster(map_copy)
end

function map_copy_before_close_leiting2(map_copy)
end

function can_open_entry_leiting2(map)
local Hour = GetNowTime()
if Hour == 1 or Hour == 3 or Hour == 5 or Hour == 7 or Hour == 9 or Hour == 11 or Hour == 13 or Hour == 15 or Hour == 17 or Hour == 19 or Hour == 21 or Hour == 23 then
    return 1
end
return 0

end