fx_version 'cerulean'
game 'gta5'

name 'ExtendedM-Debug'
author 'VOLTA'
description 'Debug Menu that shows all of ExtendedMs capabilities and more.'

use_experimental_fxv2_oal 'yes'

dependencies {
    'exm-core'
}

client_scripts {
    '@exm-interface/main.lua',
    
    "client/lib/*.lua",
    
    "client/components/player/menus/*.lua",
    "client/components/player/*.lua",

    "client/components/vehicles/*.lua",

    "client/components/world/*.lua",

    "client/components/extendedm/menus/*.lua",
    "client/components/extendedm/*.lua",

    "client/main.lua"
}

server_scripts {
}