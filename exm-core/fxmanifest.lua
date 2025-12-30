fx_version 'cerulean'
game 'gta5'

name 'ExtendedM-Core'
author 'VOLTA'
description 'The core of the framework for all functions.'

use_experimental_fxv2_oal 'yes'

dependency 'exm-interface'

client_scripts {
    "client/lib/*.lua",
    "client/core/*.lua",
    "client/managers/*.lua",
    "client/atms/*.lua"
}

server_scripts {
    "server/**/*.lua"
}

shared_scripts {
    "shared/module.lua",
    "shared/lib/*.lua",
    "shared/config.lua",
    "shared/managers/store-manager.lua"
}
