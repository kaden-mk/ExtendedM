ExtendedM.Vehicles = ExtendedM.Vehicles or {}

local PRICE_VARIATIONS = ExtendedM.Enum.VEHICLE_MOD_PRICE_VARIATION
local MENU_TYPES = ExtendedM.Enum.VEHICLE_MOD_MENU

local g_sMPTunables = ExtendedM.Tunables
local g_sMPTunableGroups = ExtendedM.TunableGroups
local VehicleHashes = ExtendedM.VehicleHashes
local Features = ExtendedM.Config.Features

function ExtendedM.Vehicles.GET_ENGINE_EXPENDITURE_TUNABLE(price_variation, lvl)
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
        if lvl == 1 then
            out = g_sMPTunables.fcarmod_unlock_engine_l2_expenditure_tunable_special
        elseif lvl == 2 then
            out = g_sMPTunables.fcarmod_unlock_engine_l3_expenditure_tunable_special
        elseif lvl == 3 then
            out = g_sMPTunables.fcarmod_unlock_engine_l4_expenditure_tunable_special
        elseif lvl >= 4 then
            out = g_sMPTunables.fcarmod_unlock_engine_l5_expenditure_tunable_special
        end
    elseif price_variation == PRICE_VARIATIONS.MPV_SPORT then
        if lvl == 1 then
            out = g_sMPTunables.fcarmod_unlock_engine_l2_expenditure_tunable_sport
        elseif lvl == 2 then
            out = g_sMPTunables.fcarmod_unlock_engine_l3_expenditure_tunable_sport
        elseif lvl == 3 then
            out = g_sMPTunables.fcarmod_unlock_engine_l4_expenditure_tunable_sport
        elseif lvl >= 4 then
            out = g_sMPTunables.fcarmod_unlock_engine_l5_expenditure_tunable_sport
        end
    elseif price_variation == PRICE_VARIATIONS.MPV_SUV then
        if lvl == 1 then
            out = g_sMPTunables.fcarmod_unlock_engine_l2_expenditure_tunable_suv
        elseif lvl == 2 then
            out = g_sMPTunables.fcarmod_unlock_engine_l3_expenditure_tunable_suv
        elseif lvl == 3 then
            out = g_sMPTunables.fcarmod_unlock_engine_l4_expenditure_tunable_suv
        elseif lvl >= 4 then
            out = g_sMPTunables.fcarmod_unlock_engine_l5_expenditure_tunable_suv
        end
    elseif price_variation == PRICE_VARIATIONS.MPV_BIKE then
        if lvl == 1 then
            out = g_sMPTunables.fcarmod_unlock_engine_l2_expenditure_tunable_bike
        elseif lvl == 2 then
            out = g_sMPTunables.fcarmod_unlock_engine_l3_expenditure_tunable_bike
        elseif lvl == 3 then
            out = g_sMPTunables.fcarmod_unlock_engine_l4_expenditure_tunable_bike
        elseif lvl >= 4 then
            out = g_sMPTunables.fcarmod_unlock_engine_l5_expenditure_tunable_bike
        end
    elseif price_variation == PRICE_VARIATIONS.MPV_STANDARD 
    or price_variation == PRICE_VARIATIONS.MPV_IE_BIKE 
    or price_variation == PRICE_VARIATIONS.MPV_BIKE 
    or price_variation == PRICE_VARIATIONS.MPV_SULTANRS 
    or price_variation == PRICE_VARIATIONS.MPV_SLAMVAN3 then
        if lvl == 1 then
            out = g_sMPTunables.fcarmod_unlock_engine_l2_expenditure_tunable
        elseif lvl == 2 then
            out = g_sMPTunables.fcarmod_unlock_engine_l3_expenditure_tunable
        elseif lvl >= 3 then
            out = g_sMPTunables.fcarmod_unlock_engine_l4_expenditure_tunable
        elseif lvl >= 4 then
            out = g_sMPTunables.fcarmod_unlock_engine_l5_expenditure_tunable
        end
    end

    return out * g_sMPTunableGroups.fengine_group_modifier
