fx_version 'cerulean'
game 'gta5'

name "ExtendedM-Test"
description "For testing purposes only, shouldn't be loaded."
author "VOLTA"

data_file 'SCALEFORM_MOVIE' 'stream/*.gfx'

dependencies {
    'exm-core'
}

client_scripts {
    'main.lua'
}