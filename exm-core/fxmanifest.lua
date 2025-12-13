fx_version 'cerulean'
game 'gta5'

name 'ExtendedM-Core'
author 'VOLTA'
description 'The core of the framework for all functions.'

client_scripts {
    "client/core/utility.lua",
    "client/core/main.lua",

    "client/atms/atm-client.lua",
}

server_scripts {
    "server/core/players.lua",

    "server/atms/atm-server.lua"
}

shared_scripts {
    "shared/module.lua",
    "shared/config.lua"
}