end

function ExtendedM.Vehicles.GET_GEARBOX_EXPENDITURE_TUNABLE(price_variation, lvl)
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
            out = g_sMPTunables.fcarmod_unlock_StockTransmission_expenditure_tunable_special
        elseif lvl == 1 then
            out = g_sMPTunables.fcarmod_unlock_gear_box_l2_expenditure_tunable_special
        elseif lvl == 2 then
            out = g_sMPTunables.fcarmod_unlock_gear_box_l3_expenditure_tunable_special
        elseif lvl >= 3 then
            out = g_sMPTunables.fcarmod_unlock_gear_box_l4_expenditure_tunable_special
        end
    elseif price_variation == PRICE_VARIATIONS.MPV_SPORT then
        if lvl == 0 then
            out = g_sMPTunables.fcarmod_unlock_StockTransmission_expenditure_tunable_sport
        elseif lvl == 1 then
            out = g_sMPTunables.fcarmod_unlock_gear_box_l2_expenditure_tunable_sport
        elseif lvl == 2 then
            out = g_sMPTunables.fcarmod_unlock_gear_box_l3_expenditure_tunable_sport
        elseif lvl >= 3 then
            out = g_sMPTunables.fcarmod_unlock_gear_box_l4_expenditure_tunable_sport
        end
    elseif price_variation == PRICE_VARIATIONS.MPV_SUV then
        if lvl == 0 then
            out = g_sMPTunables.fcarmod_unlock_StockTransmission_expenditure_tunable_suv
        elseif lvl == 1 then
            out = g_sMPTunables.fcarmod_unlock_gear_box_l2_expenditure_tunable_suv
        elseif lvl == 2 then
            out = g_sMPTunables.fcarmod_unlock_gear_box_l3_expenditure_tunable_suv
        elseif lvl >= 3 then
            out = g_sMPTunables.fcarmod_unlock_gear_box_l4_expenditure_tunable_suv
        end
    elseif price_variation == PRICE_VARIATIONS.MPV_BIKE then
        if lvl == 0 then
            out = g_sMPTunables.fcarmod_unlock_StockTransmission_expenditure_tunable_bike
        elseif lvl == 1 then
            out = g_sMPTunables.fcarmod_unlock_gear_box_l2_expenditure_tunable_bike
        elseif lvl == 2 then
            out = g_sMPTunables.fcarmod_unlock_gear_box_l3_expenditure_tunable_bike
        elseif lvl >= 3 then
            out = g_sMPTunables.fcarmod_unlock_gear_box_l4_expenditure_tunable_bike
        end
    elseif price_variation == PRICE_VARIATIONS.MPV_STANDARD 
    or price_variation == PRICE_VARIATIONS.MPV_IE_BIKE 
    or price_variation == PRICE_VARIATIONS.MPV_BIKE 
    or price_variation == PRICE_VARIATIONS.MPV_SULTANRS 
    or price_variation == PRICE_VARIATIONS.MPV_SLAMVAN3 then
        if lvl == 0 then
            out = g_sMPTunables.fcarmod_unlock_StockTransmission_expenditure_tunable
        elseif lvl == 1 then
            out = g_sMPTunables.fcarmod_unlock_gear_box_l2_expenditure_tunable
        elseif lvl == 2 then
            out = g_sMPTunables.fcarmod_unlock_gear_box_l3_expenditure_tunable
        elseif lvl >= 3 then
            out = g_sMPTunables.fcarmod_unlock_gear_box_l4_expenditure_tunable
        end
    end

    return out * g_sMPTunableGroups.fengine_group_modifier
end

