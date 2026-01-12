---@diagnostic disable: missing-parameter
ExtendedM.Vehicles = ExtendedM.Vehicles or {}

-- these cost are based on the value of a new car i.e. how much it cost to replace
local PERCENTAGE_VALUE_OF_CAR_HEALTH = 0.05
local PERCENTAGE_VALUE_OF_CAR_ENGINE_HEALTH = 0.1
local PERCENTAGE_VALUE_OF_CAR_BONNET = 0.0075
local PERCENTAGE_VALUE_OF_CAR_DOOR = 0.005
local PERCENTAGE_VALUE_OF_CAR_BOOT = 0.0065
local PERCENTAGE_VALUE_OF_CAR_BUMPER = 0.003
local PERCENTAGE_VALUE_OF_CAR_WHEEL = 0.0025
local PERCENTAGE_VALUE_OF_CAR_WINDOW = 0.003

local e = ExtendedM.Enum
local VEHICLE_REPAIRS = e.VEHICLE_REPAIRS
local VEHICLE_DOOR_ID = e.VEHICLE_DOOR_ID
local VEHICLE_TYRE_ID = e.VEHICLE_TYRE_ID
local VEHICLE_WINDOW_ID = e.VEHICLE_WINDOW_ID

function ExtendedM.Vehicles.DOES_CAR_HAVE_BACK_SEATS(CarID)
    local CarModel = GetEntityModel(CarID)
    
    if not IsThisModelACar(CarModel) or IsBigVehicle(CarID) then
        return false
    end
    
    if (GetVehicleMaxNumberOfPassengers(CarID) > 2) then
        return true
    end
    
    return false
end

