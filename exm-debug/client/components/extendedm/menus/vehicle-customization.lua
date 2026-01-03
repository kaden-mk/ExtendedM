local Native = EXMInterface.Native

local Config = EXMDebug.Config
local Utility = EXMDebug.Utility

local exm_menu_names = Config.MENU_IDS.COMPONENTS.EXTENDEDM

local menu = Utility.CreateMenu
local sub = Native.SubMenu
local head = Native.Header

menu(exm_menu_names.VEHICLE_CUSTOMIZATION, function()
    head(Config.HEADER_TEXT, "Los Santos Customs")

    
end)