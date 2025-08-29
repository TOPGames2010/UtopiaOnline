print(">> Loading Ranking (mainfuncs.lua)")

-----------------------------
-- Player Kill Player function
-----------------------------
function KD_PKP(ignore,p1,p2)
local map = GetChaMapName(p1)
local p1name = GetChaDefaultName(p1)
local p2name = GetChaDefaultName(p2)
	if(_PkP.Recording[map] ~= nil)then
		AddKill(p1)
		AddDeath(p2)
	end
end

-----------------------------
-- Reset Ranking Function
-----------------------------
function ResetPkPRanks()
	local Table,scoring = table.load(_PkP.logfile.."Logs.txt","r"),{}
	for i,v in pairs(Table["overall"])do local kills = v.kill scoring[i] = { score = kills} end
	local r1,r2,r3,r4,r5 = CalculateRanking( scoring )
	Notice("[Phoenix Online] Ranking has been reseted. 1st Winner is "..r1..", 2nd Winner is "..r2..", 3rd Winner is "..r3.." You can visit Kain for The Reward!")

	if(_PkP.Reward1st == true)then
		table.save({},_PkP.logfile..r1..".txt","w")
	end

	if(_PkP.Reward2nd == true)then
		table.save({},_PkP.logfile2..r2..".txt","w")
	end
	
	if(_PkP.Reward3rd == true)then
		table.save({},_PkP.logfile3..r3..".txt","w")
	end	
	os.remove(_PkP.logfile.."Logs.txt")
	RegisterMaps()
end

-----------------------------
-- Reset Timer
-----------------------------
function KD_PKP_TIMER(ignore,character)
	local month = tonumber(os.date("%m"))
	if(file_exists(_PkP.logfile.."Reset Month.txt") ~= false)then
		local tmonth = table.load(_PkP.logfile.."Reset Month.txt","r")
		if month ~= tmonth.startingmonth then
			ResetPkPRanks()
		end
	end
end

-------------------------
--Gatz--
-------------------------
function GlobalRanking()
	InitTrigger()
	TriggerCondition( 1, CheckIsPvPWinner, 1 )
	TriggerAction( 1, JumpPage, 4 )
	TriggerCondition( 2, CheckIsPvPWinner2, 1 )
	TriggerAction( 2, JumpPage, 5 )
	TriggerCondition( 3, CheckIsPvPWinner3, 1 )
	TriggerAction( 3, JumpPage, 6 )	
	TriggerFailure( 3, JumpPage,1)
	Start( GetMultiTrigger(), 3 )

	Talk(1,"Gatz: Hello, you can check mazes Kill/Death Ranking here!")
	Text(1,_PkP.Server_Name.." Top Ranking",JumpPage,2)
	Text(1,"I want to check my ranking in a maze",JumpPage,3)
	Text(1,"Please show me my status",PlayerPkPCheck)


	Talk(2,"Gatz: Please choose a maze to check the ranking!")
	Talk(3,"Gatz: Select the map you want to check your K/D inside!")
	Text(2,"Global Ranking",GetRankingListing,"overall")
	Text(3,"Global Ranking",PlayerPkPMazeCheck,"overall")
	for i,v in pairs(_PkP.Recording) do
		if(i ~= "overall")then
		Text(2,v.." Ranking",GetRankingListing,i)
		Text(3,v,PlayerPkPMazeCheck,i)
		end
	end

	Talk(4,"Gatz: Congratulations, you were the winner for the last month!")
	Text(4,"Please click here to recieve your reward",PvPWinnerReward)
	Talk(5,"Gatz: Congratulations, you were the 2nd winner for the last month!")
	Text(5,"Please click here to recieve your reward",PvPWinnerReward2)
	Talk(6,"Gatz: Congratulations, you were 3rd winner for the last month!")
	Text(6,"Please click here to recieve your reward",PvPWinnerReward3)	
end

-----------------------------
-- Hooks
------------------------------
Hook:AddPostHook("cha_timer",KD_PKP_TIMER)
Hook:AddPostHook("after_player_kill_player",KD_PKP)