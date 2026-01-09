ExtendedM.Vehicles = ExtendedM.Vehicles or {}

local PRICE_VARIATIONS = ExtendedM.Enum.VEHICLE_MOD_PRICE_VARIATION
local MENU_TYPES = ExtendedM.Enum.VEHICLE_MOD_MENU

local g_sMPTunables = ExtendedM.Tunables
local g_sMPTunableGroups = ExtendedM.TunableGroups
local VehicleHashes = ExtendedM.VehicleHashes
local Features = ExtendedM.Config.Features

function ExtendedM.Vehicles.GET_BRAKES_EXPENDITURE_TUNABLE(price_variation, lvl)
    local out = 1.0

    if price_variation == PRICE_VARIATIONS.MPV_SPECIAL
    or price_variation == PRICE_VARIATIONS.MPV_BANSHEE2
    or price_variation == PRICE_VARIATIONS.MPV_BTYPE3
    or price_variation == PRICE_VARIATIONS.MPV_VIRGO2
    or price_variation == PRICE_VARIATIONS.MPV_IE_HIGH
    or price_variation == PRICE_VARIATIONS.MPV_IE_RETRO
    or price_variation == PRICE_VARIATIONS.MPV_GR_HEAVY
    or price_variation == PRICE_VARIATIONS.MPV_GR_LIGHT
    or price_variation == PRICE_VARIATIONS.MPV_GR_BIKE
    or price_variation == PRICE_VARIATIONS.MPV_GR_TRAILERLARGE
    or price_variation == PRICE_VARIATIONS.MPV_SMUG_STANDARD
    or price_variation == PRICE_VARIATIONS.MPV_SMUG_HEAVY
    or price_variation == PRICE_VARIATIONS.MPV_GANG_OPS_STANDARD
    or price_variation == PRICE_VARIATIONS.MPV_BATTLE_STANDARD
    or price_variation == PRICE_VARIATIONS.MPV_BATTLE_HEAVY
    or price_variation == PRICE_VARIATIONS.MPV_ARENA_WARS
    or price_variation == PRICE_VARIATIONS.MPV_RC_BANDITO then
        if lvl == 0 then
            out = g_sMPTunables.fcarmod_unlock_stock_brakes_expenditure_tunable_special
        elseif lvl == 1 then
            out = g_sMPTunables.fcarmod_unlock_brakes_l2_expenditure_tunable_special
        elseif lvl == 2 then
            out = g_sMPTunables.fcarmod_unlock_brakes_l3_expenditure_tunable_special
        elseif lvl >= 3 then
            out = g_sMPTunables.fcarmod_unlock_brakes_l4_expenditure_tunable_special
        end
    elseif price_variation == PRICE_VARIATIONS.MPV_SPORT then
        if lvl == 0 then
            out = g_sMPTunables.fcarmod_unlock_stock_brakes_expenditure_tunable_sport
        elseif lvl == 1 then
            out = g_sMPTunables.fcarmod_unlock_brakes_l2_expenditure_tunable_sport
        elseif lvl == 2 then
            out = g_sMPTunables.fcarmod_unlock_brakes_l3_expenditure_tunable_sport
        elseif lvl >= 3 then
            out = g_sMPTunables.fcarmod_unlock_brakes_l4_expenditure_tunable_sport
        end
    elseif price_variation == PRICE_VARIATIONS.MPV_SUV then
        if lvl == 0 then
            out = g_sMPTunables.fcarmod_unlock_stock_brakes_expenditure_tunable_suv
        elseif lvl == 1 then
            out = g_sMPTunables.fcarmod_unlock_brakes_l2_expenditure_tunable_suv
        elseif lvl == 2 then
            out = g_sMPTunables.fcarmod_unlock_brakes_l3_expenditure_tunable_suv
        elseif lvl >= 3 then
            out = g_sMPTunables.fcarmod_unlock_brakes_l4_expenditure_tunable_suv
        end
    elseif price_variation == PRICE_VARIATIONS.MPV_BIKE then
        if lvl == 0 then
            out = g_sMPTunables.fcarmod_unlock_stock_brakes_expenditure_tunable_bike
        elseif lvl == 1 then
            out = g_sMPTunables.fcarmod_unlock_brakes_l2_expenditure_tunable_bike
        elseif lvl == 2 then
            out = g_sMPTunables.fcarmod_unlock_brakes_l3_expenditure_tunable_bike
        elseif lvl >= 3 then
            out = g_sMPTunables.fcarmod_unlock_brakes_l4_expenditure_tunable_bike
        end
    elseif price_variation == PRICE_VARIATIONS.MPV_STANDARD
        or price_variation == PRICE_VARIATIONS.MPV_IE_BIKE
        or price_variation == PRICE_VARIATIONS.MPV_BIKE
        or price_variation == PRICE_VARIATIONS.MPV_SULTANRS
        or price_variation == PRICE_VARIATIONS.MPV_SLAMVAN3 then

        if lvl == 0 then
            out = g_sMPTunables.fcarmod_unlock_stock_brakes_expenditure_tunable
        elseif lvl == 1 then
            out = g_sMPTunables.fcarmod_unlock_brakes_l2_expenditure_tunable
        elseif lvl == 2 then
            out = g_sMPTunables.fcarmod_unlock_brakes_l3_expenditure_tunable
        elseif lvl >= 3 then
            out = g_sMPTunables.fcarmod_unlock_brakes_l4_expenditure_tunable
        end
    end

    return out * g_sMPTunableGroups.fbrakes_group_modifier
