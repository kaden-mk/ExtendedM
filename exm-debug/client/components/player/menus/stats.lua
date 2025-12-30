---@type EXMInterface
local Interface = exports["exm-interface"]:EXMInterface()
---@type ExtendedM
local ExtendedM = exports["exm-core"]:ExtendedM()

local Native = Interface.Native

local Config = EXMDebug.Config
local Utility = EXMDebug.Utility

local player_menu_names = Config.MENU_IDS.COMPONENTS.PLAYER

local menu = Utility.CreateMenu
local sub = Native.SubMenu
local head = Native.Header
local button = Native.Button
local list = Native.ListItem
local range = ExtendedM.Utility.MakeRange
local label = Native.Label

menu(player_menu_names.STATS_MODIFY, function()
    head(Config.HEADER_TEXT, "Modify stats")

    -- in here you'll be able to modify your cash, bank & weapons directly.
end)