function ExtendedM.Vehicles.GET_SUSPENSION_EXPENDITURE_TUNABLE(price_variation, lvl)
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
            out = g_sMPTunables.fcarmod_unlock_stocksuspension_expenditure_tunable_special
        elseif lvl == 1 then
            out = g_sMPTunables.fcarmod_unlock_suspension_l1_expenditure_tunable_special
        elseif lvl == 2 then
            out = g_sMPTunables.fcarmod_unlock_suspension_l2_expenditure_tunable_special
        elseif lvl == 3 then
            out = g_sMPTunables.fcarmod_unlock_suspension_l3_expenditure_tunable_special
        elseif lvl >= 4 then
            out = g_sMPTunables.fcarmod_unlock_suspension_l4_expenditure_tunable_special
        end
    elseif price_variation == PRICE_VARIATIONS.MPV_SPORT then
        if lvl == 0 then
            out = g_sMPTunables.fcarmod_unlock_stocksuspension_expenditure_tunable_sport
        elseif lvl == 1 then
            out = g_sMPTunables.fcarmod_unlock_suspension_l1_expenditure_tunable_sport
        elseif lvl == 2 then
            out = g_sMPTunables.fcarmod_unlock_suspension_l2_expenditure_tunable_sport
        elseif lvl == 3 then
            out = g_sMPTunables.fcarmod_unlock_suspension_l3_expenditure_tunable_sport
        elseif lvl >= 4 then
            out = g_sMPTunables.fcarmod_unlock_suspension_l4_expenditure_tunable_sport
        end
    elseif price_variation == PRICE_VARIATIONS.MPV_SUV then
        if lvl == 0 then
            out = g_sMPTunables.fcarmod_unlock_stocksuspension_expenditure_tunable_suv
        elseif lvl == 1 then
            out = g_sMPTunables.fcarmod_unlock_suspension_l1_expenditure_tunable_suv
        elseif lvl == 2 then
            out = g_sMPTunables.fcarmod_unlock_suspension_l2_expenditure_tunable_suv
        elseif lvl == 3 then
            out = g_sMPTunables.fcarmod_unlock_suspension_l3_expenditure_tunable_suv
        elseif lvl >= 4 then
            out = g_sMPTunables.fcarmod_unlock_suspension_l4_expenditure_tunable_suv
        end
    elseif price_variation == PRICE_VARIATIONS.MPV_BIKE then
        if lvl == 0 then
            out = g_sMPTunables.fcarmod_unlock_stocksuspension_expenditure_tunable_bike
        elseif lvl == 1 then
            out = g_sMPTunables.fcarmod_unlock_suspension_l1_expenditure_tunable_bike
        elseif lvl == 2 then
            out = g_sMPTunables.fcarmod_unlock_suspension_l2_expenditure_tunable_bike
        elseif lvl == 3 then
            out = g_sMPTunables.fcarmod_unlock_suspension_l3_expenditure_tunable_bike
        elseif lvl >= 4 then
            out = g_sMPTunables.fcarmod_unlock_suspension_l4_expenditure_tunable_bike
        end
    elseif price_variation == PRICE_VARIATIONS.MPV_STANDARD 
    or price_variation == PRICE_VARIATIONS.MPV_IE_BIKE 
    or price_variation == PRICE_VARIATIONS.MPV_BIKE 
    or price_variation == PRICE_VARIATIONS.MPV_SULTANRS 
    or price_variation == PRICE_VARIATIONS.MPV_SLAMVAN3 then
        if lvl == 0 then
            out = g_sMPTunables.fcarmod_unlock_stocksuspension_expenditure_tunable
        elseif lvl == 1 then
            out = g_sMPTunables.fcarmod_unlock_suspension_l1_expenditure_tunable
        elseif lvl == 2 then
            out = g_sMPTunables.fcarmod_unlock_suspension_l2_expenditure_tunable
        elseif lvl == 3 then
            out = g_sMPTunables.fcarmod_unlock_suspension_l3_expenditure_tunable
        elseif lvl >= 4 then
            out = g_sMPTunables.fcarmod_unlock_suspension_l4_expenditure_tunable
        end
    end

    return out * g_sMPTunableGroups.fsuspension_group_modifier
end

