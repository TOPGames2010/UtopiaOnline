print(">> Loading Ranking (lib.lua)")

function AddKill(c)
	local key = "Logs"
	local name = GetChaDefaultName(c)
	local map = GetChaMapName(c)
	local stable1 = table.load(_PkP.logfile..key..".txt","r")
	local stable = stable1[map]
	if(stable1[map][name] ~= nil)then	
		local k = stable1[map][name].kill
		local d = stable1[map][name].death
		local r = stable1[map][name].ratio
		stable1[map][name] = {kill = k + 1 , death = d , ratio = r }
		table.save(stable1,_PkP.logfile..key..".txt","w")
	else
		stable1[map][name] = {kill = 1 , death = 0 , ratio = 0 }
		table.save(stable1,_PkP.logfile..key..".txt","w")
	end
	if(stable1["overall"][name] == nil)then
		stable1["overall"][name] = {kill = 0 , death = 0 , ratio = 0 }
	end
	local k0 = stable1["overall"][name].kill
	local d0 = stable1["overall"][name].death
	local r0 = stable1["overall"][name].ratio
	stable1["overall"][name] = {kill = k0 + 1 , death = d0 , ratio = r0 }
	table.save(stable1,_PkP.logfile..key..".txt","w")
end

function AddDeath(c)
	local key = "Logs"
	local name = GetChaDefaultName(c)
	local map = GetChaMapName(c)
	local stable1 = table.load(_PkP.logfile..key..".txt","r")
	local stable = stable1[map]
	if(stable1[map][name] ~= nil)then	
		local k = stable1[map][name].kill
		local d = stable1[map][name].death
		local r = stable1[map][name].ratio
		stable1[map][name] = {kill = k , death = d + 1, ratio = r }
		table.save(stable1,_PkP.logfile..key..".txt","w")
	else
		stable1[map][name] = {kill = 0 , death = 1 , ratio = 0 }
		table.save(stable1,_PkP.logfile..key..".txt","w")
	end
	if(stable1["overall"][name] == nil)then
		stable1["overall"][name] = {kill = 0 , death = 0 , ratio = 0 }
	end
	local k0 = stable1["overall"][name].kill
	local d0 = stable1["overall"][name].death
	local r0 = stable1["overall"][name].ratio
	stable1["overall"][name] = {kill = k0 , death = d0 + 1 , ratio = r0 }
	table.save(stable1,_PkP.logfile..key..".txt","w")
end


