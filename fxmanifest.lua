fx_version 'cerulean'
game 'gta5'

name "pu_duty"
description "Standalone Duty resource"
author "ParuThePro"
version "1.0.0"
lua54 'yes'

shared_scripts {
	'@ox_lib/init.lua',
	'config.lua'
}

client_scripts {
	'client.lua'
}

server_scripts {
	'server.lua'
}