function ExtendedM.Vehicles.GET_TURBO_EXPENDITURE_TUNABLE(price_variation, lvl)
    local out = 1.0
    
    if lvl == 0 then
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
            out = g_sMPTunables.fcarmod_unlock_NoTurbo_expenditure_tunable_special
        elseif price_variation == PRICE_VARIATIONS.MPV_SPORT then
            out = g_sMPTunables.fcarmod_unlock_NoTurbo_expenditure_tunable_sport
        elseif price_variation == PRICE_VARIATIONS.MPV_SUV then
            out = g_sMPTunables.fcarmod_unlock_NoTurbo_expenditure_tunable_suv
        elseif price_variation == PRICE_VARIATIONS.MPV_BIKE then
            out = g_sMPTunables.fcarmod_unlock_NoTurbo_expenditure_tunable_bike
        elseif price_variation == PRICE_VARIATIONS.MPV_STANDARD 
        or price_variation == PRICE_VARIATIONS.MPV_IE_BIKE 
        or price_variation == PRICE_VARIATIONS.MPV_SULTANRS 
        or price_variation == PRICE_VARIATIONS.MPV_SLAMVAN3 then
            out = g_sMPTunables.fcarmod_unlock_NoTurbo_expenditure_tunable
        end
    end
    
    if lvl == 1 then
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
            out = g_sMPTunables.fcarmod_unlock_turbo_expenditure_tunable_special
        elseif price_variation == PRICE_VARIATIONS.MPV_SPORT then
            out = g_sMPTunables.fcarmod_unlock_turbo_expenditure_tunable_sport
        elseif price_variation == PRICE_VARIATIONS.MPV_SUV then
            out = g_sMPTunables.fcarmod_unlock_turbo_expenditure_tunable_suv
        elseif price_variation == PRICE_VARIATIONS.MPV_BIKE then
            out = g_sMPTunables.fcarmod_unlock_turbo_expenditure_tunable_bike
        elseif price_variation == PRICE_VARIATIONS.MPV_STANDARD 
        or price_variation == PRICE_VARIATIONS.MPV_IE_BIKE 
        or price_variation == PRICE_VARIATIONS.MPV_SULTANRS 
        or price_variation == PRICE_VARIATIONS.MPV_SLAMVAN3 then
            out = g_sMPTunables.fcarmod_unlock_turbo_expenditure_tunable
        end
    end
    
    return out
end

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