function CalculateRanking( tab )
	local rank1 = { name=nil, score=-1}
	local rank2 = { name=nil, score=-1}
	local rank3 = { name=nil, score=-1}
	local rank4 = { name=nil, score=-1}
	local rank5 = { name=nil, score=-1}
	local rank6 = { name=nil, score=-1}
	local rank7 = { name=nil, score=-1}
	local rank8 = { name=nil, score=-1}
	local rank9 = { name=nil, score=-1}
	local rank10 = { name=nil, score=-1}
	for charname,attributes in next,tab do
		if (attributes.score > rank1.score) then
			rank10.name = rank9.name
			rank10.score = rank9.score				

			rank9.name = rank8.name
			rank9.score = rank8.score				
									
			rank8.name = rank7.name
			rank8.score = rank7.score				

			rank7.name = rank6.name
			rank7.score = rank6.score		

			rank6.name = rank5.name
			rank6.score = rank5.score

			rank5.name = rank4.name
			rank5.score = rank4.score

			rank4.name = rank3.name
			rank4.score = rank3.score

			rank3.name = rank2.name
			rank3.score = rank2.score

			rank2.name = rank1.name
			rank2.score = rank1.score

			rank1.name = charname
			rank1.score = attributes.score
		else 
			if (attributes.score > rank2.score) then	
				rank10.name = rank9.name
				rank10.score = rank9.score				

				rank9.name = rank8.name
				rank9.score = rank8.score				
				
				rank8.name = rank7.name
				rank8.score = rank7.score				
				
				rank7.name = rank6.name
				rank7.score = rank6.score		
				
				rank6.name = rank5.name
				rank6.score = rank5.score

				rank5.name = rank4.name
				rank5.score = rank4.score		 

				rank4.name = rank3.name
				rank4.score = rank3.score	

				rank3.name = rank2.name
				rank3.score = rank2.score

				rank2.name = charname
				rank2.score = attributes.score
			else
				if (attributes.score > rank3.score) then	
					rank10.name = rank9.name
					rank10.score = rank9.score				

					rank9.name = rank8.name
					rank9.score = rank8.score				

					rank8.name = rank7.name
					rank8.score = rank7.score				

					rank7.name = rank6.name
					rank7.score = rank6.score		

					rank6.name = rank5.name
					rank6.score = rank5.score

					rank5.name = rank4.name
					rank5.score = rank4.score	  
					
					rank4.name = rank3.name
					rank4.score = rank3.score

					rank3.name = charname
					rank3.score = attributes.score
				else
					if (attributes.score > rank4.score) then
						rank10.name = rank9.name
						rank10.score = rank9.score				

						rank9.name = rank8.name
						rank9.score = rank8.score				

						rank8.name = rank7.name
						rank8.score = rank7.score				

						rank7.name = rank6.name
						rank7.score = rank6.score		

						rank6.name = rank5.name
						rank6.score = rank5.score

						rank5.name = rank4.name
						rank5.score = rank4.score

						rank4.name = charname
						rank4.score = attributes.score
					else
						if (attributes.score > rank5.score) then	
							rank10.name = rank9.name
							rank10.score = rank9.score				

							rank9.name = rank8.name
							rank9.score = rank8.score				

							rank8.name = rank7.name
							rank8.score = rank7.score				

							rank7.name = rank6.name
							rank7.score = rank6.score		

							rank6.name = rank5.name
							rank6.score = rank5.score

							rank5.name = charname
							rank5.score = attributes.score
						else
							if (attributes.score > rank6.score) then
								rank10.name = rank9.name
								rank10.score = rank9.score				

								rank9.name = rank8.name
								rank9.score = rank8.score				

								rank8.name = rank7.name
								rank8.score = rank7.score				

								rank7.name = rank6.name
								rank7.score = rank6.score		

								rank6.name = charname
								rank6.score = attributes.score
							else
								if (attributes.score > rank7.score) then
									rank10.name = rank9.name
									rank10.score = rank9.score				
									
									rank9.name = rank8.name
									rank9.score = rank8.score				
									
									rank8.name = rank7.name
									rank8.score = rank7.score				
									
									rank7.name = charname
									rank7.score = attributes.score							
								else
									if (attributes.score > rank8.score) then
										rank10.name = rank9.name
										rank10.score = rank9.score				
									
										rank9.name = rank8.name
										rank9.score = rank8.score				
									
										rank8.name = charname
										rank8.score = attributes.score											
									else
										if (attributes.score > rank9.score) then
											rank10.name = rank9.name
											rank10.score = rank9.score				
									
											rank9.name = charname
											rank9.score = attributes.score											
										else
											if (attributes.score > rank10.score) then
												rank10.name = charname
												rank10.score = attributes.score
											end 
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
	return rank1.name,rank2.name,rank3.name,rank4.name,rank5.name,rank6.name,rank7.name,rank8.name,rank9.name,rank10.name
end

function CheckIsPvPWinner(character,cond)
	local name,c = GetChaDefaultName(character),0
	if(file_exists(_PkP.logfile..name..".txt") == true)then
		c = 1 else c = 0
	end
	if c == cond then return LUA_TRUE elseif c ~= cond then return LUA_FALSE end
end

function CheckIsPvPWinner2(character,cond)
	local name,c = GetChaDefaultName(character),0
	if(file_exists(_PkP.logfile2..name..".txt") == true)then
		c = 1 else c = 0
	end
	if c == cond then return LUA_TRUE elseif c ~= cond then return LUA_FALSE end
