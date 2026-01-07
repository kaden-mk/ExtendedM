local Native = EXMInterface.Native

local Config = EXMDebug.Config
local Utility = EXMDebug.Utility

local ExtendedM = exports['exm-core']:ExtendedM()

local exm_menu_names = Config.MENU_IDS.COMPONENTS.EXTENDEDM

local menu = Utility.CreateMenu
local sub = Native.SubMenu
local head = Native.Header

menu(exm_menu_names.MAIN, function()
    head(Config.HEADER_TEXT, "EXTENDEDM Features")

    sub("Vehicle Customization", exm_menu_names.VEHICLE_CUSTOMIZATION, "Customize the current vehicle you are in. (for testing LSC)")
    sub("Items Handler", exm_menu_names.ITEMS_HANDLER, "Main Handler for items.")
end)