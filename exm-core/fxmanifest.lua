fx_version 'cerulean'
game 'gta5'

name 'ExtendedM-Core'
author 'VOLTA'
description 'The core of the framework for all functions.'

use_experimental_fxv2_oal 'yes'

dependency 'exm-interface'

client_scripts {
    '@exm-interface/main.lua',

    "client/lib/*.lua",
    "client/systems/**/*.lua",
    "client/systems/*.lua"
}

server_scripts {
    "server/lib/*.lua",
    "server/systems/inventory/*.lua",
    "server/systems/world/*.lua",
    "server/systems/player/*.lua",
}

shared_scripts {
    "shared/module.lua",
    "shared/lib/core/*.lua",
    "shared/lib/utils/*.lua",
    "shared/config.lua",
    "shared/lib/data/tunables_core.lua",
    "shared/lib/data/*.lua",
    "shared/lib/items/*.lua",
    "shared/lib/vehicles/*.lua",
    "shared/managers/store-manager.lua"
}