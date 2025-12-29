---@type EXMInterface
local Interface = exports["exm-interface"]:EXMInterface()
local Native = Interface.Native

local player_menu = Native.RegisterMenu(function()
    Native.Header("Debug Menu", "Player Menu")
end)

local world_menu = Native.RegisterMenu(function()
    Native.Header("Debug Menu", "World Menu")
end)

local vehicle_menu = Native.RegisterMenu(function()
    Native.Header("Debug Menu", "Vehicle Menu")

    local spawn_vehicle = Native.Button("Spawn Vehicle", "Spawns a vehicle depending on its hash.")
    if spawn_vehicle.clicked then
        local vehicle_to_spawn = ExtendedM.Utility.OnScreenKeyboardInput("Vehicle:", "", 20)

        if vehicle_to_spawn == nil then return end

        -- TODO: Create a notification system for when the vehicle is invalid
        ExtendedM.Utility.SpawnVehicleForPlayer(vehicle_to_spawn, true)
    end
end)

local debug_interaction_menu = Native.RegisterMenu(function()
    Native.Header("Debug Menu", "Debug Menu")

    Native.SubMenu("Player", player_menu)
    Native.SubMenu("World", world_menu)
    Native.SubMenu("Vehicles", vehicle_menu)
end)

Native.SetDisabledControls(debug_interaction_menu, Native.ControlTemplates.WalkAndLook)
Native.SetDisabledControls(player_menu, Native.ControlTemplates.WalkAndLook)
Native.SetDisabledControls(world_menu, Native.ControlTemplates.WalkAndLook)
Native.SetDisabledControls(vehicle_menu, Native.ControlTemplates.WalkAndLook)

RegisterCommand("open_debug_menu", function()
    Native.SetVisible(debug_interaction_menu, true)
end, false)

RegisterKeyMapping("open_debug_menu", "Open Debug Menu", "keyboard", "f5")