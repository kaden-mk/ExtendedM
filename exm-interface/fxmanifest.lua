fx_version 'cerulean'
game 'gta5'

name "ExtendedM-Interface"
description "Creates Native-Like UI used globally for EXM's resources."
author "VOLTA"
version "1.3.0"

use_experimental_fxv2_oal 'yes'

files {
    'src/**/*.lua'
}

client_scripts {
    'src/api/types.lua',
    'src/core/state.lua',
    'src/core/input.lua',
    'src/render/theme.lua',
    'src/render/utils.lua',
    'src/render/native-ui-renderer.lua',
    'src/core/core.lua',
    'src/components/native-ui/header.lua',
    'src/components/native-ui/button.lua',
    'src/components/native-ui/checkbox.lua',
    'src/components/native-ui/submenu.lua',
    'src/components/native-ui/list.lua',
    'src/api/native-ui-api.lua',
    'main.lua'
}