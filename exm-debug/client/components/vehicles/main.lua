---@type EXMInterface
local Interface = exports["exm-interface"]:EXMInterface()
---@type ExtendedM
local ExtendedM = exports["exm-core"]:ExtendedM()

local Native = Interface.Native

local Config = EXMDebug.Config
local Utility = EXMDebug.Utility

local vehicle_menu_names = Config.MENU_IDS.COMPONENTS.VEHICLES

local menu = Utility.CreateMenu
local head = Native.Header
local button = Native.Button

menu(vehicle_menu_names.MAIN, function()
    head(Config.HEADER_TEXT, "Vehicle Menu")

    local spawn_vehicle = button("Spawn Vehicle", "Spawns a vehicle depending on its hash.")
    if spawn_vehicle.clicked then
        local vehicle_to_spawn = ExtendedM.Utility.OnScreenKeyboardInput("Vehicle:", "", 20)
        if vehicle_to_spawn == nil then return end

        -- TODO: Create a notification system for when the vehicle is invalid
        ExtendedM.Utility.SpawnVehicleForPlayer(vehicle_to_spawn, true)
    end
end)