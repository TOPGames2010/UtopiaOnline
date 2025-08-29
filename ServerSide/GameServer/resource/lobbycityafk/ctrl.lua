--------------------------------------------------------------------------
--									--
--									--
--				ctrl.lua				--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading lobbycityafk Ctrl.lua" )


--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)

end


function get_map_entry_pos_lobbycityafk()   --设置入口的位置的坐标（坐标（米））
return 0,0
end

function init_entry(map)

end

function after_enter_lobbycityafk( role , map_copy )
end

function before_leave_lobbycityafk( role )
end

function map_copy_first_run_lobbycityafk( map_copy )

end

function map_copy_run_lobbycityafk( map_copy )
end
function map_copy_run_special_lobbycityafk(map_copy)
end

--每5秒执行一次的
function map_run_lobbycityafk( map )
end

--地图关闭时执行
function map_copy_close_lobbycityafk ( map_copy )
end
		
--地图开关判断——————————————————————————————————————————

function can_open_entry_lobbycityafk( map ) 
return 0
end 