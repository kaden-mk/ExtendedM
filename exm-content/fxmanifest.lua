fx_version 'cerulean'
game 'gta5'

name 'ExtendedM-Content'
author 'VOLTA'
description 'Uses ExtendedMs managers & systems to create content off of them.'

dependencies {
    'exm-core',
    'exm-interface'
}

client_scripts {

}

server_scripts {}

shared_scripts {
    "stores/config.lua",
    "stores/definitions/weapon.lua",
    "stores/init.lua",
}
