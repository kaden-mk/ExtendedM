local Native = EXMInterface.Native
local ExtendedM = exports["exm-core"]:ExtendedM()

local Config = EXMDebug.Config
local Utility = EXMDebug.Utility

local player_menu_names = Config.MENU_IDS.COMPONENTS.PLAYER

local menu = Utility.CreateMenu
local sub = Native.SubMenu
local head = Native.Header
local button = Native.Button
local list = Native.ListItem
local range = ExtendedM.Utility.MakeRange

menu(player_menu_names.STATS_MODIFY, function()
    head(Config.HEADER_TEXT, "Modify stats")

    local add_cash = button("Add Cash", "Add cash to your character.")
    add_cash:On("click", function()
        local amount = ExtendedM.Utility.OnScreenKeyboardInput("Amount:", "", 9)
        if amount == nil then return end
    end)

    local add_bank = button("Add Bank", "Add bank to your character.")
    add_bank:On("click", function()
        local amount = ExtendedM.Utility.OnScreenKeyboardInput("Amount:", "", 9)
        if amount == nil then return end
    end)

    local give_weapon = button("Give Weapon", "Give a weapon to your character.")
    give_weapon:On("click", function()
        local weapon_name = ExtendedM.Utility.OnScreenKeyboardInput("Weapon:", "WEAPON_", 20)
        if weapon_name == nil then return end
        
        GiveWeaponToPed(PlayerPedId(), GetHashKey(weapon_name), 250, false, true)
    end)
end)