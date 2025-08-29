addon				= {}
addon.rootDir		= GetResPath('../addons/')
addon.files			=
{
	'gameserver.lua',
	'packet.lua',
	'utils.lua',
	'chathandler.lua',
	'itempre.lua',
	'npcexploit.lua',
	'extNpc.lua',
	'amplifiers.lua',
	'make.lua',
	'guild.lua',
	'Starter.lua',
	'IP-MAC Map Restriction.lua',
	'goldMonster.lua',
	'Skills.lua',
	'GemVouchers.lua',
	'VIPCards.lua',
	'goldstore.lua',
	'pvp.lua',
	'QuestSystem/Quest Data.lua',
	'QuestSystem/Quest System.lua',
}

print("--------------------------------------------------")
print("[**] Addon Files [**]")
addon.unpack = function()
	for i = 1, table.getn(addon.files) do
		dofile(addon.rootDir..addon.files[i])
		print("-- [Loading] "..addon.files[i])
	end
end

addon.unpack()