end

---@param menu integer
---@param option integer
---@param price_variation integer
---@param stage integer?
---@param label string?
---@param buy_now_price boolean?
---@param sell_value boolean?
function ExtendedM.Vehicles.GET_MP_CARMOD_MENU_OPTION_COST(menu, option, price_variation, stage, label, buy_now_price, sell_value)
    -- sell_value is unused due to it being gen9

    local buy_now_multiplier = 1.0
    if buy_now_price then
        buy_now_multiplier = g_sMPTunables.fAW_VEHICLE_MODS_BUY_IT_NOW_PRICE_MULTIPLIER
    end

    -- this makes the function client sided only for now.
    -- i will try to figure out how rockstar updates this variable and if it has server authority
    local g_ModVehicle = GetEntityModel(GetVehiclePedIsIn(PlayerPedId(), false))

    --[[ should keep this just incase as a note
        IF IS_THIS_PERSONAL_CAR_MOD_FOR_IMPORT_EXPORT_MISSION(g_eModShopName,g_iPersonalCarModVar)
        OR IS_PLAYER_MODDING_TUNER_CLIENT_VEHICLE()	
        #IF FEATURE_DLC_1_2022
        OR IS_PLAYER_MODDING_BIKER_CLIENT_VEHICLE()
        #ENDIF
            RETURN 0
        ENDIF

        MODEL_NAMES vehicleModel = GET_ENTITY_MODEL(g_ModVehicle)
    ]]

    if menu == MENU_TYPES.CMM_BRAKES then
        if price_variation == PRICE_VARIATIONS.MPV_SPECIAL
        or price_variation == PRICE_VARIATIONS.MPV_IE_HIGH
        or price_variation == PRICE_VARIATIONS.MPV_IE_RETRO
        or price_variation == PRICE_VARIATIONS.MPV_BANSHEE2
        or price_variation == PRICE_VARIATIONS.MPV_BTYPE3
        or price_variation == PRICE_VARIATIONS.MPV_VIRGO2
        or price_variation == PRICE_VARIATIONS.MPV_GR_HEAVY
        or price_variation == PRICE_VARIATIONS.MPV_GR_LIGHT
        or price_variation == PRICE_VARIATIONS.MPV_GR_BIKE
        or price_variation == PRICE_VARIATIONS.MPV_GR_TRAILERLARGE
        or price_variation == PRICE_VARIATIONS.MPV_SMUG_STANDARD
        or price_variation == PRICE_VARIATIONS.MPV_SMUG_HEAVY
        or price_variation == PRICE_VARIATIONS.MPV_GANG_OPS_STANDARD
        or price_variation == PRICE_VARIATIONS.MPV_BATTLE_STANDARD
        or price_variation == PRICE_VARIATIONS.MPV_BATTLE_HEAVY
        or price_variation == PRICE_VARIATIONS.MPV_ARENA_WARS
        or price_variation == PRICE_VARIATIONS.MPV_RC_BANDITO then
            if Features.FEATURE_GEN9_EXCLUSIVE == 1 then
               if ExtendedM.Vehicles.IS_VEHICLE_A_HSW_VEHICLE(g_ModVehicle) then
                    if sell_value then
                        if GetVehicleMod(g_ModVehicle, ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_BRAKES) + 1 == GetNumVehicleMods(g_ModVehicle, ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_BRAKES) then
                            return g_sMPTunables.iGEN9_MODS_HSW_BRAKES
                        end
                    else
                        if label ~= nil and label ~= "" then
                            if label == "CMOD_BRA_HSW" then return g_sMPTunables.iGEN9_MODS_HSW_BRAKES end
                        end
                    end
               end
            end
                
            local prices = {
                [0] = 1000,
                [1] = 20000,
                [2] = 27000,
                [3] = 35000,
                [4] = 60000,
            }

            return math.floor(prices[option] * ExtendedM.Vehicles.GET_BRAKES_EXPENDITURE_TUNABLE(price_variation, option))
        elseif price_variation == PRICE_VARIATIONS.MPV_SPORT then
            if Features.FEATURE_GEN9_EXCLUSIVE == 1 then
               if ExtendedM.Vehicles.IS_VEHICLE_A_HSW_VEHICLE(g_ModVehicle) then
                    if sell_value then
                        if GetVehicleMod(g_ModVehicle, ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_BRAKES) + 1 == GetNumVehicleMods(g_ModVehicle, ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_BRAKES) then
                            return g_sMPTunables.iGEN9_MODS_HSW_BRAKES2
                        end
                    else
                        if label ~= nil and label ~= "" then
                            if label == "CMOD_BRA_HSW" then return g_sMPTunables.iGEN9_MODS_HSW_BRAKES2 end
                        end
                    end
               end
            end

            local prices = {
                [0] = 650,
                [1] = 13000,
                [2] = 17550,
                [3] = 22750,
                [4] = 60000,
            }

            return math.floor(prices[option] * ExtendedM.Vehicles.GET_BRAKES_EXPENDITURE_TUNABLE(price_variation, option))
        elseif price_variation == PRICE_VARIATIONS.MPV_SUV then
            local prices = {
                [0] = 500,
                [1] = 10000,
                [2] = 13500,
                [3] = 17500,
                [4] = 60000,
            }

            return math.floor(prices[option] * ExtendedM.Vehicles.GET_BRAKES_EXPENDITURE_TUNABLE(price_variation, option))
        elseif price_variation == PRICE_VARIATIONS.MPV_STANDARD
        or price_variation == PRICE_VARIATIONS.MPV_IE_BIKE
        or price_variation == PRICE_VARIATIONS.MPV_SULTANRS
        or price_variation == PRICE_VARIATIONS.MPV_SLAMVAN3 then
            local prices = {
                [0] = 200,
                [1] = 4000,
                [2] = 5400,
                [3] = 7000,
                [4] = 60000,
            }

            return math.floor(prices[option] * ExtendedM.Vehicles.GET_BRAKES_EXPENDITURE_TUNABLE(price_variation, option))
        elseif price_variation == PRICE_VARIATIONS.MPV_BIKE then
            local prices = {
                [0] = 200,
                [1] = 4000,
                [2] = 5400,
                [3] = 7000,
                [4] = 60000,
            }

            return math.floor(prices[option] * ExtendedM.Vehicles.GET_BRAKES_EXPENDITURE_TUNABLE(price_variation, option))
        end
    end
end