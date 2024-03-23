fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'Paru'
description 'Global Duty for ox_core'
version '1.0'

shared_scripts {
    'config.lua',
	'@ox_lib/init.lua',
}

client_scripts {
	'client/*.lua',
    '@ox_core/imports/client.lua',
}

server_scripts {
	'server/*.lua',
    '@ox_core/imports/server.lua'
}