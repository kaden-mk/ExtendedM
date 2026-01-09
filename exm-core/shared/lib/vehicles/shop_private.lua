ExtendedM.Vehicles = ExtendedM.Vehicles or {}

local VehicleHashes = ExtendedM.VehicleHashes
local Features = ExtendedM.Config.Features

local PRICE_VARIATIONS = ExtendedM.Enum.VEHICLE_MOD_PRICE_VARIATION

function ExtendedM.Vehicles.IS_THIS_MODEL_NEEDS_SMUGGLER_STANDARD_PRICE_GROUP(eModel)
    if eModel == VehicleHashes.HAVOK or eModel == VehicleHashes.MICROLIGHT or eModel == VehicleHashes.MOGUL or eModel == VehicleHashes.ROGUE or eModel == VehicleHashes.SEABREEZE or eModel == VehicleHashes.TULA or eModel == VehicleHashes.PYRO or eModel == VehicleHashes.ALPHAZ1 or eModel == VehicleHashes.HOWARD or eModel == VehicleHashes.STARLING or eModel == VehicleHashes.MOLOTOK or eModel == VehicleHashes.NOKOTA or eModel == VehicleHashes.CUBAN800 or eModel == VehicleHashes.AVENGER or eModel == VehicleHashes.THRUSTER or eModel == VehicleHashes.RIOT2 or eModel == VehicleHashes.CHERNOBOG or eModel == VehicleHashes.VOLATOL or eModel == VehicleHashes.SEASPARROW then
        return true
    elseif (eModel == VehicleHashes.SEASPARROW2) and Features.FEATURE_HEIST_ISLAND == 1 then
        return true
    end

    return false
end

function ExtendedM.Vehicles.IS_THIS_MODEL_SMUGGLER_HEAVY_PRICE_GROUP_PACK_VEHICLE(eModel)
    if eModel == VehicleHashes.HUNTER or eModel == VehicleHashes.BOMBUSHKA or eModel == VehicleHashes.VOLATOL or eModel == VehicleHashes.AKULA or eModel == VehicleHashes.KHANJALI or eModel == VehicleHashes.STRIKEFORCE then
        return true
    elseif (eModel == VehicleHashes.ALKONOST or eModel == VehicleHashes.ANNIHILATOR2) and Features.FEATURE_HEIST_ISLAND == 1 then
        return true
    end

    return false
end