end

function CheckIsPvPWinner3(character,cond)
	local name,c = GetChaDefaultName(character),0
	if(file_exists(_PkP.logfile3..name..".txt") == true)then
		c = 1 else c = 0
	end
	if c == cond then return LUA_TRUE elseif c ~= cond then return LUA_FALSE end
end

function PvPWinnerReward(character)
	local name = GetChaDefaultName(character)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
	if Item_CanGet <= _PkP.rewardAmount then
		HelpInfoX(character ,0,"You need to have atleast ".._PkP.rewardAmount.." Empty slots in your bag to recieve the reward")
		return
	end
	for i,v in pairs(_PkP.rewards) do
		GiveItem(character,0,_PkP.rewards[i].id,_PkP.rewards[i].amount,4)
		--AddMoney(cha,0,_PkP.rewards[i].gold)
	end
	os.remove(_PkP.logfile..name..".txt")
end

function PvPWinnerReward2(character)
	local name = GetChaDefaultName(character)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
	if Item_CanGet <= _PkP.rewardAmount2 then
		HelpInfoX(character ,0,"You need to have atleast ".._PkP.rewardAmount2.." Empty slots in your bag to recieve the reward")
		return
	end
	for i,v in pairs(_PkP.rewards2) do
		GiveItem(character,0,_PkP.rewards2[i].id,_PkP.rewards2[i].amount,4)
		--AddMoney(cha,0,_PkP.rewards2[i].gold)
	end
	os.remove(_PkP.logfile2..name..".txt")
end

function PvPWinnerReward3(character)
	local name = GetChaDefaultName(character)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
	if Item_CanGet <= _PkP.rewardAmount3 then
		HelpInfoX(character ,0,"You need to have atleast ".._PkP.rewardAmount3.." Empty slots in your bag to recieve the reward")
		return
	end
	for i,v in pairs(_PkP.rewards3) do
		GiveItem(character,0,_PkP.rewards3[i].id,_PkP.rewards3[i].amount,4)
		--AddMoney(cha,0,_PkP.rewards3[i].gold)
	end
	os.remove(_PkP.logfile3..name..".txt")
end


function turn_number(na)
	local num = tostring(na)
	local line,a = string.gsub(num,"%.",",")
	local position = string.find(line, "[ ,]*//")
	if (position ~= 1) then
		local data = split(line,",")
		local d1 = tonumber(data[1])
		local d2 = tonumber(data[2])
		if d2 == nil then
		return na
		end
		if(d2/100) < 0.5 then
			return d1
		elseif(d2/100) >= 0.5 then
			return (d1 + 1)
		end
	end
end

function PlayerPkPCheck(character)
	local key = "Logs"
	local Table = table.load(_PkP.logfile..key..".txt","r")
	local name = GetChaDefaultName(character)
	if(Table["overall"][name] == nil)then
		SystemNotice(character,"You are not listed in the ranking yet! You need to practicipate in more PvPs")
		return LUA_FALSE
	else
		local kills = Table["overall"][name].kill
		local death = Table["overall"][name].death
		local ratio = (tonumber(kills)/tonumber(death))
		if death == 0 then
		ratio = kills
		end
		HelpInfoX(character,0,"[[ "..name.." ]] Global Ranking_* Kills : "..kills.."_* Death : "..death.."_* Ratio : "..ratio.."")
	end
end

function PlayerPkPMazeCheck(character,map)
	local key = "Logs"
	local Table = table.load(_PkP.logfile..key..".txt","r")
	local name = GetChaDefaultName(character)
	if(Table[map][name] == nil)then
		SystemNotice(character,"You are not listed in this ranking yet! You need to practicipate in more PvPs inside ".._PkP.Recording[map].."!")
		return LUA_FALSE
	else
	local kills = Table[map][name].kill
	local death = Table[map][name].death
	HelpInfoX(character,0,"Your [[ ".._PkP.Recording[map].." ]]  Ranking_* Kills : "..kills.."_* Death : "..death.."")
	end
