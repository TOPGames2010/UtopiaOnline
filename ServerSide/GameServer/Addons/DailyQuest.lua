print( "Loading Quest System.lua" )
questFuncPath							= GetResPath(string.format("../PlayerData/QuestFunc/%s.dat", "questFunc"))

function getYearBeginDayOfWeek(tm)
	local yearBegin 					= os.time{year = os.date("*t", tm).year, month = 1, day = 1}
	local yearBeginDayOfWeek 			= tonumber(os.date("%w", yearBegin))
	if (yearBeginDayOfWeek == 0) then
		yearBeginDayOfWeek 				= 7
	end
	return yearBeginDayOfWeek
end

function getDayAdd(tm)
	local yearBeginDayOfWeek 			= getYearBeginDayOfWeek(tm)
	local dayAdd 						= 0
	if (yearBeginDayOfWeek < 5) then
		dayAdd 							= (yearBeginDayOfWeek - 2)
	else 
		dayAdd 							= (yearBeginDayOfWeek - 9)
	end  
	return dayAdd
end

function getWeekNumberOfYear()
	local tm 							= os.time{year = tonumber(os.date("%Y")), month = tonumber(os.date("%m")), day = tonumber(os.date("%d"))}
	local dayOfYear 					= os.date("%j", tm)
	local dayAdd 						= getDayAdd(tm)
	local dayOfYearCorrected 			= dayOfYear + dayAdd
	if (dayOfYearCorrected < 0) then
		dayAdd 							= getDayAdd(os.time{year = os.date("*t", tm).year - 1, month = 1, day = 1})
		dayOfYear 						= dayOfYear + os.date("%j", (os.time{year = os.date("*t", tm).year - 1, month = 12, day = 31}))
		dayOfYearCorrected 				= dayOfYear + dayAdd
	end  
	local weekNum 						= math.floor((dayOfYearCorrected) / 7) + 1
	if ((dayOfYearCorrected > 0) and weekNum == 53) then
		if (getYearBeginDayOfWeek(os.time{year = os.date("*t", tm).year + 1, month = 1, day = 1}) < 5 ) then
			weekNum 					= 1
		end  
	end  
	return weekNum
end

function QuestFunc(Player, Mission, Type, Func)
	local MAC							= GetPlayerMac(Player)
	local IP							= GetPlayerIP(Player)
	local PID 							= GetCharID(Player)
	local Day 							= (tonumber(os.date("%Y")) * 10000) + (tonumber(os.date("%m")) * 100) + (tonumber(os.date("%d")))
	local Week 							= (tonumber(os.date("%Y")) * 100) + getWeekNumberOfYear()	
	if (file_exists(questFuncPath) == false) then
		DataFile:Init(questFuncPath, {}):Save()
	end
	local QuestLog						= DataFile:Init(questFuncPath, QuestLog):Load()
	if (QuestLog[MAC] == nil) then
		QuestLog[MAC]					= {}
		DataFile:Init(questFuncPath, QuestLog):Save()
	end
	if (QuestLog[MAC][Mission] == nil) then
		QuestLog[MAC][Mission]			= {}
		DataFile:Init(questFuncPath, QuestLog):Save()
	end
	if Type == "Daily" then
		if (QuestLog[MAC][Mission][Day] == nil) then
			QuestLog[MAC][Mission][Day] = {}
			QuestLog[MAC][Mission][Day].ID = PID
			QuestLog[MAC][Mission][Day].IP = IP
			QuestLog[MAC][Mission][Day].Completed = false
			DataFile:Init(questFuncPath, QuestLog):Save()
		end
		if Func == "Check" then
			if QuestLog[MAC][Mission][Day].ID == PID and QuestLog[MAC][Mission][Day].IP == IP and QuestLog[MAC][Mission][Day].Completed == false then
				return LUA_TRUE
			elseif QuestLog[MAC][Mission][Day].ID == PID and QuestLog[MAC][Mission][Day].IP == IP and QuestLog[MAC][Mission][Day].Completed == true then
				return LUA_FALSE				
			elseif QuestLog[MAC][Mission][Day].ID ~= PID and QuestLog[MAC][Mission][Day].IP == IP and QuestLog[MAC][Mission][Day].Completed == false then
				return LUA_FALSE
			end
		elseif Func == "Completed" then
			QuestLog[MAC][Mission][Day].Completed = true
			DataFile:Init(questFuncPath, QuestLog):Save()
			return LUA_TRUE
		end
	elseif Type == "Weekly" then
		if QuestLog[MAC][Mission][Week] == nil then
			QuestLog[MAC][Mission][Week] = {}
			QuestLog[MAC][Mission][Week].ID = PID
			QuestLog[MAC][Mission][Week].IP = IP
			QuestLog[MAC][Mission][Week].Completed = false		
			DataFile:Init(questFuncPath, QuestLog):Save()
		end
		if Func == "Check" then
			if QuestLog[MAC][Mission][Week].ID == PID and QuestLog[MAC][Mission][Week].IP == IP and QuestLog[MAC][Mission][Week].Completed == false then
				return LUA_TRUE
			elseif QuestLog[MAC][Mission][Week].ID == PID and QuestLog[MAC][Mission][Week].IP == IP and QuestLog[MAC][Mission][Week].Completed == true then
				return LUA_FALSE				
			elseif QuestLog[MAC][Mission][Week].ID ~= PID and QuestLog[MAC][Mission][Week].IP == IP and QuestLog[MAC][Mission][Week].Completed == false then
				return LUA_FALSE		
			end
		elseif Func == "Completed" then
			QuestLog[MAC][Mission][Week].Completed = true
			DataFile:Init(questFuncPath, QuestLog):Save()
			return LUA_TRUE
		end
	end
