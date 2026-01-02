local Native = EXMInterface.Native

local Config = EXMDebug.Config
local Utility = EXMDebug.Utility

local sub = Native.SubMenu

Utility.CreateMenu(Config.MENU_IDS.MAIN_DEBUG, function()
    Native.Header(Config.HEADER_TEXT, Config.HEADER_TEXT)

    sub("Player", Config.MENU_IDS.COMPONENTS.PLAYER.MAIN)
    sub("Vehicles", Config.MENU_IDS.COMPONENTS.VEHICLES.MAIN)
    sub("World", Config.MENU_IDS.COMPONENTS.WORLD.MAIN)
end)

RegisterCommand("open_debug_menu", function()
    Native.SetVisible(Config.MENU_IDS.MAIN_DEBUG, true)
end, false)

RegisterKeyMapping("open_debug_menu", "Open Debug Menu", "keyboard", "f5")