function ExtendedM.Vehicles.GET_REPAIR_COST_FOR_CAR(CarID, RepairPart, iCarValue)
    local iReturn = 0
    local iCount = 0
    local fMaxHealth = 0

    if DoesEntityExist(CarID) then
        if IsVehicleDriveable(CarID, false) then
            if RepairPart == VEHICLE_REPAIRS.REPAIR_HEALTH then
                fMaxHealth = (GetEntityMaxHealth(CarID) * 1.0)
                print("[dsw] GET_REPAIR_COST_FOR_CAR - vehicle max health = ") print(fMaxHealth) print("")
                iReturn = math.floor((1.0 - (GetEntityHealth(CarID)/fMaxHealth)) * (PERCENTAGE_VALUE_OF_CAR_HEALTH * (iCarValue * 1.0)) + 0.5)
                print("[dsw] GET_REPAIR_COST_FOR_CAR - Health repair cost = ") print(iReturn) print("")
            elseif RepairPart == VEHICLE_REPAIRS.REPAIR_ENGINE then
                fMaxHealth = (GetEntityMaxHealth(CarID) * 1.0)
                iReturn = math.floor((1.0 - (GetVehicleEngineHealth(CarID)/fMaxHealth)) * (PERCENTAGE_VALUE_OF_CAR_ENGINE_HEALTH * (iCarValue * 1.0)) + 0.5)
                print("[dsw] GET_REPAIR_COST_FOR_CAR - Engine repair cost = ") print(iReturn) print("")
            elseif RepairPart == VEHICLE_REPAIRS.REPAIR_DOORS then
                if not IsThisModelABike(GetEntityModel(CarID)) then
                    if IsVehicleDoorDamaged(CarID, VEHICLE_DOOR_ID.SC_DOOR_FRONT_LEFT) then
                        iCount = iCount + 1
                    end

                    if IsVehicleDoorDamaged(CarID, VEHICLE_DOOR_ID.SC_DOOR_FRONT_RIGHT) then
                        iCount = iCount + 1
                    end

                    if ExtendedM.Vehicles.DOES_CAR_HAVE_BACK_SEATS(CarID) then
                        if IsVehicleDoorDamaged(CarID, VEHICLE_DOOR_ID.SC_DOOR_REAR_LEFT) then
                            iCount = iCount + 1
                        end

                        if IsVehicleDoorDamaged(CarID, VEHICLE_DOOR_ID.SC_DOOR_REAR_RIGHT) then
                            iCount = iCount + 1
                        end
                    end
                end

                if (iCount > 0) then
                    iReturn = math.floor((iCount * 1.0) * (PERCENTAGE_VALUE_OF_CAR_DOOR * (iCarValue * 1.0)) + 0.5)
                    print("[dsw] GET_REPAIR_COST_FOR_CAR - Doors needing repairs = ") print(iCount) print(" cost = ") print(iReturn) print("")
                end
            elseif RepairPart == VEHICLE_REPAIRS.REPAIR_BONNET then
                if not IsThisModelABike(GetEntityModel(CarID)) then
                    if IsVehicleDoorDamaged(CarID, VEHICLE_DOOR_ID.SC_DOOR_BONNET) then
                        iReturn = math.floor(PERCENTAGE_VALUE_OF_CAR_BONNET * (iCarValue * 1.0) + 0.5)
                    end
                end
                print("[dsw] GET_REPAIR_COST_FOR_CAR - Bonnet cost = ") print(iReturn) print("")
            elseif RepairPart == VEHICLE_REPAIRS.REPAIR_BOOT then
                if not IsThisModelABike(GetEntityModel(CarID)) then
                    if IsVehicleDoorDamaged(CarID, VEHICLE_DOOR_ID.SC_DOOR_BOOT) then
                        iReturn = math.floor(PERCENTAGE_VALUE_OF_CAR_BOOT * (iCarValue * 1.0) + 0.5)
                    end
                end
                print("[dsw] GET_REPAIR_COST_FOR_CAR - Boot cost = ") print(iReturn) print("")
            elseif RepairPart == VEHICLE_REPAIRS.REPAIR_BUMPERS then
                -- front bumper
                if not IsThisModelABike(GetEntityModel(CarID)) then
                    if IsVehicleBumperBrokenOff(CarID, true) then
                        iReturn = iReturn + math.floor( PERCENTAGE_VALUE_OF_CAR_BUMPER * (iCarValue * 1.0) + 0.5)
                    else
                        if IsVehicleBumperBouncing(CarID, true) then
                            iReturn = iReturn + math.floor( 0.5 * PERCENTAGE_VALUE_OF_CAR_BUMPER * (iCarValue * 1.0) + 0.5)
                        end
                    end
                    -- back bumper
                    if IsVehicleBumperBrokenOff(CarID, true) then
                        iReturn = iReturn + math.floor(PERCENTAGE_VALUE_OF_CAR_BUMPER * (iCarValue * 1.0) + 0.5)
                    else
                        if IsVehicleBumperBouncing(CarID, true) then
                            iReturn = iReturn + math.floor( 0.5 * PERCENTAGE_VALUE_OF_CAR_BUMPER * (iCarValue * 1.0) + 0.5)
                        end
                    end
                end
                print("[dsw] GET_REPAIR_COST_FOR_CAR - Bumper repairs = ") print(iReturn) print("")
            elseif RepairPart == VEHICLE_REPAIRS.REPAIR_WHEELS then
                if IsThisModelABike(GetEntityModel(CarID)) then
                    if IsVehicleTyreBurst(CarID, VEHICLE_TYRE_ID.SC_WHEEL_BIKE_FRONT) then
                        iCount = iCount + 1
                    end
                    if IsVehicleTyreBurst(CarID, VEHICLE_TYRE_ID.SC_WHEEL_BIKE_REAR) then
                        iCount = iCount + 1
                    end
                else
                    if IsVehicleTyreBurst(CarID, VEHICLE_TYRE_ID.SC_WHEEL_CAR_FRONT_LEFT) then
                        iCount = iCount + 1
                    end
                    if IsVehicleTyreBurst(CarID, VEHICLE_TYRE_ID.SC_WHEEL_CAR_FRONT_RIGHT) then
                        iCount = iCount + 1
                    end
                    if IsVehicleTyreBurst(CarID, VEHICLE_TYRE_ID.SC_WHEEL_CAR_REAR_RIGHT) then
                        iCount = iCount + 1
                    end
                    if IsVehicleTyreBurst(CarID, VEHICLE_TYRE_ID.SC_WHEEL_CAR_REAR_LEFT) then
                        iCount = iCount + 1
                    end

                    if IsBigVehicle(CarID) then
                        if IsVehicleTyreBurst(CarID, VEHICLE_TYRE_ID.SC_WHEEL_CAR_MID_LEFT) then
                            iCount = iCount + 1
                        end
                        if IsVehicleTyreBurst(CarID, VEHICLE_TYRE_ID.SC_WHEEL_CAR_MID_RIGHT) then
                            iCount = iCount + 1
                        end
                    end
                end
                iReturn = math.floor( (iCount * 1.0) * (PERCENTAGE_VALUE_OF_CAR_WHEEL * (iCarValue * 1.0)) + 0.5)
                print("[dsw] GET_REPAIR_COST_FOR_CAR - Wheels needing repairs = ") print(iCount) print(" cost = ") print(iReturn) print("")
            elseif RepairPart == VEHICLE_REPAIRS.REPAIR_WINDOWS then
                if not IsThisModelABike(GetEntityModel(CarID)) then
                    if not IsVehicleWindowIntact(CarID, VEHICLE_WINDOW_ID.SC_WINDOW_FRONT_LEFT) then
                        iCount = iCount + 1
                    end
                    if not IsVehicleWindowIntact(CarID, VEHICLE_WINDOW_ID.SC_WINDOW_FRONT_RIGHT) then
                        iCount = iCount + 1
                    end
                    if ExtendedM.Vehicles.DOES_CAR_HAVE_BACK_SEATS(CarID) then
                        if not IsVehicleWindowIntact(CarID, VEHICLE_WINDOW_ID.SC_WINDOW_REAR_LEFT) then
                            iCount = iCount + 1
                        end
                        if not IsVehicleWindowIntact(CarID, VEHICLE_WINDOW_ID.SC_WINDOW_REAR_RIGHT) then
                            iCount = iCount + 1
                        end
                    end
                end
                iReturn = math.floor( (iCount * 1.0) * (PERCENTAGE_VALUE_OF_CAR_WINDOW * (iCarValue * 1.0)) + 0.5)
                print("[dsw] GET_REPAIR_COST_FOR_CAR - Windows needing repairs = ") print(iCount) print(" cost = ") print(iReturn) print("")
            end
            
        end
    end
    
    return iReturn
end

function ExtendedM.Vehicles.GET_TOTAL_REPAIR_COSTS_FOR_CAR(CarID, iCarValue)
    local iTotal = 0

    for i = 0, #ExtendedM.Enum.VEHICLE_REPAIRS - 1 do
        iTotal = iTotal + ExtendedM.Vehicles.GET_REPAIR_COST_FOR_CAR(CarID, i, iCarValue)
    end

    if (iTotal > 0) and (iTotal < 10) then
        iTotal = 10
    end
    
    return iTotal
end