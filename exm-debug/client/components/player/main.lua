---@type EXMInterface
local Interface = exports["exm-interface"]:EXMInterface()
local Native = Interface.Native

local Config = EXMDebug.Config
local Utility = EXMDebug.Utility

local player_menu_names = Config.MENU_IDS.COMPONENTS.PLAYER

local menu = Utility.CreateMenu
local sub = Native.SubMenu
local head = Native.Header

menu(player_menu_names.MAIN, function()
    head(Config.HEADER_TEXT, "Player Menu")

    sub("Ped Customization", player_menu_names.PED_CUSTOMIZATION, "Control your ped.")
    sub("Modify Stats", player_menu_names.STATS_MODIFY, "Modify your player stats.")
end)