end

function GetRankingListing(character,map)
	local key = "Logs"
	local Table = table.load(_PkP.logfile..key..".txt","r")
	local scoring = {}
	for i,v in pairs(Table[map])do
		local kills = v.kill
		scoring[i] = { score = kills}
	end
	local r1,r2,r3,r4,r5,r6,r7,r8,r9,r10 = CalculateRanking( scoring )
	local kills1,kills2,kills3,kills4,kills5,kills6,kills7,kills8,kills9,kills10 = 0,0,0,0,0,0,0,0,0,0
	local death1,death2,death3,death4,death5,death6,death7,death8,death9,death10 = 0,0,0,0,0,0,0,0,0,0
	if r1 == nil then
		r1 = "None"
		kills1 = "0"
		death1 = "0"
		else
		r1 = r1
		kills1 = Table[map][r1].kill
		death1 = Table[map][r1].death
	end
	if r2 == nil then
		r2 = "None"
		kills2 = "0"
		death2 = "0"
		else
		r2 = r2
		kills2 = Table[map][r2].kill
		death2 = Table[map][r2].death
	end
	if r3 == nil then
		r3 = "None"
		kills3 = "0"
		death3 = "0"
		else
		r3 = r3
		kills3 = Table[map][r3].kill
		death3 = Table[map][r3].death
	end
	if r4 == nil then
		r4 = "None"
		kills4 = "0"
		death4 = "0"
		else
		r4 = r4
		kills4 = Table[map][r4].kill
		death4 = Table[map][r4].death
	end
	if r5 == nil then
		r5 = "None"
		kills5 = "0"
		death5 = "0"
		else
		r5 = r5
		kills5 = Table[map][r5].kill
		death5 = Table[map][r5].death
	end
	if r6 == nil then
		r6 = "None"
		kills6 = "0"
		death6 = "0"
		else
		r6 = r6
		kills6 = Table[map][r6].kill
		death6 = Table[map][r6].death
	end	
	if r7 == nil then
		r7 = "None"
		kills7 = "0"
		death7 = "0"
		else
		r7 = r7
		kills7 = Table[map][r7].kill
		death7 = Table[map][r7].death
	end	
	if r8 == nil then
		r8 = "None"
		kills8 = "0"
		death8 = "0"
		else
		r8 = r8
		kills8 = Table[map][r8].kill
		death8 = Table[map][r8].death
	end	
	if r9 == nil then
		r9 = "None"
		kills9 = "0"
		death9 = "0"
		else
		r9 = r9
		kills9 = Table[map][r9].kill
		death9 = Table[map][r9].death
	end	
	if r10 == nil then
		r10 = "None"
		kills10 = "0"
		death10 = "0"
		else
		r10 = r10
		kills10 = Table[map][r10].kill
		death10 = Table[map][r10].death
	end	
	HelpInfoX(character,0,"[[".._PkP.Recording[map].."]] Ranking List_Rank 1 : "..r1.." ("..kills1.."/"..death1..") K/D_Rank 2 : "..r2.." ("..kills2.."/"..death2..") K/D_Rank 3 : "..r3.." ("..kills3.."/"..death3..") K/D_Rank 4 : "..r4.." ("..kills4.."/"..death4..") K/D_Rank 5 : "..r5.." ("..kills5.."/"..death5..") K/D_Rank 6 : "..r6.." ("..kills6.."/"..death6..") K/D_Rank 7 : "..r7.." ("..kills7.."/"..death7..") K/D_Rank 8 : "..r8.." ("..kills8.."/"..death8..") K/D_Rank 9 : "..r9.." ("..kills9.."/"..death9..") K/D_Rank 10 : "..r10.." ("..kills10.."/"..death10..") K/D")
end