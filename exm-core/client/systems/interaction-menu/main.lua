local Interface = EXMInterface.Native

local current_quick_gps_item_index = 1

Interface.RegisterMenu("ExtendedM:Menus:Interaction", function()
    Interface.Header("Interaction", GetPlayerName(PlayerId()))

    Interface.ListItem("Quick GPS", { "ATM", "Store" }, current_quick_gps_item_index) -- this should prolly have a clicked function
        :On("change", function(index)
            current_quick_gps_item_index = index
        end)
    
    Interface.SubMenu("Inventory", "ExtendedM:Menus:Inventory")
    Interface.SubMenu("Personal Vehicle", "ExtendedM:Menus:PersonalVehicle")
    Interface.SubMenu("Appearance", "ExtendedM:Menus:Appearance")
    Interface.Button("Kill yourself")
end)

RegisterCommand("open_interaction_menu", function()
    Interface.SetVisible("ExtendedM:Menus:Interaction", true)
end, false)

RegisterKeyMapping("open_interaction_menu", "Open Interaction Menu", 'keyboard', 'm')