end
--quest 1

	
function DailyQuest001()	
	DefineMission(850, "Daily Quest: Number 1", 850)
	MisBeginTalk("Hunt this for me so you will be rewarded!")

	MisBeginCondition(NoMission, 850)
	MisBeginCondition(QuestFunc, 850, "Daily", "Check")
	MisBeginAction(AddMission, 850)
	MisBeginAction(AddTrigger, 8501, TE_KILL, 669, 1)
	MisBeginAction(AddTrigger, 8502, TE_KILL, 670, 1)
	MisBeginAction(AddTrigger, 8503, TE_KILL, 671, 1)
	MisBeginAction(AddTrigger, 8504, TE_GETITEM, 4543, 1)
	MisBeginAction(AddTrigger, 8505, TE_GETITEM, 1478, 1)
	MisCancelAction(ClearMission, 850)

	MisNeed(MIS_NEED_DESP, "You must help me kill x50 Imaginary Snow Doll, x50 	Snow Doll Spirit, x50 Evil Snow Doll and bring me x50 Wood and x50 Sashimi for you to get the item rewards!")	
	MisNeed(MIS_NEED_KILL, 669, 1, 14, 1)
	MisNeed(MIS_NEED_KILL, 670, 1, 24, 1)
	MisNeed(MIS_NEED_KILL, 671, 1, 34, 1)
	MisNeed(MIS_NEED_ITEM, 4543, 1, 44, 1)
	MisNeed(MIS_NEED_ITEM, 1478, 1, 54, 1)
	
	
	MisHelpTalk("")	
	MisResultTalk("")
	MisResultCondition(HasMission, 850)
	MisResultCondition(HasFlag, 850, 14)
	MisResultCondition(HasFlag, 850, 24)
	MisResultCondition(HasFlag, 850, 34)
	MisResultCondition(HasItem, 4543, 1 )
	MisResultCondition(HasItem, 1478, 1 )
	MisResultCondition(QuestFunc, 850, "Daily", "Check")
	MisResultAction(ClearMission, 850)
	MisResultAction(QuestFunc, 850, "Daily", "Completed")
	MisResultBagNeed(2)
	
	MisPrize(MIS_PRIZE_ITEM, 0972, 1, 4)
	MisPrize(MIS_PRIZE_ITEM, 1035, 3, 4)
	MisPrizeSelAll()

	InitTrigger()
	TriggerCondition(1, IsMonster, 669)
	TriggerAction(1, AddNextFlag, 850, 14, 1)
	RegCurTrigger(8501)
	
	InitTrigger()
	TriggerCondition(1, IsMonster, 670)
	TriggerAction(1, AddNextFlag, 850, 24, 1)
	RegCurTrigger(8502)
	
	InitTrigger()
	TriggerCondition(1, IsMonster, 671)
	TriggerAction(1, AddNextFlag, 850, 34, 1)
	RegCurTrigger(8503)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4543)	
	TriggerAction( 1, AddNextFlag, 850, 44, 1 )
	RegCurTrigger( 8504 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1478)	
	TriggerAction( 1, AddNextFlag, 850, 54, 1 )
	RegCurTrigger( 8505 )
	
	
end
	
DailyQuest001()