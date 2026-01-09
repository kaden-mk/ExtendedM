ExtendedM.Vehicles = ExtendedM.Vehicles or {}

local VehicleHashes = ExtendedM.VehicleHashes
local Features = ExtendedM.Config.Features

function ExtendedM.Vehicles.SHOULD_THIS_MODEL_USE_EXPENSIVE_MODS(carMdl)
    if (carMdl) == VehicleHashes.ADDER or (carMdl) == VehicleHashes.BANSHEE or (carMdl) == VehicleHashes.BULLET or (carMdl) == VehicleHashes.CARBONIZZARE or (carMdl) == VehicleHashes.CARBONRS or (carMdl) == VehicleHashes.CHEETAH or (carMdl) == VehicleHashes.COGCABRIO or (carMdl) == VehicleHashes.COMET2 or (carMdl) == VehicleHashes.COQUETTE or (carMdl) == VehicleHashes.ELEGY2 or (carMdl) == VehicleHashes.ENTITYXF or (carMdl) == VehicleHashes.EXEMPLAR or (carMdl) == VehicleHashes.FELTZER2 or (carMdl) == VehicleHashes.HOTKNIFE or (carMdl) == VehicleHashes.INFERNUS or (carMdl) == VehicleHashes.JB700 or (carMdl) == VehicleHashes.KHAMELION or (carMdl) == VehicleHashes.MONROE or (carMdl) == VehicleHashes.NINEF or (carMdl) == VehicleHashes.NINEF2 or (carMdl) == VehicleHashes.RAPIDGT or (carMdl) == VehicleHashes.RAPIDGT2 or (carMdl) == VehicleHashes.STINGER or (carMdl) == VehicleHashes.STINGERGT or (carMdl) == VehicleHashes.SUPERD or (carMdl) == VehicleHashes.SURANO or (carMdl) == VehicleHashes.VACCA or (carMdl) == VehicleHashes.VOLTIC or (carMdl) == VehicleHashes.ZTYPE or (carMdl) == VehicleHashes.DUBSTA3 or (carMdl) == VehicleHashes.BLADE or (carMdl) == VehicleHashes.GLENDALE or (carMdl) == VehicleHashes.RHAPSODY or (carMdl) == VehicleHashes.WARRENER or (carMdl) == VehicleHashes.PANTO or (carMdl) == VehicleHashes.PIGALLE or (carMdl) == VehicleHashes.CASCO or (carMdl) == VehicleHashes.KURUMA2 or (carMdl) == VehicleHashes.LECTRO or (carMdl) == VehicleHashes.INSURGENT or (carMdl) == VehicleHashes.INSURGENT2 or (carMdl) == VehicleHashes.TECHNICAL then
        return true
    elseif (carMdl) == VehicleHashes.WINDSOR or (carMdl) == VehicleHashes.OSIRIS or (carMdl) == VehicleHashes.FELTZER3 or (carMdl) == VehicleHashes.VIRGO then
        return true
    elseif (carMdl) == VehicleHashes.FACTION or (carMdl) == VehicleHashes.FACTION2 or (carMdl) == VehicleHashes.MOONBEAM or (carMdl) == VehicleHashes.MOONBEAM2 then
        return true
    elseif (carMdl) == VehicleHashes.FACTION3 or (carMdl) == VehicleHashes.VIRGO2 then
        return true
    elseif (carMdl) == VehicleHashes.BALLER3 or (carMdl) == VehicleHashes.BALLER4 or (carMdl) == VehicleHashes.COGNOSCENTI or (carMdl) == VehicleHashes.COG55 or (carMdl) == VehicleHashes.LIMO2 or (carMdl) == VehicleHashes.MAMBA or (carMdl) == VehicleHashes.NIGHTSHADE or (carMdl) == VehicleHashes.SCHAFTER3 or (carMdl) == VehicleHashes.SCHAFTER4 or (carMdl) == VehicleHashes.VERLIERER2 then
        return true
    elseif (carMdl) == VehicleHashes.TAMPA then
        return true
    elseif (carMdl) == VehicleHashes.BANSHEE2 then
        return true
    elseif (carMdl) == VehicleHashes.BESTIAGTS or (carMdl) == VehicleHashes.BRICKADE or (carMdl) == VehicleHashes.FMJ or (carMdl) == VehicleHashes.NIMBUS or (carMdl) == VehicleHashes.PFISTER811 or (carMdl) == VehicleHashes.PROTOTIPO or (carMdl) == VehicleHashes.RUMPO3 or (carMdl) == VehicleHashes.SEVEN70 or (carMdl) == VehicleHashes.TUG or (carMdl) == VehicleHashes.VOLATUS or (carMdl) == VehicleHashes.WINDSOR2 or (carMdl) == VehicleHashes.XLS or (carMdl) == VehicleHashes.XLS2 or (carMdl) == VehicleHashes.REAPER then
        return true
    elseif (carMdl) == VehicleHashes.OMNIS or (carMdl) == VehicleHashes.TROPOS or (carMdl) == VehicleHashes.BRIOSO or (carMdl) == VehicleHashes.TROPHYTRUCK or (carMdl) == VehicleHashes.TROPHYTRUCK2 or (carMdl) == VehicleHashes.CLIFFHANGER or (carMdl) == VehicleHashes.BF400 or (carMdl) == VehicleHashes.RALLYTRUCK or (carMdl) == VehicleHashes.TAMPA2 or (carMdl) == VehicleHashes.GARGOYLE or (carMdl) == VehicleHashes.TYRUS or (carMdl) == VehicleHashes.LE7B or (carMdl) == VehicleHashes.LYNX or (carMdl) == VehicleHashes.SHEAVA then
        return true
    elseif (carMdl) == VehicleHashes.AVARUS or (carMdl) == VehicleHashes.DEFILER or (carMdl) == VehicleHashes.NIGHTBLADE or (carMdl) == VehicleHashes.ZOMBIEA or (carMdl) == VehicleHashes.ZOMBIEB or (carMdl) == VehicleHashes.CHIMERA or (carMdl) == VehicleHashes.ESSKEY or (carMdl) == VehicleHashes.RATBIKE or (carMdl) == VehicleHashes.HAKUCHOU2 or (carMdl) == VehicleHashes.DAEMON2 or (carMdl) == VehicleHashes.SHOTARO or (carMdl) == VehicleHashes.RAPTOR or (carMdl) == VehicleHashes.BLAZER4 or (carMdl) == VehicleHashes.SANCTUS or (carMdl) == VehicleHashes.VORTEX or (carMdl) == VehicleHashes.MANCHEZ or (carMdl) == VehicleHashes.TORNADO6 or (carMdl) == VehicleHashes.YOUGA2 or (carMdl) == VehicleHashes.WOLFSBANE or (carMdl) == VehicleHashes.FAGGIO3 or (carMdl) == VehicleHashes.FAGGIO then
        return true
    elseif (carMdl) == VehicleHashes.BLAZER5 or (carMdl) == VehicleHashes.BOXVILLE5 or (carMdl) == VehicleHashes.COMET3 or (carMdl) == VehicleHashes.DIABLOUS or (carMdl) == VehicleHashes.DIABLOUS2 or (carMdl) == VehicleHashes.DUNE4 or (carMdl) == VehicleHashes.DUNE5 or (carMdl) == VehicleHashes.FCR or (carMdl) == VehicleHashes.FCR2 or (carMdl) == VehicleHashes.ITALIGTB or (carMdl) == VehicleHashes.NERO or (carMdl) == VehicleHashes.PENETRATOR or (carMdl) == VehicleHashes.PHANTOM2 or (carMdl) == VehicleHashes.RUINER2 or (carMdl) == VehicleHashes.TECHNICAL2 or (carMdl) == VehicleHashes.TEMPESTA or (carMdl) == VehicleHashes.VOLTIC2 or (carMdl) == VehicleHashes.WASTELANDER or (carMdl) == VehicleHashes.ELEGY or (carMdl) == VehicleHashes.ITALIGTB2 or (carMdl) == VehicleHashes.NERO2 or (carMdl) == VehicleHashes.RUINER3 or (carMdl) == VehicleHashes.SPECTER or (carMdl) == VehicleHashes.SPECTER2 then
        return true
    elseif (carMdl) == VehicleHashes.GP1 or (carMdl) == VehicleHashes.RUSTON or (carMdl) == VehicleHashes.INFERNUS2 or (carMdl) == VehicleHashes.TURISMO2 then
        return true
    elseif (carMdl) == VehicleHashes.ARDENT or (carMdl) == VehicleHashes.VAGNER or (carMdl) == VehicleHashes.CHEETAH2 or (carMdl) == VehicleHashes.NIGHTSHARK or (carMdl) == VehicleHashes.TORERO or (carMdl) == VehicleHashes.XA21 or (carMdl) == VehicleHashes.TAMPA3 or (carMdl) == VehicleHashes.APC or (carMdl) == VehicleHashes.HALFTRACK or (carMdl) == VehicleHashes.DUNE3 or (carMdl) == VehicleHashes.TRAILERSMALL2 or (carMdl) == VehicleHashes.INSURGENT3 or (carMdl) == VehicleHashes.TECHNICAL3 or (carMdl) == VehicleHashes.PHANTOM3 or (carMdl) == VehicleHashes.HAULER2 then
        return true
    elseif (carMdl) == VehicleHashes.CYCLONE or (carMdl) == VehicleHashes.RAPIDGT3 or (carMdl) == VehicleHashes.RETINUE or (carMdl) == VehicleHashes.VISIONE or (carMdl) == VehicleHashes.VIGILANTE then
        return true
    elseif (carMdl) == VehicleHashes.DELUXO or (carMdl) == VehicleHashes.STROMBERG or (carMdl) == VehicleHashes.RIOT2 or (carMdl) == VehicleHashes.CHERNOBOG or (carMdl) == VehicleHashes.KHANJALI or (carMdl) == VehicleHashes.AKULA or (carMdl) == VehicleHashes.THRUSTER or (carMdl) == VehicleHashes.AVENGER or (carMdl) == VehicleHashes.BARRAGE or (carMdl) == VehicleHashes.VOLATOL or (carMdl) == VehicleHashes.COMET4 or (carMdl) == VehicleHashes.NEON or (carMdl) == VehicleHashes.STREITER or (carMdl) == VehicleHashes.SENTINEL3 or (carMdl) == VehicleHashes.YOSEMITE or (carMdl) == VehicleHashes.SC1 or (carMdl) == VehicleHashes.AUTARCH or (carMdl) == VehicleHashes.GT500 or (carMdl) == VehicleHashes.HUSTLER or (carMdl) == VehicleHashes.REVOLTER or (carMdl) == VehicleHashes.PARIAH or (carMdl) == VehicleHashes.RAIDEN or (carMdl) == VehicleHashes.SAVESTRA or (carMdl) == VehicleHashes.RIATA or (carMdl) == VehicleHashes.HERMES or (carMdl) == VehicleHashes.COMET5 or (carMdl) == VehicleHashes.Z190 or (carMdl) == VehicleHashes.VISERIS or (carMdl) == VehicleHashes.KAMACHO then
        return true
    end
    if (carMdl) == VehicleHashes.GB200 or (carMdl) == VehicleHashes.ISSI3 or (carMdl) == VehicleHashes.ELLIE or (carMdl) == VehicleHashes.FAGALOA or (carMdl) == VehicleHashes.MICHELLI or (carMdl) == VehicleHashes.FLASHGT or (carMdl) == VehicleHashes.HOTRING or (carMdl) == VehicleHashes.TEZERACT or (carMdl) == VehicleHashes.TYRANT or (carMdl) == VehicleHashes.DOMINATOR3 or (carMdl) == VehicleHashes.TAIPAN or (carMdl) == VehicleHashes.ENTITY2 or (carMdl) == VehicleHashes.JESTER3 or (carMdl) == VehicleHashes.CHEBUREK or (carMdl) == VehicleHashes.CARACARA or (carMdl) == VehicleHashes.SEASPARROW or (carMdl) == VehicleHashes.CLIQUE or (carMdl) == VehicleHashes.DEVESTE or (carMdl) == VehicleHashes.DEVIANT or (carMdl) == VehicleHashes.IMPALER or (carMdl) == VehicleHashes.SCARAB or (carMdl) == VehicleHashes.SCHLAGEN or (carMdl) == VehicleHashes.TOROS or (carMdl) == VehicleHashes.VAMOS or (carMdl) == VehicleHashes.TULIP or (carMdl) == VehicleHashes.MONSTER3 or (carMdl) == VehicleHashes.IMPALER2 or (carMdl) == VehicleHashes.BRUISER or (carMdl) == VehicleHashes.CERBERUS or (carMdl) == VehicleHashes.DOMINATOR4 or (carMdl) == VehicleHashes.IMPERATOR or (carMdl) == VehicleHashes.ISSI4 or (carMdl) == VehicleHashes.ITALIGTO or (carMdl) == VehicleHashes.DEATHBIKE or (carMdl) == VehicleHashes.SLAMVAN4 or (carMdl) == VehicleHashes.BRUTUS or (carMdl) == VehicleHashes.IMPERATOR2 or (carMdl) == VehicleHashes.IMPERATOR3 or (carMdl) == VehicleHashes.DEATHBIKE3 or (carMdl) == VehicleHashes.DEATHBIKE2 or (carMdl) == VehicleHashes.IMPALER3 or (carMdl) == VehicleHashes.BRUTUS2 or (carMdl) == VehicleHashes.BRUISER2 or (carMdl) == VehicleHashes.SLAMVAN5 or (carMdl) == VehicleHashes.ISSI5 or (carMdl) == VehicleHashes.MONSTER4 or (carMdl) == VehicleHashes.SCARAB2 or (carMdl) == VehicleHashes.CERBERUS2 or (carMdl) == VehicleHashes.DOMINATOR5 or (carMdl) == VehicleHashes.ZR3802 or (carMdl) == VehicleHashes.IMPALER4 or (carMdl) == VehicleHashes.BRUTUS3 or (carMdl) == VehicleHashes.BRUISER3 or (carMdl) == VehicleHashes.SLAMVAN6 or (carMdl) == VehicleHashes.ISSI6 or (carMdl) == VehicleHashes.MONSTER5 or (carMdl) == VehicleHashes.SCARAB3 or (carMdl) == VehicleHashes.CERBERUS3 or (carMdl) == VehicleHashes.DOMINATOR6 or (carMdl) == VehicleHashes.ZR3803 or (carMdl) == VehicleHashes.RCBANDITO or (carMdl) == VehicleHashes.CARACARA2 or (carMdl) == VehicleHashes.DRAFTER or (carMdl) == VehicleHashes.DYNASTY or (carMdl) == VehicleHashes.GAUNTLET3 or (carMdl) == VehicleHashes.GAUNTLET4 or (carMdl) == VehicleHashes.HELLION or (carMdl) == VehicleHashes.ISSI7 or (carMdl) == VehicleHashes.KRIEGER or (carMdl) == VehicleHashes.LOCUST or (carMdl) == VehicleHashes.NEBULA or (carMdl) == VehicleHashes.NEO or (carMdl) == VehicleHashes.NOVAK or (carMdl) == VehicleHashes.S80 or (carMdl) == VehicleHashes.THRAX or (carMdl) == VehicleHashes.ZION3 or (carMdl) == VehicleHashes.ZORRUSSO or (carMdl) == VehicleHashes.EMERUS or (carMdl) == VehicleHashes.PEYOTE2 or (carMdl) == VehicleHashes.RROCKET or (carMdl) == VehicleHashes.JUGULAR or (carMdl) == VehicleHashes.PARAGON or (carMdl) == VehicleHashes.PARAGON2 or (carMdl) == VehicleHashes.SLAMVAN2 or (carMdl) == VehicleHashes.ASBO or (carMdl) == VehicleHashes.KANJO or (carMdl) == VehicleHashes.FORMULA or (carMdl) == VehicleHashes.IMORGON or (carMdl) == VehicleHashes.KOMODA or (carMdl) == VehicleHashes.MANANA2 or (carMdl) == VehicleHashes.REBLA or (carMdl) == VehicleHashes.SUGOI or (carMdl) == VehicleHashes.YOUGA3 or (carMdl) == VehicleHashes.ZHABA or (carMdl) == VehicleHashes.VSTR or (carMdl) == VehicleHashes.EVERON or (carMdl) == VehicleHashes.SULTAN2 or (carMdl) == VehicleHashes.JB7002 or (carMdl) == VehicleHashes.OUTLAW or (carMdl) == VehicleHashes.STRYDER or (carMdl) == VehicleHashes.VAGRANT or (carMdl) == VehicleHashes.FORMULA2 or (carMdl) == VehicleHashes.MINITANK or (carMdl) == VehicleHashes.GAUNTLET5 or (carMdl) == VehicleHashes.CALICO or (carMdl) == VehicleHashes.COMET6 or (carMdl) == VehicleHashes.CYPHER or (carMdl) == VehicleHashes.DOMINATOR7 or (carMdl) == VehicleHashes.JESTER4 or (carMdl) == VehicleHashes.REMUS or (carMdl) == VehicleHashes.VECTRE or (carMdl) == VehicleHashes.ZR350 or (carMdl) == VehicleHashes.WARRENER2 or (carMdl) == VehicleHashes.RT3000 or (carMdl) == VehicleHashes.FUTO2 or (carMdl) == VehicleHashes.TAILGATER2 or (carMdl) == VehicleHashes.SULTAN3 or (carMdl) == VehicleHashes.DOMINATOR8 or (carMdl) == VehicleHashes.EUROS or (carMdl) == VehicleHashes.GROWLER or (carMdl) == VehicleHashes.PREVION or (carMdl) == VehicleHashes.BALLER7 or (carMdl) == VehicleHashes.ASTRON or (carMdl) == VehicleHashes.BUFFALO4 or (carMdl) == VehicleHashes.COMET7 or (carMdl) == VehicleHashes.DEITY or (carMdl) == VehicleHashes.GRANGER2 or (carMdl) == VehicleHashes.IGNUS or (carMdl) == VehicleHashes.JUBILEE or (carMdl) == VehicleHashes.PATRIOT3 or (carMdl) == VehicleHashes.YOUGA4 or (carMdl) == VehicleHashes.ZENO or (carMdl) == VehicleHashes.MULE5 or (carMdl) == VehicleHashes.CHAMPION or (carMdl) == VehicleHashes.IWAGEN or (carMdl) == VehicleHashes.REEVER or (carMdl) == VehicleHashes.SHINOBI then
        return true
    elseif ((carMdl) == VehicleHashes.DUKES3 or (carMdl) == VehicleHashes.CLUB or (carMdl) == VehicleHashes.PEYOTE3 or (carMdl) == VehicleHashes.GLENDALE2 or (carMdl) == VehicleHashes.PENUMBRA2 or (carMdl) == VehicleHashes.LANDSTALKER2 or (carMdl) == VehicleHashes.SEMINOLE2 or (carMdl) == VehicleHashes.TIGON or (carMdl) == VehicleHashes.OPENWHEEL1 or (carMdl) == VehicleHashes.COQUETTE4 or (carMdl) == VehicleHashes.OPENWHEEL2) and Features.FEATURE_SUMMER_2020 == 1 then
        return true
    elseif ((carMdl) == VehicleHashes.MANCHEZ2 or (carMdl) == VehicleHashes.BRIOSO2 or (carMdl) == VehicleHashes.WINKY or (carMdl) == VehicleHashes.VERUS or (carMdl) == VehicleHashes.ALKONOST or (carMdl) == VehicleHashes.AVISA or (carMdl) == VehicleHashes.LONGFIN or (carMdl) == VehicleHashes.PATROLBOAT or (carMdl) == VehicleHashes.SEASPARROW2 or (carMdl) == VehicleHashes.SEASPARROW3 or (carMdl) == VehicleHashes.SLAMTRUCK or (carMdl) == VehicleHashes.VETIR or (carMdl) == VehicleHashes.KOSATKA or (carMdl) == VehicleHashes.ITALIRSX or (carMdl) == VehicleHashes.TOREADOR or (carMdl) == VehicleHashes.WEEVIL or (carMdl) == VehicleHashes.DINGHY5 or (carMdl) == VehicleHashes.ANNIHILATOR2 or (carMdl) == VehicleHashes.SQUADDIE or (carMdl) == VehicleHashes.VETO or (carMdl) == VehicleHashes.VETO2) and Features.FEATURE_HEIST_ISLAND == 1 then
        return true
    elseif ((carMdl) == VehicleHashes.S95 or (carMdl) == VehicleHashes.ARBITERGT or (carMdl) == VehicleHashes.ASTRON2 or (carMdl) == VehicleHashes.CYCLONE2 or (carMdl) == VehicleHashes.IGNUS2) and Features.FEATURE_GEN9_EXCLUSIVE == 1 then
        return true
    end
    if (carMdl) == VehicleHashes.BRIOSO3 or (carMdl) == VehicleHashes.CORSITA or (carMdl) == VehicleHashes.DRAUGUR or (carMdl) == VehicleHashes.GREENWOOD or (carMdl) == VehicleHashes.KANJOSJ or (carMdl) == VehicleHashes.LM87 or (carMdl) == VehicleHashes.POSTLUDE or (carMdl) == VehicleHashes.RHINEHART or (carMdl) == VehicleHashes.SM722 or (carMdl) == VehicleHashes.TENF or (carMdl) == VehicleHashes.TENF2 or (carMdl) == VehicleHashes.TORERO2 or (carMdl) == VehicleHashes.VIGERO2 or (carMdl) == VehicleHashes.WEEVIL2 or (carMdl) == VehicleHashes.RUINER4 or (carMdl) == VehicleHashes.SENTINEL4 or (carMdl) == VehicleHashes.CONADA or (carMdl) == VehicleHashes.OMNISEGT then
        return true
    elseif ((carMdl) == VehicleHashes.BRICKADE2) and Features.FEATURE_DLC_2_2022 == 1 then
        return true
    end
    return false
