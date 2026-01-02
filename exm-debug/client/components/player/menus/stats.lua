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

        ExtendedM.Player.AddMoney(tonumber(amount))
    end)

    local add_bank = button("Add Bank", "Add bank to your character.")
    add_bank:On("click", function()
        local amount = ExtendedM.Utility.OnScreenKeyboardInput("Amount:", "", 9)
        if amount == nil then return end

        ExtendedM.Player.AddAccountMoney("bank", tonumber(amount))
    end)

    local give_weapon = button("Give Weapon", "Give a weapon to your character.")
    give_weapon:On("click", function()
        local weapon_name = ExtendedM.Utility.OnScreenKeyboardInput("Weapon:", "WEAPON_", 100)
        if weapon_name == nil then return end
        
        GiveWeaponToPed(PlayerPedId(), GetHashKey(weapon_name), 250, false, true)
    end)

    local remove_weapons = button("Remove All Weapons", "Remove all weapons from your character.")
    remove_weapons:On("click", function()
        RemoveAllPedWeapons(PlayerPedId(), true)
    end)

    local heal_player = button("Heal Player", "Heal your character to max health.")
    heal_player:On("click", function()
        SetEntityHealth(PlayerPedId(), 200)
    end)

    local set_armor = button("Set Armor", "Set your character's armor.")
    set_armor:On("click", function()
        local amount = ExtendedM.Utility.OnScreenKeyboardInput("Armor (0-100):", "100", 3)
        if amount == nil then return end
        
        SetPedArmour(PlayerPedId(), tonumber(amount))
    end)

    local revive_player = button("Revive", "Revive your character.")
    revive_player:On("click", function()
        TriggerEvent("exm-ambulance:revive")
    end)
end)