-- around ~300 cars are missing for this
function ExtendedM.Vehicles.GET_VEHICLE_MOD_PRICE_VARIATION_FOR_CATALOGUE(eModel)

    if eModel == VehicleHashes.VIRGO2 then
        return PRICE_VARIATIONS.MPV_VIRGO2
    elseif eModel == VehicleHashes.SLAMVAN3 then
        return PRICE_VARIATIONS.MPV_SLAMVAN3
    end

    if eModel == VehicleHashes.SULTANRS then
        return PRICE_VARIATIONS.MPV_SULTANRS
    elseif eModel == VehicleHashes.BANSHEE2 then
        return PRICE_VARIATIONS.MPV_BANSHEE2
    end

    if eModel == VehicleHashes.BTYPE3 then
        return PRICE_VARIATIONS.MPV_BTYPE3
    end

    -- Lowrder2 - these need to match existing vehicles.
    if eModel == VehicleHashes.FACTION3 then
        return PRICE_VARIATIONS.MPV_SPECIAL
    elseif eModel == VehicleHashes.MINIVAN2 then
        return PRICE_VARIATIONS.MPV_STANDARD
    elseif eModel == VehicleHashes.SABREGT2 then
        return PRICE_VARIATIONS.MPV_STANDARD
    elseif eModel == VehicleHashes.SLAMVAN3 then
        return PRICE_VARIATIONS.MPV_STANDARD
    elseif eModel == VehicleHashes.TORNADO5 then
        return PRICE_VARIATIONS.MPV_STANDARD
    elseif eModel == VehicleHashes.VIRGO2 then
        return PRICE_VARIATIONS.MPV_SPECIAL
    elseif eModel == VehicleHashes.VIRGO3 then
        return PRICE_VARIATIONS.MPV_SPECIAL
    end

    if eModel == VehicleHashes.FCR then
        return PRICE_VARIATIONS.MPV_STANDARD
    elseif eModel == VehicleHashes.DIABLOUS then
        return PRICE_VARIATIONS.MPV_STANDARD
    elseif eModel == VehicleHashes.DIABLOUS2 then
        return PRICE_VARIATIONS.MPV_IE_BIKE
    elseif eModel == VehicleHashes.FCR2 then
        return PRICE_VARIATIONS.MPV_IE_BIKE
    elseif eModel == VehicleHashes.ITALIGTB then
        return PRICE_VARIATIONS.MPV_SPECIAL
    elseif eModel == VehicleHashes.SPECTER then
        return PRICE_VARIATIONS.MPV_SPECIAL
    elseif eModel == VehicleHashes.NERO then
        return PRICE_VARIATIONS.MPV_SPECIAL
    elseif eModel == VehicleHashes.ITALIGTB2 then
        return PRICE_VARIATIONS.MPV_IE_HIGH
    elseif eModel == VehicleHashes.SPECTER2 then
        return PRICE_VARIATIONS.MPV_IE_HIGH
    elseif eModel == VehicleHashes.NERO2 then
        return PRICE_VARIATIONS.MPV_IE_HIGH
    elseif eModel == VehicleHashes.COMET3 then
        return PRICE_VARIATIONS.MPV_IE_RETRO
    elseif eModel == VehicleHashes.ELEGY then
        return PRICE_VARIATIONS.MPV_IE_RETRO
    elseif (eModel == VehicleHashes.YOUGA3) and Features.FEATURE_SUMMER_2020 == 1 then
        return PRICE_VARIATIONS.MPV_IE_HIGH
    elseif (eModel == VehicleHashes.GAUNTLET5) and Features.FEATURE_SUMMER_2020 == 1 then
        return PRICE_VARIATIONS.MPV_IE_HIGH
    elseif (eModel == VehicleHashes.MANANA2) and Features.FEATURE_SUMMER_2020 == 1 then
        return PRICE_VARIATIONS.MPV_IE_HIGH
    elseif (eModel == VehicleHashes.PEYOTE3) and Features.FEATURE_SUMMER_2020 == 1 then
        return PRICE_VARIATIONS.MPV_IE_HIGH
    elseif (eModel == VehicleHashes.YOSEMITE3) and Features.FEATURE_SUMMER_2020 == 1 then
        return PRICE_VARIATIONS.MPV_IE_HIGH
    elseif (eModel == VehicleHashes.GLENDALE2) and Features.FEATURE_SUMMER_2020 == 1 then
        return PRICE_VARIATIONS.MPV_IE_HIGH
    end

    if eModel == VehicleHashes.APC then
        return PRICE_VARIATIONS.MPV_GR_HEAVY
    elseif eModel == VehicleHashes.HALFTRACK then
        return PRICE_VARIATIONS.MPV_GR_HEAVY
    elseif eModel == VehicleHashes.TRAILERSMALL2 then
        return PRICE_VARIATIONS.MPV_GR_HEAVY
    elseif eModel == VehicleHashes.DELUXO then
        return PRICE_VARIATIONS.MPV_GR_HEAVY
    elseif eModel == VehicleHashes.STROMBERG then
        return PRICE_VARIATIONS.MPV_GR_HEAVY
    elseif eModel == VehicleHashes.CARACARA then
        return PRICE_VARIATIONS.MPV_GR_HEAVY
    elseif eModel == VehicleHashes.DUNE3 then
        return PRICE_VARIATIONS.MPV_GR_LIGHT
    elseif eModel == VehicleHashes.INSURGENT3 then
        return PRICE_VARIATIONS.MPV_GR_LIGHT
    elseif eModel == VehicleHashes.TAMPA3 then
        return PRICE_VARIATIONS.MPV_GR_LIGHT
    elseif eModel == VehicleHashes.TECHNICAL3 then
        return PRICE_VARIATIONS.MPV_GR_LIGHT
    elseif eModel == VehicleHashes.OPPRESSOR then
        return PRICE_VARIATIONS.MPV_GR_BIKE
    elseif eModel == VehicleHashes.OPPRESSOR2 then
        return PRICE_VARIATIONS.MPV_GR_BIKE
    elseif eModel == VehicleHashes.PHANTOM3 then
        return PRICE_VARIATIONS.MPV_GR_TRAILERLARGE
    elseif eModel == VehicleHashes.HAULER2 then
        return PRICE_VARIATIONS.MPV_GR_TRAILERLARGE
    elseif eModel == VehicleHashes.TRAILERLARGE then
        return PRICE_VARIATIONS.MPV_GR_TRAILERLARGE
    elseif eModel == VehicleHashes.BARRAGE then
        return PRICE_VARIATIONS.MPV_GANG_OPS_STANDARD
    elseif eModel == VehicleHashes.MULE4 then
        return PRICE_VARIATIONS.MPV_BATTLE_HEAVY
    elseif eModel == VehicleHashes.SPEEDO4 then
        return PRICE_VARIATIONS.MPV_BATTLE_STANDARD
    elseif eModel == VehicleHashes.POUNDER2 then
        return PRICE_VARIATIONS.MPV_BATTLE_STANDARD
    elseif eModel == VehicleHashes.RCBANDITO then
        return PRICE_VARIATIONS.MPV_RC_BANDITO
    elseif eModel == VehicleHashes.MINITANK then
        return PRICE_VARIATIONS.MPV_BATTLE_STANDARD
    elseif eModel == VehicleHashes.JB7002 then
        return PRICE_VARIATIONS.MPV_BATTLE_STANDARD
    end

    if ExtendedM.Vehicles.IS_THIS_MODEL_NEEDS_SMUGGLER_STANDARD_PRICE_GROUP(eModel) then
        return PRICE_VARIATIONS.MPV_SMUG_STANDARD
    elseif ExtendedM.Vehicles.IS_THIS_MODEL_SMUGGLER_HEAVY_PRICE_GROUP_PACK_VEHICLE(eModel) then
        return PRICE_VARIATIONS.MPV_SMUG_HEAVY
    elseif ExtendedM.Vehicles.IS_VEHICLE_AN_ARENA_CONTENDER_VEHICLE(eModel) then
        return PRICE_VARIATIONS.MPV_ARENA_WARS
    end

    if eModel == VehicleHashes.VIGILANTE then
        return PRICE_VARIATIONS.MPV_GR_BIKE
    end

    if ExtendedM.Vehicles.IS_IMANI_TECH_ALLOWED_FOR_THIS_VEHICLE(eModel) then
        return PRICE_VARIATIONS.MPV_ARENA_WARS
    end

    if ExtendedM.Vehicles.SHOULD_THIS_MODEL_USE_EXPENSIVE_MODS(eModel) then
        return PRICE_VARIATIONS.MPV_SPECIAL
    end

    if IsThisModelABike(eModel) then
        return PRICE_VARIATIONS.MPV_BIKE
    end

    if eModel == VehicleHashes.ADDER then
        return 3
    elseif eModel == VehicleHashes.AIRBUS then
        return 0
    elseif eModel == VehicleHashes.AKUMA then
        return 4
    elseif eModel == VehicleHashes.ALPHA then
        return 3
    elseif eModel == VehicleHashes.ANNIHILATOR then
        return 0
    elseif eModel == VehicleHashes.ASEA then
        return 0
    elseif eModel == VehicleHashes.ASTEROPE then
        return 0
    elseif eModel == VehicleHashes.BALLER2 then
        return 2
    elseif eModel == VehicleHashes.BANSHEE then
        return 3
    elseif eModel == VehicleHashes.BARRACKS then
        return 0
    elseif eModel == VehicleHashes.BATI then
        return 4
    elseif eModel == VehicleHashes.BATI2 then
        return 4
    elseif eModel == VehicleHashes.BESRA then
        return 0
    elseif eModel == VehicleHashes.BFINJECTION then
        return 0
    elseif eModel == VehicleHashes.BIFTA then
        return 0
    elseif eModel == VehicleHashes.BISON then
        return 2
    elseif eModel == VehicleHashes.BLADE then
        return 3
    elseif eModel == VehicleHashes.BLAZER then
        return 0
    elseif eModel == VehicleHashes.BLAZER3 then
        return 0
    elseif eModel == VehicleHashes.BMX then
        return 0
    elseif eModel == VehicleHashes.BOBCATXL then
        return 2
    elseif eModel == VehicleHashes.BODHI2 then
        return 0
    elseif eModel == VehicleHashes.BTYPE then
        return 0
    elseif eModel == VehicleHashes.BUFFALO then
        return 0
    elseif eModel == VehicleHashes.BUFFALO2 then
        return 1
    elseif eModel == VehicleHashes.BULLET then
        return 3
    elseif eModel == VehicleHashes.BUS then
        return 0
    elseif eModel == VehicleHashes.BUZZARD then
        return 0
    elseif eModel == VehicleHashes.CARBONIZZARE then
        return 3
    elseif eModel == VehicleHashes.CARBONRS then
        return 3
    elseif eModel == VehicleHashes.CAVALCADE then
        return 2
    elseif eModel == VehicleHashes.CAVALCADE2 then
        return 2
    elseif eModel == VehicleHashes.CHEETAH then
        return 3
    elseif eModel == VehicleHashes.COACH then
        return 0
    elseif eModel == VehicleHashes.COGCABRIO then
        return 3
    elseif eModel == VehicleHashes.COMET2 then
        return 3
    elseif eModel == VehicleHashes.COQUETTE then
        return 3
    elseif eModel == VehicleHashes.COQUETTE2 then
        return 1
    elseif eModel == VehicleHashes.CRUISER then
        return 0
    elseif eModel == VehicleHashes.CRUSADER then
        return 0
    elseif eModel == VehicleHashes.CUBAN800 then
        return 0
    elseif eModel == VehicleHashes.DILETTANTE then
        return 0
    elseif eModel == VehicleHashes.DILETTANTE2 then
        return 0
    elseif eModel == VehicleHashes.DOMINATOR then
        return 1
    elseif eModel == VehicleHashes.DOMINATOR2 then
        return 1
    elseif eModel == VehicleHashes.DOUBLE then
        return 4
    elseif eModel == VehicleHashes.DUBSTA3 then
        return 3
    elseif eModel == VehicleHashes.DUMP then
        return 0
    elseif eModel == VehicleHashes.DUNE then
        return 0
    elseif eModel == VehicleHashes.DUSTER then
        return 0
    elseif eModel == VehicleHashes.ELEGY2 then
        return 3
    elseif eModel == VehicleHashes.ENTITYXF then
        return 3
    elseif eModel == VehicleHashes.EXEMPLAR then
        return 3
    elseif eModel == VehicleHashes.F620 then
        return 1
    elseif eModel == VehicleHashes.FAGGIO2 then
        return 4
    elseif eModel == VehicleHashes.FELON then
        return 0
    elseif eModel == VehicleHashes.FELON2 then
        return 0
    elseif eModel == VehicleHashes.FELTZER2 then
        return 3
    elseif eModel == VehicleHashes.FROGGER then
        return 0
    elseif eModel == VehicleHashes.FROGGER2 then
        return 0
    elseif eModel == VehicleHashes.FUGITIVE then
        return 0
    elseif eModel == VehicleHashes.FUSILADE then
        return 1
    elseif eModel == VehicleHashes.GAUNTLET then
        return 0
    elseif eModel == VehicleHashes.GAUNTLET2 then
        return 0
    elseif eModel == VehicleHashes.GLENDALE then
        return 3
    elseif eModel == VehicleHashes.GRANGER then
        return 2
    elseif eModel == VehicleHashes.GRESLEY then
        return 2
    elseif eModel == VehicleHashes.HEXER then
        return 4
    elseif eModel == VehicleHashes.HOTKNIFE then
        return 3
    elseif eModel == VehicleHashes.HUNTLEY then
        return 1
    elseif eModel == VehicleHashes.HYDRA then
        return 0
    elseif eModel == VehicleHashes.INFERNUS then
        return 3
    elseif eModel == VehicleHashes.INGOT then
        return 0
    elseif eModel == VehicleHashes.INTRUDER then
        return 0
    elseif eModel == VehicleHashes.ISSI2 then
        return 0
    elseif eModel == VehicleHashes.JACKAL then
        return 1
    elseif eModel == VehicleHashes.JB700 then
        return 3
    elseif eModel == VehicleHashes.JESTER then
        return 3
    elseif eModel == VehicleHashes.JESTER2 then
        return 3
    elseif eModel == VehicleHashes.JETMAX then
        return 0
    elseif eModel == VehicleHashes.JOURNEY then
        return 0
    elseif eModel == VehicleHashes.KALAHARI then
        return 0
    elseif eModel == VehicleHashes.KHAMELION then
        return 3
    elseif eModel == VehicleHashes.LANDSTALKER then
        return 2
    elseif eModel == VehicleHashes.LUXOR then
        return 0
    elseif eModel == VehicleHashes.MAMMATUS then
        return 0
    elseif eModel == VehicleHashes.MARQUIS then
        return 0
    elseif eModel == VehicleHashes.MASSACRO then
        return 3
    elseif eModel == VehicleHashes.MASSACRO2 then
        return 3
    elseif eModel == VehicleHashes.MAVERICK then
        return 0
    elseif eModel == VehicleHashes.MESA then
        return 2
    elseif eModel == VehicleHashes.MESA2 then
        return 2
    elseif eModel == VehicleHashes.MESA3 then
        return 2
    elseif eModel == VehicleHashes.MILJET then
        return 0
    elseif eModel == VehicleHashes.MINIVAN then
        return 0
    elseif eModel == VehicleHashes.MONROE then
        return 3
    elseif eModel == VehicleHashes.MONSTER then
        return 0
    elseif eModel == VehicleHashes.MULE then
        return 0
    elseif eModel == VehicleHashes.MULE2 then
        return 0
    elseif eModel == VehicleHashes.MULE3 then
        return 0
    end
    if eModel == VehicleHashes.NEMESIS then
        return 4
    elseif eModel == VehicleHashes.NINEF then
        return 3
    elseif eModel == VehicleHashes.NINEF2 then
        return 3
    elseif eModel == VehicleHashes.ORACLE then
        return 1
    elseif eModel == VehicleHashes.ORACLE2 then
        return 1
    elseif eModel == VehicleHashes.PANTO then
        return 3
    elseif eModel == VehicleHashes.PARADISE then
        return 0
    elseif eModel == VehicleHashes.PCJ then
        return 4
    elseif eModel == VehicleHashes.PENUMBRA then
        return 1
    elseif eModel == VehicleHashes.PICADOR then
        return 0
    elseif eModel == VehicleHashes.PIGALLE then
        return 3
    elseif eModel == VehicleHashes.PREMIER then
        return 0
    elseif eModel == VehicleHashes.PRIMO then
        return 0
    elseif eModel == VehicleHashes.RADI then
        return 0
    elseif eModel == VehicleHashes.RANCHERXL then
        return 2
    elseif eModel == VehicleHashes.RANCHERXL2 then
        return 2
    elseif eModel == VehicleHashes.RAPIDGT then
        return 3
    elseif eModel == VehicleHashes.RATLOADER then
        return 2
    elseif eModel == VehicleHashes.RATLOADER2 then
        return 2
    elseif eModel == VehicleHashes.REBEL then
        return 2
    elseif eModel == VehicleHashes.REBEL2 then
        return 2
    elseif eModel == VehicleHashes.REGINA then
        return 0
    elseif eModel == VehicleHashes.RENTALBUS then
        return 0
    elseif eModel == VehicleHashes.RHAPSODY then
        return 3
    elseif eModel == VehicleHashes.RHINO then
        return 0
    elseif eModel == VehicleHashes.ROCOTO then
        return 2
    elseif eModel == VehicleHashes.RUFFIAN then
        return 4
    elseif eModel == VehicleHashes.RUMPO then
        return 0
    elseif eModel == VehicleHashes.SADLER then
        return 2
    elseif eModel == VehicleHashes.SANCHEZ then
        return 4
    elseif eModel == VehicleHashes.SANCHEZ2 then
        return 4
    elseif eModel == VehicleHashes.SANDKING then
        return 2
    elseif eModel == VehicleHashes.SANDKING2 then
        return 2
    elseif eModel == VehicleHashes.SCHAFTER2 then
        return 1
    elseif eModel == VehicleHashes.SCHWARZER then
        return 1
    elseif eModel == VehicleHashes.SCORCHER then
        return 0
    elseif eModel == VehicleHashes.SEASHARK then
        return 0
    elseif eModel == VehicleHashes.SEMINOLE then
        return 2
    elseif eModel == VehicleHashes.SENTINEL then
        return 1
    elseif eModel == VehicleHashes.SENTINEL2 then
        return 1
    elseif eModel == VehicleHashes.SHAMAL then
        return 0
    elseif eModel == VehicleHashes.SOVEREIGN then
        return 4
    elseif eModel == VehicleHashes.SPEEDER then
        return 0
    elseif eModel == VehicleHashes.SQUALO then
        return 0
    elseif eModel == VehicleHashes.STANIER then
        return 0
    elseif eModel == VehicleHashes.STINGER then
        return 3
    elseif eModel == VehicleHashes.STINGERGT then
        return 3
    elseif eModel == VehicleHashes.STRATUM then
        return 0
    elseif eModel == VehicleHashes.STRETCH then
        return 0
    elseif eModel == VehicleHashes.STUNT then
        return 0
    elseif eModel == VehicleHashes.SUNTRAP then
        return 0
    elseif eModel == VehicleHashes.SUPERD then
        return 3
    elseif eModel == VehicleHashes.SURANO then
        return 3
    elseif eModel == VehicleHashes.SURFER then
        return 0
    elseif eModel == VehicleHashes.SURGE then
        return 0
    elseif eModel == VehicleHashes.TAILGATER then
        return 0
    elseif eModel == VehicleHashes.THRUST then
        return 4
    elseif eModel == VehicleHashes.TITAN then
        return 0
    elseif eModel == VehicleHashes.TRIBIKE then
        return 4
    elseif eModel == VehicleHashes.TRIBIKE2 then
        return 4
    elseif eModel == VehicleHashes.TRIBIKE3 then
        return 4
    elseif eModel == VehicleHashes.TROPIC then
        return 0
    elseif eModel == VehicleHashes.TURISMOR then
        return 3
    elseif eModel == VehicleHashes.VACCA then
        return 3
    elseif eModel == VehicleHashes.VADER then
        return 4
    elseif eModel == VehicleHashes.VALKYRIE then
        return 0
    elseif eModel == VehicleHashes.VELUM then
        return 0
    elseif eModel == VehicleHashes.VESTRA then
        return 0
    elseif eModel == VehicleHashes.VIGERO then
        return 1
    elseif eModel == VehicleHashes.VOLTIC then
        return 3
    elseif eModel == VehicleHashes.WARRENER then
        return 3
    elseif eModel == VehicleHashes.WASHINGTON then
        return 0
    elseif eModel == VehicleHashes.YOUGA then
        return 2
    elseif eModel == VehicleHashes.ZENTORNO then
        return 3
    elseif eModel == VehicleHashes.ZION then
        return 1
    elseif eModel == VehicleHashes.ZION2 then
        return 1
    elseif eModel == VehicleHashes.ZTYPE then
        return 3
    elseif eModel == VehicleHashes.SWIFT then
        return 0
    elseif eModel == VehicleHashes.INNOVATION then
        return 4
    elseif eModel == VehicleHashes.HAKUCHOU then
        return 4
    elseif eModel == VehicleHashes.FUROREGT then
        return 0
    elseif eModel == VehicleHashes.KURUMA then
        return 3
    elseif eModel == VehicleHashes.BLISTA2 then
        return 0
    elseif eModel == VehicleHashes.BLISTA3 then
        return 0
    elseif eModel == VehicleHashes.BUFFALO3 then
        return 1
    elseif eModel == VehicleHashes.DODO then
        return 0
    elseif eModel == VehicleHashes.DOMINATOR then
        return 1
    elseif eModel == VehicleHashes.DOMINATOR2 then
        return 1
    elseif eModel == VehicleHashes.DUKES then
        return 1
    elseif eModel == VehicleHashes.DUKES2 then
        return 0
    elseif eModel == VehicleHashes.MARSHALL then
        return 0
    elseif eModel == VehicleHashes.STALION then
        return 0
    elseif eModel == VehicleHashes.STALION2 then
        return 0
    elseif eModel == VehicleHashes.SUBMERSIBLE then
        return 0
    elseif eModel == VehicleHashes.SUBMERSIBLE2 then
        return 0
    end

    if eModel == VehicleHashes.BAGGER then
        return 4
    elseif eModel == VehicleHashes.BALLER then
        return 2
    elseif eModel == VehicleHashes.BJXL then
        return 2
    elseif eModel == VehicleHashes.BLISTA then
        return 0
    elseif eModel == VehicleHashes.BLISTA2 then
        return 0
    elseif eModel == VehicleHashes.BUCCANEER then
        return 0
    elseif eModel == VehicleHashes.DAEMON then
        return 4
    elseif eModel == VehicleHashes.DLOADER then
        return 0
    elseif eModel == VehicleHashes.FQ2 then
        return 0
    elseif eModel == VehicleHashes.HABANERO then
        return 0
    elseif eModel == VehicleHashes.MANANA then
        return 0
    elseif eModel == VehicleHashes.PATRIOT then
        return 2
    elseif eModel == VehicleHashes.PEYOTE then
        return 0
    elseif eModel == VehicleHashes.PHOENIX then
        return 0
    elseif eModel == VehicleHashes.PRAIRIE then
        return 0
    elseif eModel == VehicleHashes.SABREGT then
        return 0
    elseif eModel == VehicleHashes.SERRANO then
        return 2
    elseif eModel == VehicleHashes.SPEEDO then
        return 0
    elseif eModel == VehicleHashes.SPEEDO2 then
        return 0
    elseif eModel == VehicleHashes.VOODOO2 then
        return 0
    elseif eModel == VehicleHashes.ROMERO then
        return 0
    elseif eModel == VehicleHashes.SURFER2 then
        return 0
    elseif eModel == VehicleHashes.EMPEROR2 then
        return 0
    elseif eModel == VehicleHashes.DUBSTA2 then
        return 2
    elseif eModel == VehicleHashes.BLAZER2 then
        return 0
    elseif eModel == VehicleHashes.ORACLE2 then
        return 1
    elseif eModel == VehicleHashes.CAVALCADE2 then
        return 2
    elseif eModel == VehicleHashes.DUBSTA then
        return 2
    elseif eModel == VehicleHashes.RAPIDGT2 then
        return 1
    elseif eModel == VehicleHashes.BOXVILLE4 then
        return 0
    elseif eModel == VehicleHashes.MESA then
        return 2
    end

    -- Luxe
    if eModel == VehicleHashes.WINDSOR or eModel == VehicleHashes.OSIRIS or eModel == VehicleHashes.FELTZER3 or eModel == VehicleHashes.VIRGO then
        return 3
    -- Lowrider
    elseif eModel == VehicleHashes.FACTION or eModel == VehicleHashes.FACTION2 or eModel == VehicleHashes.MOONBEAM2 or eModel == VehicleHashes.MOONBEAM then
        return 3
    -- Lowrder - these need to match existing vehicles.
    elseif eModel == VehicleHashes.BUCCANEER2 or eModel == VehicleHashes.CHINO2 or eModel == VehicleHashes.PRIMO2 or eModel == VehicleHashes.VOODOO then
        return 0
    -- Halloween
    elseif eModel == VehicleHashes.BTYPE2 or eModel == VehicleHashes.LURCHER then
        return 3
    elseif eModel == VehicleHashes.OMNIS or eModel == VehicleHashes.TROPOS or eModel == VehicleHashes.BRIOSO or eModel == VehicleHashes.TROPHYTRUCK or eModel == VehicleHashes.TROPHYTRUCK2 or eModel == VehicleHashes.CLIFFHANGER or eModel == VehicleHashes.BF400 or eModel == VehicleHashes.RALLYTRUCK or eModel == VehicleHashes.TAMPA2 or eModel == VehicleHashes.GARGOYLE or eModel == VehicleHashes.TYRUS or eModel == VehicleHashes.LE7B or eModel == VehicleHashes.LYNX or eModel == VehicleHashes.SHEAVA or eModel == VehicleHashes.ARDENT or eModel == VehicleHashes.CHEETAH2 or eModel == VehicleHashes.TORERO or eModel == VehicleHashes.VAGNER or eModel == VehicleHashes.XA21 then
        return 3
    elseif eModel == VehicleHashes.CONTENDER then
        return 2
    elseif eModel == VehicleHashes.TAMPA3 or eModel == VehicleHashes.APC or eModel == VehicleHashes.HALFTRACK or eModel == VehicleHashes.DUNE3 or eModel == VehicleHashes.TRAILERSMALL2 or eModel == VehicleHashes.INSURGENT3 or eModel == VehicleHashes.TECHNICAL3 or eModel == VehicleHashes.SENTINEL3 or eModel == VehicleHashes.RIATA then
        return 3
    -- VehicleHashes.CASE VehicleHashes.PRIMO3
    elseif eModel == VehicleHashes.GB200 or eModel == VehicleHashes.ISSI3 or eModel == VehicleHashes.SWINGER or eModel == VehicleHashes.PATRIOT2 or eModel == VehicleHashes.MENACER or eModel == VehicleHashes.FREECRAWLER or eModel == VehicleHashes.STAFFORD or eModel == VehicleHashes.SCRAMJET or eModel == VehicleHashes.TERBYTE or eModel == VehicleHashes.CLIQUE or eModel == VehicleHashes.DEVESTE or eModel == VehicleHashes.DEVIANT or eModel == VehicleHashes.IMPALER or eModel == VehicleHashes.SCARAB or eModel == VehicleHashes.SCHLAGEN or eModel == VehicleHashes.TOROS or eModel == VehicleHashes.VAMOS or eModel == VehicleHashes.TULIP or eModel == VehicleHashes.MONSTER3 or eModel == VehicleHashes.IMPALER2 or eModel == VehicleHashes.BRUISER or eModel == VehicleHashes.CERBERUS or eModel == VehicleHashes.DOMINATOR4 or eModel == VehicleHashes.IMPERATOR or eModel == VehicleHashes.ISSI4 or eModel == VehicleHashes.ITALIGTO or eModel == VehicleHashes.DEATHBIKE or eModel == VehicleHashes.SLAMVAN4 or eModel == VehicleHashes.ZR380 or eModel == VehicleHashes.BRUTUS or eModel == VehicleHashes.LGUARD or eModel == VehicleHashes.BLAZER2 or eModel == VehicleHashes.FIRETRUK or eModel == VehicleHashes.BURRITO2 or eModel == VehicleHashes.BOXVILLE or eModel == VehicleHashes.STOCKADE or eModel == VehicleHashes.ASBO or eModel == VehicleHashes.KANJO or eModel == VehicleHashes.FORMULA or eModel == VehicleHashes.IMORGON or eModel == VehicleHashes.KOMODA or eModel == VehicleHashes.MANANA2 or eModel == VehicleHashes.REBLA or eModel == VehicleHashes.SUGOI or eModel == VehicleHashes.YOUGA3 or eModel == VehicleHashes.ZHABA or eModel == VehicleHashes.VSTR or eModel == VehicleHashes.EVERON or eModel == VehicleHashes.SULTAN2 or eModel == VehicleHashes.JB7002 or eModel == VehicleHashes.OUTLAW or eModel == VehicleHashes.STRYDER or eModel == VehicleHashes.VAGRANT or eModel == VehicleHashes.FORMULA2 or eModel == VehicleHashes.FURIA or eModel == VehicleHashes.YOSEMITE2 or eModel == VehicleHashes.RETINUE2 or eModel == VehicleHashes.MINITANK or eModel == VehicleHashes.GAUNTLET5 or eModel == VehicleHashes.CLUB or eModel == VehicleHashes.DUKES3 or eModel == VehicleHashes.MANCHEZ2 or eModel == VehicleHashes.BRIOSO2 or eModel == VehicleHashes.WINKY or eModel == VehicleHashes.VERUS or eModel == VehicleHashes.AVISA or eModel == VehicleHashes.LONGFIN or eModel == VehicleHashes.PATROLBOAT or eModel == VehicleHashes.SEASPARROW3 or eModel == VehicleHashes.SLAMTRUCK or eModel == VehicleHashes.VETIR or eModel == VehicleHashes.ITALIRSX or eModel == VehicleHashes.TOREADOR or eModel == VehicleHashes.WEEVIL or eModel == VehicleHashes.DINGHY5 or eModel == VehicleHashes.SQUADDIE or eModel == VehicleHashes.VETO or eModel == VehicleHashes.VETO2 or eModel == VehicleHashes.PEYOTE3 or eModel == VehicleHashes.YOSEMITE3 or eModel == VehicleHashes.GLENDALE2 or eModel == VehicleHashes.PENUMBRA2 or eModel == VehicleHashes.LANDSTALKER2 or eModel == VehicleHashes.SEMINOLE2 or eModel == VehicleHashes.TIGON or eModel == VehicleHashes.OPENWHEEL1 or eModel == VehicleHashes.COQUETTE4 or eModel == VehicleHashes.OPENWHEEL2 or eModel == VehicleHashes.FUTO2 or eModel == VehicleHashes.TAILGATER2 or eModel == VehicleHashes.SULTAN3 or eModel == VehicleHashes.DOMINATOR8 or eModel == VehicleHashes.EUROS or eModel == VehicleHashes.GROWLER or eModel == VehicleHashes.PREVION or eModel == VehicleHashes.BALLER7 or eModel == VehicleHashes.ASTRON or eModel == VehicleHashes.COMET7 or eModel == VehicleHashes.IGNUS or eModel == VehicleHashes.YOUGA4 or eModel == VehicleHashes.ZENO or eModel == VehicleHashes.CINQUEMILA or eModel == VehicleHashes.MULE5 or eModel == VehicleHashes.IWAGEN then
        return 3
    elseif (eModel == VehicleHashes.CALICO or eModel == VehicleHashes.COMET6 or eModel == VehicleHashes.CYPHER or eModel == VehicleHashes.DOMINATOR7 or eModel == VehicleHashes.JESTER4 or eModel == VehicleHashes.REMUS or eModel == VehicleHashes.VECTRE or eModel == VehicleHashes.ZR350 or eModel == VehicleHashes.WARRENER2 or eModel == VehicleHashes.RT3000) and Features.FEATURE_TUNER == 1 then
        return 3
    end

    return 0

-- VehicleHashes.RETURN ENUM_TO_INT(VehicleHashes.GET_VEHICLE_MOD_KIT_TYPE(vehID))
end