-- TODO: Create a store handler that easily gives access between server & client for easy modification.

---@type ExtendedM
local ExtendedM = exports["exm-core"]:ExtendedM()
local StoreManager = ExtendedM.StoreManager
local IS_SERVER = IsDuplicityVersion()

local Interface, display_weapons, category_menu_id, main_menu_id
local selected_category = 0

if not IS_SERVER then
    ---@type EXMInterface
    Interface = exports["exm-interface"]:EXMInterface()

    category_menu_id = Interface.RegisterMenu(function()
        Interface.SpriteHeader("shopui_title_gunclub", "shopui_title_gunclub", ExtendedM.Utility.GetWeaponGroupNameFromHash(selected_category))

        local cash = ExtendedM.GetPlayerData().cash

        for hash, price in pairs(display_weapons) do
            if GetWeapontypeGroup(hash) == selected_category then
                local label = ExtendedM.Enum.WEAPON_LABELS[hash]
                local color = cash >= price and "~g~" or "~r~"
                Interface.Button(GetLabelText(label.name), GetLabelText(label.desc), color .. "$" .. ExtendedM.Utility.Comma(price))
            end
        end
    end)

    main_menu_id = Interface.RegisterMenu(function()
        Interface.SpriteHeader("shopui_title_gunclub", "shopui_title_gunclub", "WEAPONS")
        if Interface.WentBack(category_menu_id) then selected_category = 0 end

        local shown = {}
        for hash in pairs(display_weapons) do
            local group = GetWeapontypeGroup(hash)
            if not shown[group] then
                shown[group] = true
                if Interface.SubMenu(ExtendedM.Utility.GetWeaponGroupNameFromHash(group), category_menu_id) then
                    selected_category = group
                    Interface.ResetSelection(category_menu_id)
                end
            end
        end
    end)
end

--- Store Types
StoreManager.CreateStoreType("WEAPONS", {
    callback = function(data)
        if not IS_SERVER then
            StoreManager.CreateInteractionArea(data.interaction_position, 1, function()
                display_weapons = data.weapons
                Interface.SetVisible(main_menu_id, true)
            end, "browse weapons.")
        end
    end
})

--- Store Data
StoreManager.GenerateStore("WEAPONS", {
    interaction_position = vector3(252.88, -49.17, 69.94),
    weapons = {
        WEAPON_PISTOL = 750,
        WEAPON_COMBATPISTOL = 1200,
        WEAPON_SMG = 2000,
        WEAPON_COMBATPDW = 3500,
        WEAPON_ASSAULTRIFLE = 5000,
        WEAPON_ASSAULTRIFLE_MK2 = 5500,
        WEAPON_CARBINERIFLE = 6500,
        WEAPON_CARBINERIFLE_MK2 = 7000,
        WEAPON_SPECIALCARBINE = 7500,
        WEAPON_SPECIALCARBINE_MK2 = 8000,
        WEAPON_ADVANCEDRIFLE = 8500,
        WEAPON_BULLPUPRIFLE = 9000,
        WEAPON_BULLPUPRIFLE_MK2 = 9500,
        WEAPON_COMPACTRIFLE = 4500,
        WEAPON_MILITARYRIFLE = 12000,
        WEAPON_HEAVYRIFLE = 13000,
        WEAPON_TACTICALRIFLE = 14000,
    }
})

