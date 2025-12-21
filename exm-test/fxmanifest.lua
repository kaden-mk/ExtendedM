fx_version 'cerulean'
game 'gta5'

name "exm-test"
description "Testing ground"
author "VOLTA"
version "1.0.0"

dependencies {
	'exm-interface',
	'exm-core'
}

shared_scripts {
	'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}