fx_version 'adamant'

game 'gta5'

description 'Script de location de véhicule par Xeltax'

version 'legacy'

server_scripts {
	"server.lua"
}

client_scripts {
	'src/RageUI.lua',
    'src/Menu.lua',
    'src/MenuController.lua',
    'src/components/*.lua',
    'src/elements/*.lua',
    'src/items/*.lua',

    "client.lua",
    "config.lua"
}