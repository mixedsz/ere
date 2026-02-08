shared_script '@WaveShield/resource/include.lua'

fx_version 'cerulean'
games { 'gta5' }
lua54 'yes'
version '1.0.0'
author 'Kizo Redesign'
url 'https://discord.gg/stabledev'

ui_page 'web/build/index.html'

shared_scripts {
    '@ox_lib/init.lua',
    'data/shared.lua',
    'data/language.lua',
	'configuration.lua'
}

client_scripts {
    'data/data.lua',
    'client/functions/*.lua',
    'client/source/*.lua',
    'client/*.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'data/integration.lua',
    'server/functions/*.lua',
    'server/source/*.lua',
    'server/*.lua'
}

files {
    'web/build/**',
    'web/build/assets/**',
}

escrow_ignore {
    'configuration.lua',
    'data/*.lua',
    'server/source/*.lua',
    'client/source/*.lua',
}

