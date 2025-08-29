print(">> Loading Ranking (init.lua)")

_PkP				= {}
_PkP.Server_Name	= "Phoenix Online - Ranking"
_PkP.path			=  GetResPath("../Addons/Ranking/")
_PkP.logfile		= _PkP.path.."records/"
_PkP.logfile2		= _PkP.path.."records2/"
_PkP.logfile3		= _PkP.path.."records3/"
_PkP.Recording		= {}

_PkP.Reward1st		= false 		-- Enable/Disable rewards for the first rank
_PkP.Reward2nd		= false 		-- Enable/Disable rewards for 2nd rank
_PkP.Reward3rd		= false 		-- Enable/Disable rewards for 3rd rank


_PkP.rewards		= {}
_PkP.rewards2		= {}
_PkP.rewards3		= {}

-- 1st rewards
_PkP.rewardAmount	= 1						-- slots required
_PkP.rewards[1]		= { id = 1032, amount = 3, gold = nil }

-- 2nd rewards
_PkP.rewardAmount2	= 1						-- slots required
_PkP.rewards2[1]	= { id = 1031 , amount = 5, gold = nil }

-- 3rd rewards
_PkP.rewardAmount3	= 1						-- slots required
_PkP.rewards3[1]	= { id = 1031 , amount = 3, gold = nil }


---------------
-- Maps List --
---------------
_PkP.Recording["garner2"]				= "Chaos Argent"
_PkP.Recording["glacierpk"]				= "Chaos Glacier"
_PkP.Recording["chaosicicle"]			= "Chaos Icicle"

-------------- --
-- Do not edit --
-------------- --
_PkP.Recording["overall"]				= "Phoenix Online Ranking"

--------------------
-- Save Now Month --
--------------------
function KD_StoreMonth()
	local month = tonumber(os.date("%m"))
	table.save({startingmonth = month},_PkP.logfile.."Reset Month.txt","w")
end

--------------------------------------
-- Re-Register Maps/ Reset function --
--------------------------------------
function RegisterMaps()
	local key = "Logs"
	if(file_exists(_PkP.logfile..key..".txt") ~= false) then
		local stable = table.load(_PkP.logfile..key..".txt","r")
		for i,v in pairs(_PkP.Recording)do
			if stable[i] == nil then
				stable[i] = {}
				table.save(stable,_PkP.logfile..key..".txt","w")
			end
		end
	else
		local stable = {}
		for i,v in pairs(_PkP.Recording)do
			stable[i] = {}
			table.save(stable,_PkP.logfile..key..".txt","w")
		end
	end
	KD_StoreMonth()
end
RegisterMaps()

--------------------------
-- Load Neccesary files --
--------------------------
dofile(_PkP.path.."/lib.lua")
dofile(_PkP.path.."/mainfuncs.lua")