function ExtendedM.Vehicles.GET_ARMOR_EXPENDITURE_TUNABLE(g_eModPriceVariation, lvl)
    local out = 1.0

    if g_eModPriceVariation == PRICE_VARIATIONS.MPV_SPECIAL 
        or g_eModPriceVariation == PRICE_VARIATIONS.MPV_BANSHEE2
        or g_eModPriceVariation == PRICE_VARIATIONS.MPV_BTYPE3
        or g_eModPriceVariation == PRICE_VARIATIONS.MPV_VIRGO2
        or g_eModPriceVariation == PRICE_VARIATIONS.MPV_IE_HIGH
        or g_eModPriceVariation == PRICE_VARIATIONS.MPV_IE_RETRO
        or g_eModPriceVariation == PRICE_VARIATIONS.MPV_GR_HEAVY
        or g_eModPriceVariation == PRICE_VARIATIONS.MPV_GR_LIGHT
        or g_eModPriceVariation == PRICE_VARIATIONS.MPV_GR_BIKE
        or g_eModPriceVariation == PRICE_VARIATIONS.MPV_GR_TRAILERLARGE
        or g_eModPriceVariation == PRICE_VARIATIONS.MPV_SMUG_STANDARD
        or g_eModPriceVariation == PRICE_VARIATIONS.MPV_SMUG_HEAVY
        or g_eModPriceVariation == PRICE_VARIATIONS.MPV_GANG_OPS_STANDARD
        or g_eModPriceVariation == PRICE_VARIATIONS.MPV_BATTLE_STANDARD
        or g_eModPriceVariation == PRICE_VARIATIONS.MPV_BATTLE_HEAVY
        or g_eModPriceVariation == PRICE_VARIATIONS.MPV_ARENA_WARS
        or g_eModPriceVariation == PRICE_VARIATIONS.MPV_RC_BANDITO
        then
        if (lvl == 0) then
            out = g_sMPTunables.fcarmod_unlock_NoArmour_expenditure_tunable_special
        end
        if (lvl == 1) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_20_expenditure_tunable_special
        end
        if (lvl == 2) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_40_expenditure_tunable_special
        end
        if (lvl == 3) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_60_expenditure_tunable_special
        end
        if (lvl == 4) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_80_expenditure_tunable_special
        end
        if (lvl >= 5) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_100_expenditure_tunable_special
        end
    elseif (g_eModPriceVariation == PRICE_VARIATIONS.MPV_SUV) then
        if (lvl == 0) then
            out = g_sMPTunables.fcarmod_unlock_NoArmour_expenditure_tunable_suv
        end
        if (lvl == 1) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_20_expenditure_tunable_suv
        end
        if (lvl == 2) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_40_expenditure_tunable_suv
        end
        if (lvl == 3) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_60_expenditure_tunable_suv
        end
        if (lvl == 4) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_80_expenditure_tunable_suv
        end
        if (lvl >= 5) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_100_expenditure_tunable_suv
        end
    elseif (g_eModPriceVariation == PRICE_VARIATIONS.MPV_SPORT) then
        if (lvl == 0) then
            out = g_sMPTunables.fcarmod_unlock_NoArmour_expenditure_tunable_sport
        end
        if (lvl == 1) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_20_expenditure_tunable_sport
        end
        if (lvl == 2) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_40_expenditure_tunable_sport
        end
        if (lvl == 3) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_60_expenditure_tunable_sport
        end
        if (lvl == 4) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_80_expenditure_tunable_sport
        end
        if (lvl >= 5) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_100_expenditure_tunable_sport
        end
    elseif (g_eModPriceVariation == PRICE_VARIATIONS.MPV_BIKE) then
        if (lvl == 0) then
            out = g_sMPTunables.fcarmod_unlock_NoArmour_expenditure_tunable_bike
        end
        if (lvl == 1) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_20_expenditure_tunable_bike
        end
        if (lvl == 2) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_40_expenditure_tunable_bike
        end
        if (lvl == 3) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_60_expenditure_tunable_bike
        end
        if (lvl == 4) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_80_expenditure_tunable_bike
        end
        if (lvl >= 5) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_100_expenditure_tunable_bike
        end
    elseif (g_eModPriceVariation == PRICE_VARIATIONS.MPV_STANDARD) 
        or (g_eModPriceVariation == PRICE_VARIATIONS.MPV_IE_BIKE)
        or (g_eModPriceVariation == PRICE_VARIATIONS.MPV_BIKE)
        or (g_eModPriceVariation == PRICE_VARIATIONS.MPV_SULTANRS)
        or (g_eModPriceVariation == PRICE_VARIATIONS.MPV_SLAMVAN3) then
        if (lvl == 0) then
            out = g_sMPTunables.fcarmod_unlock_NoArmour_expenditure_tunable
        end
        if (lvl == 1) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_20_expenditure_tunable
        end
        if (lvl == 2) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_40_expenditure_tunable
        end
        if (lvl == 3) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_60_expenditure_tunable
        end
        if (lvl == 4) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_80_expenditure_tunable
        end
        if (lvl >= 5) then
            out = g_sMPTunables.fcarmod_unlock_body_armour_100_expenditure_tunable
        end
    end

    return out
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

    if menu == MENU_TYPES.CMM_ARMOUR then
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
            local prices = {
                [0] = 1000,
                [1] = 7500,
                [2] = 12000,
                [3] = 20000,
                [4] = 35000,
                [5] = 50000,
            }
            return math.floor(prices[option] * ExtendedM.Vehicles.GET_ARMOR_EXPENDITURE_TUNABLE(price_variation, option))
        elseif price_variation == PRICE_VARIATIONS.MPV_SPORT then
            local prices = {
                [0] = 650,
                [1] = 6375,
                [2] = 10625,
                [3] = 17000,
                [4] = 29750,
                [5] = 42500,
            }
            return math.floor(prices[option] * ExtendedM.Vehicles.GET_ARMOR_EXPENDITURE_TUNABLE(price_variation, option))
        elseif price_variation == PRICE_VARIATIONS.MPV_SUV then
            local prices = {
                [0] = 500,
                [1] = 5250,
                [2] = 8750,
                [3] = 14000,
                [4] = 24500,
                [5] = 35000,
            }
            return math.floor(prices[option] * ExtendedM.Vehicles.GET_ARMOR_EXPENDITURE_TUNABLE(price_variation, option))
        elseif price_variation == PRICE_VARIATIONS.MPV_STANDARD 
        or price_variation == PRICE_VARIATIONS.MPV_IE_BIKE 
        or price_variation == PRICE_VARIATIONS.MPV_SULTANRS 
        or price_variation == PRICE_VARIATIONS.MPV_SLAMVAN3 then
            local prices = {
                [0] = 200,
                [1] = 4500,
                [2] = 7500,
                [3] = 12000,
                [4] = 21000,
                [5] = 30000,
            }
            return math.floor(prices[option] * ExtendedM.Vehicles.GET_ARMOR_EXPENDITURE_TUNABLE(price_variation, option))
        elseif price_variation == PRICE_VARIATIONS.MPV_BIKE then
            local prices = {
                [0] = 1000,
                [1] = 3600,
                [2] = 6000,
                [3] = 9600,
                [4] = 16800,
                [5] = 24000,
            }
            return math.floor(prices[option] * ExtendedM.Vehicles.GET_ARMOR_EXPENDITURE_TUNABLE(price_variation, option))
        end
    elseif menu == MENU_TYPES.CMM_BRAKES then
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

    elseif menu == MENU_TYPES.CMM_ENGINE then
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
            if Features.FEATURE_GEN9_EXCLUSIVE == 1 then
               if ExtendedM.Vehicles.IS_VEHICLE_A_HSW_VEHICLE(g_ModVehicle) then
                    if sell_value then
                        if GetVehicleMod(g_ModVehicle, ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_ENGINE) + 1 == GetNumVehicleMods(g_ModVehicle, ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_ENGINE) then
                            return g_sMPTunables.iGEN9_MODS_HSW_ENGINE
                        end
                    else
                        if label ~= nil and label ~= "" then
                            if label == "CMOD_ENG_HSW" then return g_sMPTunables.iGEN9_MODS_HSW_ENGINE end
                        end
                    end
               end
            end
            local prices = {
                [0] = 500,
                [1] = 9000,
                [2] = 12500,
                [3] = 18000,
                [4] = 33500,
            }
            return math.floor(prices[option] * ExtendedM.Vehicles.GET_ENGINE_EXPENDITURE_TUNABLE(price_variation, option))
        elseif price_variation == PRICE_VARIATIONS.MPV_SUV then
            local prices = {
                [0] = 500,
                [1] = 4500,
                [2] = 6250,
                [3] = 9000,
                [4] = 16750,
            }
            return math.floor(prices[option] * ExtendedM.Vehicles.GET_ENGINE_EXPENDITURE_TUNABLE(price_variation, option))
        elseif price_variation == PRICE_VARIATIONS.MPV_SPORT then
            if Features.FEATURE_GEN9_EXCLUSIVE == 1 then
               if ExtendedM.Vehicles.IS_VEHICLE_A_HSW_VEHICLE(g_ModVehicle) then
                    if sell_value then
                        if GetVehicleMod(g_ModVehicle, ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_ENGINE) + 1 == GetNumVehicleMods(g_ModVehicle, ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_ENGINE) then
                            return g_sMPTunables.iGEN9_MODS_HSW_ENGINE2
                        end
                    else
                        if label ~= nil and label ~= "" then
                            if label == "CMOD_ENG_HSW" then return g_sMPTunables.iGEN9_MODS_HSW_ENGINE2 end
                        end
                    end
               end
            end
            local prices = {
                [0] = 500,
                [1] = 5850,
                [2] = 8125,
                [3] = 11700,
                [4] = 21775,
            }
            return math.floor(prices[option] * ExtendedM.Vehicles.GET_ENGINE_EXPENDITURE_TUNABLE(price_variation, option))
        elseif price_variation == PRICE_VARIATIONS.MPV_STANDARD 
        or price_variation == PRICE_VARIATIONS.MPV_IE_BIKE 
        or price_variation == PRICE_VARIATIONS.MPV_BIKE 
        or price_variation == PRICE_VARIATIONS.MPV_SULTANRS 
        or price_variation == PRICE_VARIATIONS.MPV_SLAMVAN3 then
            local prices = {
                [0] = 500,
                [1] = 1800,
                [2] = 2500,
                [3] = 3600,
                [4] = 6700,
            }
            return math.floor(prices[option] * ExtendedM.Vehicles.GET_ENGINE_EXPENDITURE_TUNABLE(price_variation, option))
        end
    elseif menu == MENU_TYPES.CMM_TRANSMISSION then
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
            if Features.FEATURE_GEN9_EXCLUSIVE == 1 then
               if ExtendedM.Vehicles.IS_VEHICLE_A_HSW_VEHICLE(g_ModVehicle) then
                    if sell_value then
                        if GetVehicleMod(g_ModVehicle, ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_TRANSMISSION) + 1 == GetNumVehicleMods(g_ModVehicle, ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_TRANSMISSION) then
                            return g_sMPTunables.iGEN9_MODS_HSW_TRANSMISSION
                        end
                    else
                        if label ~= nil and label ~= "" then
                            if label == "CMOD_TRAN_HSW" then return g_sMPTunables.iGEN9_MODS_HSW_TRANSMISSION end
                        end
                    end
               end
            end
            local prices = {
                [0] = 1000,
                [1] = 29500,
                [2] = 32500,
                [3] = 40000,
                [4] = 50000,
            }
            return math.floor(prices[option] * ExtendedM.Vehicles.GET_GEARBOX_EXPENDITURE_TUNABLE(price_variation, option))
        elseif price_variation == PRICE_VARIATIONS.MPV_SUV then
            local prices = {
                [0] = 500,
                [1] = 14750,
                [2] = 16250,
                [3] = 20000,
                [4] = 25000,
            }
            return math.floor(prices[option] * ExtendedM.Vehicles.GET_GEARBOX_EXPENDITURE_TUNABLE(price_variation, option))
        elseif price_variation == PRICE_VARIATIONS.MPV_SPORT then
            if Features.FEATURE_GEN9_EXCLUSIVE == 1 then
               if ExtendedM.Vehicles.IS_VEHICLE_A_HSW_VEHICLE(g_ModVehicle) then
                    if sell_value then
                        if GetVehicleMod(g_ModVehicle, ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_TRANSMISSION) + 1 == GetNumVehicleMods(g_ModVehicle, ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_TRANSMISSION) then
                            return g_sMPTunables.iGEN9_MODS_HSW_TRANSMISSION
                        end
                    else
                        if label ~= nil and label ~= "" then
                            if label == "CMOD_TRAN_HSW" then return g_sMPTunables.iGEN9_MODS_HSW_TRANSMISSION end
                        end
                    end
               end
            end
            local prices = {
                [0] = 650,
                [1] = 19175,
                [2] = 21125,
                [3] = 26000,
                [4] = 30000,
            }
            return math.floor(prices[option] * ExtendedM.Vehicles.GET_GEARBOX_EXPENDITURE_TUNABLE(price_variation, option))
        elseif price_variation == PRICE_VARIATIONS.MPV_STANDARD 
        or price_variation == PRICE_VARIATIONS.MPV_IE_BIKE 
        or price_variation == PRICE_VARIATIONS.MPV_BIKE 
        or price_variation == PRICE_VARIATIONS.MPV_SULTANRS 
        or price_variation == PRICE_VARIATIONS.MPV_SLAMVAN3 then
            local prices = {
                [0] = 200,
                [1] = 5900,
                [2] = 6500,
                [3] = 8000,
                [4] = 12000,
            }
            return math.floor(prices[option] * ExtendedM.Vehicles.GET_GEARBOX_EXPENDITURE_TUNABLE(price_variation, option))
        end
    elseif menu == MENU_TYPES.CMM_SUSPENSION then
        if Features.FEATURE_GEN9_EXCLUSIVE == 1 then
           if ExtendedM.Vehicles.IS_VEHICLE_A_HSW_VEHICLE(g_ModVehicle) then
                if sell_value then
                    if GetVehicleMod(g_ModVehicle, ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_SUSPENSION) + 1 == GetNumVehicleMods(g_ModVehicle, ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_SUSPENSION) then
                        return g_sMPTunables.iGEN9_MODS_HSW_SUSPENSION
                    end
                else
                    if label ~= nil and label ~= "" then
                        if label == "CMOD_SUS_HSW" then return g_sMPTunables.iGEN9_MODS_HSW_SUSPENSION end
                    end
                end
           end
        end
        local prices = {
            [0] = 200,
            [1] = 1000,
            [2] = 2000,
            [3] = 3400,
            [4] = 4400,
            [5] = 4600,
        }
        return math.floor(prices[option] * ExtendedM.Vehicles.GET_SUSPENSION_EXPENDITURE_TUNABLE(price_variation, option))
    elseif menu == MENU_TYPES.CMM_TURBO then
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
        or price_variation == PRICE_VARIATIONS.MPV_GANG_OPS_STANDARD 
        or price_variation == PRICE_VARIATIONS.MPV_SMUG_HEAVY 
        or price_variation == PRICE_VARIATIONS.MPV_BATTLE_STANDARD 
        or price_variation == PRICE_VARIATIONS.MPV_BATTLE_HEAVY 
        or price_variation == PRICE_VARIATIONS.MPV_ARENA_WARS 
        or price_variation == PRICE_VARIATIONS.MPV_RC_BANDITO then
            local prices = {
                [0] = 5000,
                [1] = 50000,
            }
            return math.floor(prices[option] * ExtendedM.Vehicles.GET_TURBO_EXPENDITURE_TUNABLE(price_variation, option))
        elseif price_variation == PRICE_VARIATIONS.MPV_SPORT then
            local prices = {
                [0] = 3250,
                [1] = 42500,
            }
            return math.floor(prices[option] * ExtendedM.Vehicles.GET_TURBO_EXPENDITURE_TUNABLE(price_variation, option))
        elseif price_variation == PRICE_VARIATIONS.MPV_SUV then
            local prices = {
                [0] = 2500,
                [1] = 35000,
            }
            return math.floor(prices[option] * ExtendedM.Vehicles.GET_TURBO_EXPENDITURE_TUNABLE(price_variation, option))
        elseif price_variation == PRICE_VARIATIONS.MPV_STANDARD 
        or price_variation == PRICE_VARIATIONS.MPV_IE_BIKE 
        or price_variation == PRICE_VARIATIONS.MPV_SULTANRS 
        or price_variation == PRICE_VARIATIONS.MPV_SLAMVAN3 then
            local prices = {
                [0] = 1000,
                [1] = 30000,
            }
            return math.floor(prices[option] * ExtendedM.Vehicles.GET_TURBO_EXPENDITURE_TUNABLE(price_variation, option))
        elseif price_variation == PRICE_VARIATIONS.MPV_BIKE then
            local prices = {
                [0] = 1000,
                [1] = 24000,
            }
            return math.floor(prices[option] * ExtendedM.Vehicles.GET_TURBO_EXPENDITURE_TUNABLE(price_variation, option))
        end
    end
end