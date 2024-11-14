fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'SirAlpakaLeon'
description 'this is a fivem repairkit script with ox_lib'
version '1.0.0'

client_scripts {
	'client/main.lua',
	'config.lua'
}

server_scripts {
	'server/main.lua',
	'config.lua'
}

shared_scripts {
	'@ox_lib/init.lua',
	'@es_extended/imports.lua'
}

dependencys {
	'ox_lib',
	'es_extended'
}