end

function ExtendedM.Vehicles.IS_VEHICLE_AN_ARENA_CONTENDER_VEHICLE(mnVehName)
    if mnVehName == VehicleHashes.SCARAB or mnVehName == VehicleHashes.BRUISER or mnVehName == VehicleHashes.CERBERUS or mnVehName == VehicleHashes.MONSTER3 or mnVehName == VehicleHashes.DOMINATOR4 or mnVehName == VehicleHashes.IMPALER2 or mnVehName == VehicleHashes.IMPERATOR or mnVehName == VehicleHashes.ISSI4 or mnVehName == VehicleHashes.DEATHBIKE or mnVehName == VehicleHashes.ZR380 or mnVehName == VehicleHashes.SLAMVAN4 or mnVehName == VehicleHashes.BRUTUS or mnVehName == VehicleHashes.IMPERATOR2 or mnVehName == VehicleHashes.IMPERATOR3 or mnVehName == VehicleHashes.DEATHBIKE3 or mnVehName == VehicleHashes.DEATHBIKE2 or mnVehName == VehicleHashes.IMPALER3 or mnVehName == VehicleHashes.BRUTUS2 or mnVehName == VehicleHashes.BRUISER2 or mnVehName == VehicleHashes.SLAMVAN5 or mnVehName == VehicleHashes.ISSI5 or mnVehName == VehicleHashes.MONSTER4 or mnVehName == VehicleHashes.SCARAB2 or mnVehName == VehicleHashes.CERBERUS2 or mnVehName == VehicleHashes.DOMINATOR5 or mnVehName == VehicleHashes.ZR3802 or mnVehName == VehicleHashes.IMPALER4 or mnVehName == VehicleHashes.BRUTUS3 or mnVehName == VehicleHashes.BRUISER3 or mnVehName == VehicleHashes.SLAMVAN6 or mnVehName == VehicleHashes.ISSI6 or mnVehName == VehicleHashes.MONSTER5 or mnVehName == VehicleHashes.SCARAB3 or mnVehName == VehicleHashes.CERBERUS3 or mnVehName == VehicleHashes.DOMINATOR6 or mnVehName == VehicleHashes.ZR3803 then
        return true
    end

    return false
