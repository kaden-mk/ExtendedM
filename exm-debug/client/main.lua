local Native = EXMInterface.Native

local Config = EXMDebug.Config
local Utility = EXMDebug.Utility

local component_names = Config.MENU_IDS.COMPONENTS

local sub = Native.SubMenu

Utility.CreateMenu(Config.MENU_IDS.MAIN_DEBUG, function()
    Native.Header(Config.HEADER_TEXT, Config.HEADER_TEXT)

    sub("Player", component_names.PLAYER.MAIN)
    sub("Vehicles", component_names.VEHICLES.MAIN)
    sub("World", component_names.WORLD.MAIN)
    sub("ExtendedM", component_names.EXTENDEDM.MAIN)
end)

RegisterCommand("open_debug_menu", function()
    Native.SetVisible(Config.MENU_IDS.MAIN_DEBUG, true)
end, false)

RegisterKeyMapping("open_debug_menu", "Open Debug Menu", "keyboard", "f5")