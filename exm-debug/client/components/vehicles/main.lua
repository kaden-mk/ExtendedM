local Native = EXMInterface.Native
local ExtendedM = exports["exm-core"]:ExtendedM()

local Config = EXMDebug.Config
local Utility = EXMDebug.Utility

local vehicle_menu_names = Config.MENU_IDS.COMPONENTS.VEHICLES

local menu = Utility.CreateMenu
local head = Native.Header
local button = Native.Button

menu(vehicle_menu_names.MAIN, function()
    head(Config.HEADER_TEXT, "Vehicle Menu")

    local spawn_vehicle = button("Spawn Vehicle", "Spawns a vehicle depending on its hash.")
    spawn_vehicle:On("click", function()
        local vehicle_to_spawn = ExtendedM.Utility.OnScreenKeyboardInput("Vehicle:", "", 20)
        if vehicle_to_spawn == nil then return end

        -- TODO: Create a notification system for when the vehicle is invalid
        ExtendedM.Utility.SpawnVehicleForPlayer(vehicle_to_spawn, true)
    end)

    local delete_vehicle = button("Delete Vehicle", "Deletes the vehicle you are in.")
    delete_vehicle:On("click", function()
        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

        if vehicle ~= 0 then
            SetEntityAsMissionEntity(vehicle, true, true)
            DeleteVehicle(vehicle)
        end
    end)

    local fix_vehicle = button("Fix Vehicle", "Fixes the vehicle you are in.")
    fix_vehicle:On("click", function()
        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

        if vehicle ~= 0 then
            SetVehicleFixed(vehicle)
            SetVehicleDeformationFixed(vehicle)
            SetVehicleUndriveable(vehicle, false)
        end
    end)

    local wash_vehicle = button("Wash Vehicle", "Washes the vehicle you are in.")
    wash_vehicle:On("click", function()
        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

        if vehicle ~= 0 then
            SetVehicleDirtLevel(vehicle, 0.0)
        end
    end)
end)