end

function ExtendedM.Vehicles.IS_IMANI_TECH_ALLOWED_FOR_THIS_VEHICLE(eRCModel)
    if Features.FEATURE_FIXER == 1 then
        if (eRCModel == VehicleHashes.DEITY or eRCModel == VehicleHashes.GRANGER2 or eRCModel == VehicleHashes.BUFFALO4 or eRCModel == VehicleHashes.JUBILEE or eRCModel == VehicleHashes.PATRIOT3 or eRCModel == VehicleHashes.CHAMPION) and Features.FEATURE_FIXER == 1 then
            return true
        elseif (eRCModel == VehicleHashes.GREENWOOD or eRCModel == VehicleHashes.OMNISEGT) and Features.FEATURE_DLC_1_2022 == 1 then
            return true
        end
    end

    return false
end

function ExtendedM.Vehicles.IS_VEHICLE_MODEL_A_HSW_VEHICLE(mnVehName)
    if mnVehName == VehicleHashes.BRIOSO or mnVehName == VehicleHashes.SENTINEL or mnVehName == VehicleHashes.HAKUCHOU2 or mnVehName == VehicleHashes.TURISMO2 or mnVehName == VehicleHashes.DEVESTE or mnVehName == VehicleHashes.BANSHEE then
        return true
    elseif (mnVehName == VehicleHashes.ARBITERGT or mnVehName == VehicleHashes.ASTRON2 or mnVehName == VehicleHashes.CYCLONE2 or mnVehName == VehicleHashes.IGNUS2 or mnVehName == VehicleHashes.S95) and Features.FEATURE_GEN9_EXCLUSIVE == 1 then
        return true
    elseif (mnVehName == VehicleHashes.VIGERO2 or mnVehName == VehicleHashes.FELTZER3) and Features.FEATURE_DLC_1_2022 == 1 then
        return true
    end

    return false
end

function ExtendedM.Vehicles.IS_VEHICLE_A_HSW_VEHICLE(vehicleToCheck)
    if not DoesEntityExist(vehicleToCheck) then
        return false
    end

    if IsEntityDead(vehicleToCheck) then
        return false
    end

    local mnVehName = GetEntityModel(vehicleToCheck)

    if ExtendedM.Vehicles.IS_VEHICLE_MODEL_A_HSW_VEHICLE(mnVehName) then
        if GetVehicleMod(vehicleToCheck, ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_ICE) ~= -1 then
            return true
        end
    end

    return false
end

function ExtendedM.Vehicles.IS_VEHICLE_A_BASE_HSW_VEHICLE(vehicleToCheck)
    if not DoesEntityExist(vehicleToCheck) then
        return false
    end

    if IsEntityDead(vehicleToCheck) then
        return false
    end

    local mnVehName = GetEntityModel(vehicleToCheck)

    if ExtendedM.Vehicles.IS_VEHICLE_MODEL_A_HSW_VEHICLE(mnVehName) then
        if GetVehicleMod(vehicleToCheck, ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_ICE) == -1 then
            return true
        end
    end

    return false
end