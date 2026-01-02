fx_version 'cerulean'
game 'gta5'

name "exm-test"
description "Testing ground"
author "VOLTA"
version "1.0.0"

use_experimental_fxv2_oal 'yes'

dependencies {
	'exm-interface'
}

shared_scripts {
	'shared/*.lua'
}

client_scripts {
    '@exm-interface/main.lua',
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}