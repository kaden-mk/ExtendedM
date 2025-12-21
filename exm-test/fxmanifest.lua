fx_version 'cerulean'
game 'gta5'

name "exm-test"
description "Testing ground"
author "VOLTA"
version "1.0.0"

dependency 'exm-interface'

shared_scripts {
	'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}