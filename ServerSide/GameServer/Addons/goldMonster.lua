MonsterMoney = {}
--Stone Golem
MonsterMoney[245] = 5000
--Treant
MonsterMoney[107] = 5000
--Ref Island
MonsterMoney[239] = 50000
--Thundoria Mirage
MonsterMoney[964] = 130000
MonsterMoney[966] = 130000
MonsterMoney[972] = 130000
MonsterMoney[973] = 130000
MonsterMoney[965] = 130000
MonsterMoney[726] = 130000
--Demonic World
MonsterMoney[669] = 250000
MonsterMoney[670] = 250000
MonsterMoney[671] = 250000
MonsterMoney[672] = 250000
MonsterMoney[673] = 250000
MonsterMoney[674] = 250000
MonsterMoney[695] = 250000
MonsterMoney[696] = 250000
MonsterMoney[697] = 250000
MonsterMoney[698] = 250000
MonsterMoney[701] = 250000
MonsterMoney[725] = 250000
MonsterMoney[726] = 250000
--Black Dragon Mobs Lance,Carsise,Ami,Phyl
MonsterMoney[883] = 450000
MonsterMoney[884] = 450000
MonsterMoney[885] = 450000
MonsterMoney[886] = 450000
--B1 and B2 Chests
MonsterMoney[715] = 650000
MonsterMoney[716] = 650000
--Demonic World 1 and 2 Bosses
MonsterMoney[678] = 1000000	--Snowman Warlord
MonsterMoney[679] = 1000000	--Wandering Soul
--Phoenix Island Mini Bosses
MonsterMoney[805] = 1000000 --Despair Knight - Saro
MonsterMoney[757] = 700000	--Abyss Mudmonster - Karu
MonsterMoney[786] = 700000 --Abyss Prisoner - Aruthur
MonsterMoney[776] = 700000 --Abyss Demon - Sacrois
MonsterMoney[788] = 700000 --Abyss Beast - Kuroo
MonsterMoney[74] = 700000 --Abyss Lord - Phantom Baron
MonsterMoney[1008] = 700000 --Abyss Lord - Demon Flame
MonsterMoney[1007] = 700000 --Abyss Lord - Evil Beast
MonsterMoney[1009] = 700000 --Abyss Lord - Tyran
--Abbadon Bosses
MonsterMoney[974] = 1500000 --Despair Knight - Saro
MonsterMoney[975] = 1500000	--Abyss Mudmonster - Karu
MonsterMoney[976] = 1500000 --Abyss Prisoner - Aruthur
MonsterMoney[977] = 1500000 --Abyss Demon - Sacrois
MonsterMoney[978] = 1500000 --Abyss Beast - Kuroo
MonsterMoney[979] = 1500000 --Abyss Lord - Phantom Baron
MonsterMoney[980] = 1500000 --Abyss Lord - Demon Flame
MonsterMoney[981] = 1500000 --Abyss Lord - Evil Beast
MonsterMoney[982] = 1500000 --Abyss Lord - Tyran
MonsterMoney[983] = 1500000 --Abyss Lord - Phoenix
MonsterMoney[984] = 1500000 --Abyss Lord - Despair
MonsterMoney[985] = 1500000 --Abyss Lord - Drakan	Black Dragon Ami
MonsterMoney[986] = 1500000 --Abyss Lord - Tidal
MonsterMoney[987] = 2500000 --Abyss Lord - Hardin
MonsterMoney[988] = 2500000 --Abyss Supreme - Kara
--Black Dragon Bosses
MonsterMoney[789] = 2500000 --Abyss Supreme - Kara
--Aurora Bosses
MonsterMoney[1109] = 2000000 --Fury Kara
MonsterMoney[1105] = 1000000 --Firm Guard
MonsterMoney[1113] = 1000000 --Vicious Relic Protector
MonsterMoney[1117] = 2000000 --Morpheus Abyss Demon
--
function GiveMoneyToKiller(ignore, mob, player)

	local mobID = GetChaID(mob)
	if(MonsterMoney[mobID] ~= nil)then
		AddMoney(player, 0, MonsterMoney[mobID])
	end

end
Hook:AddPostHook("GetExp_PKM", GiveMoneyToKiller)
