print(">> Loading Auto Drop Event")

AutoDropEvent = {}
AutoDropEvent.Active = true
AutoDropEvent.Day = {
		[0] = true,	-- Sunday
		[1] = true,	-- Monday
		[2] = true,	-- Tuesday
		[3] = true,	-- Wednesday
		[4] = true,	-- Thursday
		[5] = true,	-- Friday
		[6] = true	-- Saturday
			}
AutoDropEvent.Hour = {
		[1] = true -- 20 pm

		
					}
AutoDropEvent.Rewards = {
	{2588, 01, 04},
	{2589, 01, 04},
	{2590, 01, 04},
	{2591, 01, 04},
	{2592, 01, 04},
	{2593, 01, 04},
	{2594, 01, 04},
	{2595, 01, 04},
	{2596, 01, 04},
	{2597, 01, 04}
	
						}

AutoDropEvent.Coordinates = {
	{PosX = 2222, PosY = 2787},
	{PosX = 2228, PosY = 2788},
	{PosX = 2234, PosY = 2785}
						}
				
function AutoDropEvent.DropEvent(map_copy, PosX, PosY, ItemID, Amount, Quality)
	local Monster = CreateChaEx(math.random(1, 4), PosX, PosY, 145, 50, map_copy)
	SetChaLifeTime(Monster, 1)
	GiveItem(Monster, 0, ItemID, Amount, Quality)
	RemoveChaItem(Monster, ItemID, Amount, 2, -1, 0, 1)
end
AutoDropEvent.MapFunc = function(map_copy)
	local Day = tonumber(os.date("%w"))
	local Hour = tonumber(os.date("%H"))
	local Minute = tonumber(os.date("%M"))
	local Second = tonumber(os.date("%S"))
	AutoDropEvent.Day[Day] = AutoDropEvent.Day[Day] or true
	AutoDropEvent.Hour[Hour] = AutoDropEvent.Hour[Hour] or true
	if AutoDropEvent.Day[Day] and AutoDropEvent.Hour[Hour] then
		if (Minute == 01) and Second == 0 then
			GMNotice("Hello everyone, There will be a drop event in Fantasy Town Font within 5 minutes. There will be three rounds and for each round there will be a drop 10x Reborn Coin. Ola a todos, Havera um evento de drop em Fantasy Town Font dentro de 2 minutos. Havera três rodadas e para cada rodada havera uma queda de 10x Reborn Coin. Hola a todos, habra un evento de entrega en Fantasy Town Font en 2 minutos. Habrá tres rondas y para cada ronda habra una gota 10x Reborn Coin.")
		end
		if (Minute == 02) and Second == 0 then
			GMNotice("Event started! First Round <<[Random Stuffs]>> at Fantasy Town Fount 327,742.")
		end
		if (Minute == 03) and Second == 0 then
			GMNotice("Second Round <<[Random Stuffs]>> at Fantasy Town Fount 327,742.")
		end
		if (Minute == 04) and Second == 0 then
			GMNotice("Third and Last Round: <<[Random Stuffs]>> at Fantasy Town Fount 327,742.")
		end
		if (Minute == 02 or Minute == 03 or Minute == 04) and Second == 0 then
			for A = 1, 10, 1 do
			local A = math.random(1, table.getn(AutoDropEvent.Rewards))
			local B = math.random(1, table.getn(AutoDropEvent.Coordinates))
			local ItemID = AutoDropEvent.Rewards[A][1]
			local Quantity = AutoDropEvent.Rewards[A][2]
			local Quality = AutoDropEvent.Rewards[A][3]
			local PosX = AutoDropEvent.Coordinates[B].PosX
			local PosY = AutoDropEvent.Coordinates[B].PosY
			AutoDropEvent.DropEvent(map_copy, PosX, PosY, ItemID, Quantity, Quality)
			end
		end
	end
end