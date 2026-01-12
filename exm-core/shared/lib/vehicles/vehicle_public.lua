ExtendedM.Vehicles = ExtendedM.Vehicles or {}

local VehicleHashes = ExtendedM.VehicleHashes
local Features = ExtendedM.Config.Features

local g_sMPTunables = ExtendedM.Tunables
local g_sMPtunables = ExtendedM.Tunables
local g_smpTunables = ExtendedM.Tunables

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

function ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel)
    if eVehicleModel == ExtendedM.VehicleHashes.CHINO2 then
        return g_sMPTunables.iMod_Shop_Upgrade_Vapid_Chino_Custom
    elseif eVehicleModel == ExtendedM.VehicleHashes.xtendedM.VehicleHashes.PRIMO2 then
        return g_sMPTunables.iMod_Shop_Upgrade_Albany_Primo_Custom
    elseif eVehicleModel == ExtendedM.VehicleHashes.MOONBEAM2 then
        return g_sMPTunables.iMod_Shop_Upgrade_Declasse_Moonbeam_Custom
    elseif eVehicleModel == ExtendedM.VehicleHashes.FACTION2 then
        return g_sMPTunables.iMod_Shop_Upgrade_Willard_Faction_Custom
    elseif eVehicleModel == ExtendedM.VehicleHashes.BUCCANEER2 then
        return g_sMPTunables.iMod_Shop_Upgrade_Albany_Buccaneer_Custom
    elseif eVehicleModel == ExtendedM.VehicleHashes.VOODOO then
        return g_sMPTunables.iMod_Shop_Upgrade_Declasse_Voodoo_Custom
        
        -- January 2016
    elseif eVehicleModel == ExtendedM.VehicleHashes.SULTANRS then
        return g_sMPTunables.iBennysWebsite_Karin_Sultan_RS_Upgrade
    elseif eVehicleModel == ExtendedM.VehicleHashes.BANSHEE2 then
        return g_sMPTunables.iUpgrade_Bravado_Banshee_900R_Upgrade
        
        -- Lowrider2
    elseif eVehicleModel == ExtendedM.VehicleHashes.FACTION3 then
        return g_sMPTunables.iCar_Mods_Willard_Faction_Custom_Donk_Upgrade
    elseif eVehicleModel == ExtendedM.VehicleHashes.MINIVAN2 then
        return g_sMPTunables.iCar_Mods_Vapid_Minivan_Custom_Upgrade
    elseif eVehicleModel == ExtendedM.VehicleHashes.SABREGT2 then
        return g_sMPTunables.iCar_Mods_Declasse_Sabre_Turbo_Custom_Upgrade
    elseif eVehicleModel == ExtendedM.VehicleHashes.SLAMVAN3 then
        return g_sMPTunables.iCar_Mods_Vapid_Slamvan_Custom_Upgrade
    elseif eVehicleModel == ExtendedM.VehicleHashes.TORNADO5 then
        return g_sMPTunables.iCar_Mods_Declasse_Tornado_Custom_Upgrade
    elseif eVehicleModel == ExtendedM.VehicleHashes.VIRGO2 then
        return g_sMPTunables.iCar_Mods_Dundreary_Virgo_Classic_Custom_Upgrade
        
    elseif eVehicleModel == ExtendedM.VehicleHashes.COMET3 then
        return g_sMPTunables.iIMPEXP_COMET3_UPGRADE_PRICE
    elseif eVehicleModel == ExtendedM.VehicleHashes.DIABLOUS2 then
        return g_sMPTunables.iIMPEXP_DIABLOUS2_UPGRADE_PRICE
    elseif eVehicleModel == ExtendedM.VehicleHashes.FCR2 then
        return g_sMPTunables.iIMPEXP_FCR2_UPGRADE_PRICE
    elseif eVehicleModel == ExtendedM.VehicleHashes.ITALIGTB2 then
        return g_sMPTunables.iIMPEXP_ITALIGTB2_UPGRADE_PRICE
    elseif eVehicleModel == ExtendedM.VehicleHashes.SPECTER2 then
        return g_sMPTunables.iIMPEXP_SPECTER2_UPGRADE_PRICE
    elseif eVehicleModel == ExtendedM.VehicleHashes.NERO2 then
        return g_sMPTunables.iIMPEXP_NERO2_UPGRADE_PRICE
    elseif eVehicleModel == ExtendedM.VehicleHashes.ELEGY then
        return g_sMPTunables.iIMPEXP_ELEGY_UPGRADE_PRICE
        
    elseif eVehicleModel == ExtendedM.VehicleHashes.TECHNICAL3 then
        return g_sMPTunables.iGR_EXISTING_FULLY_WEAPONIZED_VEHICLE_UPRGRADES_KARIN_TECHNICAL_CUSTOM
    elseif eVehicleModel == ExtendedM.VehicleHashes.INSURGENT3 then
        return g_sMPTunables.iGR_EXISTING_FULLY_WEAPONIZED_VEHICLE_UPRGRADES_HVY_INSURGENT_PICK_UP_CUSTOM
    elseif eVehicleModel == ExtendedM.VehicleHashes.BRUISER then
        return g_sMPTunables.iAW_UPGRADE_PRICE_APOCALYPSE_GLENDALE
    elseif eVehicleModel == ExtendedM.VehicleHashes.MONSTER3 then
        return g_sMPTunables.iAW_UPGRADE_PRICE_APOCALYPSE_RATLOADER
    elseif eVehicleModel == ExtendedM.VehicleHashes.IMPALER2 then
        return g_sMPTunables.iAW_UPGRADE_PRICE_APOCALYPSE_IMPALER
    elseif eVehicleModel == ExtendedM.VehicleHashes.ISSI4 then
        return g_sMPTunables.iAW_UPGRADE_PRICE_APOCALYPSE_ISSI
    elseif eVehicleModel == ExtendedM.VehicleHashes.DEATHBIKE then
        return g_sMPTunables.iAW_UPGRADE_PRICE_APOCALYPSE_GARGOYLE
    elseif eVehicleModel == ExtendedM.VehicleHashes.DOMINATOR4 then
        return g_sMPTunables.iAW_UPGRADE_PRICE_APOCALYPSE_DOMINATOR
    elseif eVehicleModel == ExtendedM.VehicleHashes.SLAMVAN4 then
        return g_sMPTunables.iAW_UPGRADE_PRICE_APOCALYPSE_SLAMVAN
    elseif eVehicleModel == ExtendedM.VehicleHashes.DEATHBIKE3 then
        return g_sMPTunables.iAW_UPGRADE_PRICE_CONSUMERISM_GARGOYLE
    elseif eVehicleModel == ExtendedM.VehicleHashes.DEATHBIKE2 then
        return g_sMPTunables.iAW_UPGRADE_PRICE_SCIFI_GARGOYLE
    elseif eVehicleModel == ExtendedM.VehicleHashes.IMPALER3 then
        return g_sMPTunables.iAW_UPGRADE_PRICE_SCIFI_IMPALER
    elseif eVehicleModel == ExtendedM.VehicleHashes.BRUISER2 then
        return g_sMPTunables.iAW_UPGRADE_PRICE_SCIFI_GLENDALE
    elseif eVehicleModel == ExtendedM.VehicleHashes.SLAMVAN5 then
        return g_sMPTunables.iAW_UPGRADE_PRICE_SCIFI_SLAMVAN
    elseif eVehicleModel == ExtendedM.VehicleHashes.ISSI5 then
        return g_sMPTunables.iAW_UPGRADE_PRICE_SCIFI_ISSI
    elseif eVehicleModel == ExtendedM.VehicleHashes.MONSTER4 then
        return g_sMPTunables.iAW_UPGRADE_PRICE_SCIFI_RATLOADER
    elseif eVehicleModel == ExtendedM.VehicleHashes.DOMINATOR5 then
        return g_sMPTunables.iAW_UPGRADE_PRICE_SCIFI_DOMINATOR
    elseif eVehicleModel == ExtendedM.VehicleHashes.IMPALER4 then
        return g_sMPTunables.iAW_UPGRADE_PRICE_CONSUMERISM_IMPALER
    elseif eVehicleModel == ExtendedM.VehicleHashes.BRUISER3 then
        return g_sMPTunables.iAW_UPGRADE_PRICE_CONSUMERISM_GLENDALE
    elseif eVehicleModel == ExtendedM.VehicleHashes.SLAMVAN6 then
        return g_sMPTunables.iAW_UPGRADE_PRICE_CONSUMERISM_SLAMVAN
    elseif eVehicleModel == ExtendedM.VehicleHashes.ISSI6 then
        return g_sMPTunables.iAW_UPGRADE_PRICE_CONSUMERISM_ISSI
    elseif eVehicleModel == ExtendedM.VehicleHashes.MONSTER5 then
        return g_sMPTunables.iAW_UPGRADE_PRICE_CONSUMERISM_RATLOADER
    elseif eVehicleModel == ExtendedM.VehicleHashes.DOMINATOR6 then
        return g_sMPTunables.iAW_UPGRADE_PRICE_CONSUMERISM_DOMINATOR
    elseif eVehicleModel == ExtendedM.VehicleHashes.YOUGA3 then
        return g_sMPTunables.iSUM_UPGRADE_PRICE_YOUGA3
    elseif eVehicleModel == ExtendedM.VehicleHashes.GAUNTLET5 then
        return g_sMPTunables.iSUM_UPGRADE_PRICE_GAUNTLET5
    elseif eVehicleModel == ExtendedM.VehicleHashes.MANANA2 then
        return g_sMPTunables.iSUM_UPGRADE_PRICE_MANANA2
    elseif eVehicleModel == ExtendedM.VehicleHashes.PEYOTE3 then
        return g_sMPTunables.iSUM_UPGRADE_PRICE_PEYOTE3
    elseif eVehicleModel == ExtendedM.VehicleHashes.YOSEMITE3 then
        return g_sMPTunables.iSUM_UPGRADE_PRICE_YOSEMITE3
    elseif eVehicleModel == ExtendedM.VehicleHashes.GLENDALE2 then
        return g_sMPTunables.iSUM_UPGRADE_PRICE_GLENDALE2
    elseif (ExtendedM.Config.Features.FEATURE_DLC_1_2022 == 1) and (eVehicleModel == ExtendedM.VehicleHashes.TENF2) then
        return g_sMPTunables.iSUM2_UPGRADE_PRICE_TENF2
    elseif eVehicleModel == ExtendedM.VehicleHashes.WEEVIL2 then
        return g_sMPTunables.iSUM2_UPGRADE_PRICE_WEEVIL2
    elseif eVehicleModel == ExtendedM.VehicleHashes.BRIOSO3 then
        return g_sMPTunables.iSUM2_UPGRADE_PRICE_BRIOSO3
    elseif eVehicleModel == ExtendedM.VehicleHashes.SENTINEL4 then
        return g_sMPTunables.iSUM2_UPGRADE_PRICE_SENTINEL4
    end

    return 0
end

local dummyWeaponsedVehicleCapModel = ExtendedM.VehicleHashes.DUMMY_MODEL_FOR_SCRIPT
function ExtendedM.Vehicles.SHOULD_USE_WEAPONISED_VEHICLE_INSURANCE_CAP(ModelName) 
    if ModelName == VehicleHashes.APC or ModelName == VehicleHashes.DUNE3 or ModelName == VehicleHashes.HALFTRACK or ModelName == VehicleHashes.OPPRESSOR or ModelName == VehicleHashes.TAMPA3 or ModelName == VehicleHashes.TECHNICAL3 or ModelName == VehicleHashes.INSURGENT3 or ModelName == VehicleHashes.VIGILANTE or ModelName == VehicleHashes.BARRAGE or ModelName == VehicleHashes.ARDENT or ModelName == VehicleHashes.NIGHTSHARK or ModelName == VehicleHashes.DELUXO or ModelName == VehicleHashes.STROMBERG or ModelName == VehicleHashes.COMET4 or ModelName == VehicleHashes.REVOLTER or ModelName == VehicleHashes.SAVESTRA or VehicleHashes.ModelName == VehicleHashes.VISERIS or ModelName == VehicleHashes.THRUSTER or VehicleHashes.ModelName == VehicleHashes.RIOT2 or ModelName == VehicleHashes.CHERNOBOG or ModelName == VehicleHashes.KHANJALI or ModelName == VehicleHashes.TECHNICAL2 or ModelName == VehicleHashes.BOXVILLE5 or ModelName == VehicleHashes.WASTELANDER or ModelName == VehicleHashes.PHANTOM2 or ModelName == VehicleHashes.VOLTIC2 or ModelName == VehicleHashes.DUNE5 or ModelName == VehicleHashes.RUINER2 or ModelName == VehicleHashes.BLAZER5 or ModelName == VehicleHashes.CARACARA or ModelName == VehicleHashes.MULE4 or ModelName == VehicleHashes.POUNDER2 or ModelName == VehicleHashes.SCRAMJET or ModelName == VehicleHashes.OPPRESSOR2 or ModelName == VehicleHashes.MENACER or ModelName == VehicleHashes.PARAGON2 then
    elseif (ExtendedM.Config.Features.FEATURE_GEN9_EXCLUSIVE == 1) and (ModelName == VehicleHashes.IGNUS2) then
        return true
    else
        if (ExtendedM.Config.Features.FEATURE_GEN9_EXCLUSIVE == 1) and (dummyWeaponsedVehicleCapModel ~= VehicleHashes.DUMMY_MODEL_FOR_SCRIPT) then
            if dummyWeaponsedVehicleCapModel == ModelName then
                return true
            end
        end
        
        if ExtendedM.Vehicles.IS_VEHICLE_AN_ARENA_CONTENDER_VEHICLE(ModelName) then
            return true
        end
    end

    return false
end

-- / PURPOSE: Fills out the vehicle value data for the given vehicle model.
-- /    NOTE: Use IS_VEHICLE_ALT_VERSION to determine if we should use alt prices for hard top/topless variants.
function ExtendedM.Vehicles.GET_VEHICLE_VALUE(sData, eVehicleModel, bAltVersion, iForceNetworkPrice)
    local bNetwork_isGameInProgress = NetworkIsGameInProgress()
    
    if ExtendedM.Config.USE_TU_CHANGES == 1 then
        if iForceNetworkPrice == 0 then --force net prices
            bNetwork_isGameInProgress = true
        elseif iForceNetworkPrice == 1 then --disable tunables
            bNetwork_isGameInProgress = false
        end
    end
    
    local iCost = -1
    local iBasePrice = -1
    if not IsModelAVehicle(eVehicleModel) then
        local bSafeNonVehicle = false
        if eVehicleModel == ExtendedM.VehicleHashes.DUMMY_MODEL_FOR_SCRIPT then
            print("eVehicleModel is a dummy??")
        elseif eVehicleModel == ExtendedM.VehicleHashes.eDLC_BIG_YACHT_MODEL then
            print("eVehicleModel is a big yacht??")
        elseif eVehicleModel == ExtendedM.VehicleHashes.eDLC_BIG_TRUCK_MODEL then
            print("eVehicleModel is a big truck??")
        elseif eVehicleModel == ExtendedM.VehicleHashes.eDLC_BALLISTIC_EQUIPMENT_MODEL then
            iCost = 500000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.IGR_BALLISTIC_EQ_PRICE >= 0 then
                    iCost = g_sMPTunables.IGR_BALLISTIC_EQ_PRICE
                end
            end
            bSafeNonVehicle = true
        elseif eVehicleModel == ExtendedM.VehicleHashes.eDLC_BIG_PLANE_MODEL then
            print("eVehicleModel is a big plane??")
        elseif eVehicleModel == ExtendedM.VehicleHashes.eDLC_HACKER_TRUCK_MODEL then
            print("eVehicleModel is a big hacker truck??")
        elseif (ExtendedM.Config.Features.FEATURE_HEIST_ISLAND == 1) and (eVehicleModel == ExtendedM.VehicleHashes.KOSATKA) then
            print("eVehicleModel is a big submarine??")
        else
            print("eVehicleModel \"", eVehicleModel, "\" is not a vehicle??")
        end
        
        if not bSafeNonVehicle then
            return false
        end
    end
    
    if eVehicleModel == ExtendedM.VehicleHashes.ADDER then
        iCost = 1000000
    elseif eVehicleModel == ExtendedM.VehicleHashes.AKUMA then
        iCost = 9000
    elseif eVehicleModel == ExtendedM.VehicleHashes.ASEA then
        iCost = 12000
    elseif eVehicleModel == ExtendedM.VehicleHashes.ASTEROPE then
        iCost = 26000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BAGGER then
        iCost = 16000
        if bNetwork_isGameInProgress then
            if g_sMPtunables.iBiker_Website_Western_Bagger_Disc_Vehicle >= 0 then
                iCost = g_sMPtunables.iBiker_Website_Western_Bagger_Disc_Vehicle
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.BALLER then
        iCost = 90000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BALLER2 then
        iCost = 90000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BANSHEE then
        iCost = 90000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BATI then
        iCost = 10000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BATI2 then
        iCost = 10000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BFINJECTION then
        iCost = 16000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BISON then
        iCost = 30000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BISON2 then
        iCost = 30000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BISON3 then
        iCost = 30000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BJXL then
        iCost = 27000
        if bNetwork_isGameInProgress then
            if g_sMPtunables.iBB_TRADE_PRICE_EXISTING_VEHICLES_BEEJAY_XL >= 0 then
                iCost = g_sMPtunables.iBB_TRADE_PRICE_EXISTING_VEHICLES_BEEJAY_XL
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.BLAZER then
        iCost = 8000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BLAZER2 then
        iCost = 62000
        if bNetwork_isGameInProgress then
            iCost = g_sMPtunables.iCH_SALE_PRICE_BLAZER2
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.BLISTA then
        iCost = 16000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BOBCATXL then
        iCost = 23000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BODHI2 then
        iCost = 12000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BOXVILLE then
        if not bAltVersion then
            iCost = 298500
            if bNetwork_isGameInProgress then
                iCost = g_sMPtunables.iCH_TRADE_PRICE_BOXVILLE
            end
        else
            iCost = 398000
            if bNetwork_isGameInProgress then
                iCost = g_sMPtunables.iCH_BIN_PRICE_BOXVILLE
            end
            iBasePrice = 298500
            if bNetwork_isGameInProgress then
                iBasePrice = g_sMPtunables.iCH_TRADE_PRICE_BOXVILLE
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.STOCKADE then
        if not bAltVersion then
            iCost = 1680000
            if bNetwork_isGameInProgress then
                iCost = g_sMPtunables.iCH_TRADE_PRICE_STOCKADE
            end
        else
            iCost = 2240000
            if bNetwork_isGameInProgress then
                iCost = g_sMPtunables.iCH_BIN_PRICE_STOCKADE
            end
            iBasePrice = 1680000
            if bNetwork_isGameInProgress then
                iBasePrice = g_sMPtunables.iCH_TRADE_PRICE_STOCKADE
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.BOXVILLE2 then
        iCost = 25000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BOXVILLE3 then
        iCost = 25000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BUCCANEER then
        iCost = 28000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BUFFALO then
        iCost = 35000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BUFFALO2 then
        iCost = 96000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BULLET then
        iCost = 150000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BURRITO then
        iCost = 13000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BURRITO2 then
        if bAltVersion then
            iCost = 450000
            if bNetwork_isGameInProgress then
                iCost = g_sMPtunables.iCH_TRADE_PRICE_BURRITO2
            end
        else
            iCost = 598500
            if bNetwork_isGameInProgress then
                iCost = g_sMPtunables.iCH_BIN_PRICE_BURRITO2
            end
            iBasePrice = 450000
            if bNetwork_isGameInProgress then
                iBasePrice = g_sMPtunables.iCH_TRADE_PRICE_BURRITO2
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.BURRITO3 then
        iCost = 13000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BURRITO4 then
        iCost = 13000
    elseif eVehicleModel == ExtendedM.VehicleHashes.CARBONIZZARE then
        iCost = 195000
    elseif eVehicleModel == ExtendedM.VehicleHashes.CARBONRS then
        iCost = 40000
    elseif eVehicleModel == ExtendedM.VehicleHashes.CAVALCADE then
        iCost = 60000
    elseif eVehicleModel == ExtendedM.VehicleHashes.CAVALCADE2 then
        iCost = 70000
    elseif eVehicleModel == ExtendedM.VehicleHashes.CHEETAH then
        iCost = 650000
    elseif eVehicleModel == ExtendedM.VehicleHashes.COGCABRIO then
        iCost = 185000
    elseif eVehicleModel == ExtendedM.VehicleHashes.COMET2 then
        iCost = 85000
        -- if bNetwork_isGameInProgress
        -- if g_sMPTunables.iIMPEXP_COMET2_BASE_PRICE >= 0
        -- iCost = g_sMPTunables.iIMPEXP_COMET2_BASE_PRICE
        -- ENDIF
        -- ENDIF
    elseif eVehicleModel == ExtendedM.VehicleHashes.COQUETTE then
        iCost = 55000
    elseif eVehicleModel == ExtendedM.VehicleHashes.DAEMON then
        iCost = 20000
        -- if bNetwork_isGameInProgress
        -- if g_sMPtunables.iBIKER_DAEMON >= 0
        -- iCost = g_sMPtunables.iBIKER_DAEMON
        -- ENDIF
        -- ENDIF
    elseif eVehicleModel == ExtendedM.VehicleHashes.DILETTANTE then
        iCost = 25000
    elseif eVehicleModel == ExtendedM.VehicleHashes.DOMINATOR then
        iCost = 35000
        if bNetwork_isGameInProgress and g_sMPTunables.iDLC_VEHICLE_Vapid_Dominator >= 0 then
            iCost = g_sMPTunables.iDLC_VEHICLE_Vapid_Dominator
        end
        if bAltVersion then
            iBasePrice = iCost
            iCost = math.floor((35000 * 1.0)*0.75 + 0.5)
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_TRADE_PRICE_DOMINATOR >= 0 then
                iCost = g_sMPTunables.iAW_TRADE_PRICE_DOMINATOR
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.DOUBLE then
        iCost = 12000
    elseif eVehicleModel == ExtendedM.VehicleHashes.DUBSTA then
        iCost = 120000
    elseif eVehicleModel == ExtendedM.VehicleHashes.DUBSTA2 then
        iCost = 120000
    elseif eVehicleModel == ExtendedM.VehicleHashes.ELEGY2 then
        if not bAltVersion then
            iCost = 95000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iIMPEXP_ELEGY_BASE_PRICE >= 0 then
                    iCost = g_sMPTunables.iIMPEXP_ELEGY_BASE_PRICE
                end
            end
        else
            iCost = 0
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iELEGY2_WEB_PRICE_MODIFIER >= 0 then
                    iCost = g_sMPTunables.iELEGY2_WEB_PRICE_MODIFIER
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.EMPEROR then
        iCost = 8000
        -- if bNetwork_isGameInProgress
        -- and g_sMPTunables.iTRADE_PRICE_VEHICLES_EMPEROR >= 0
        -- iCost = g_sMPTunables.iTRADE_PRICE_VEHICLES_EMPEROR
        -- ENDIF
    elseif eVehicleModel == ExtendedM.VehicleHashes.EMPEROR2 then
        iCost = 5000
    elseif eVehicleModel == ExtendedM.VehicleHashes.EMPEROR3 then
        iCost = 5000
    elseif eVehicleModel == ExtendedM.VehicleHashes.ENTITYXF then
        iCost = 795000
    elseif eVehicleModel == ExtendedM.VehicleHashes.EXEMPLAR then
        iCost = 205000
    elseif eVehicleModel == ExtendedM.VehicleHashes.F620 then
        iCost = 80000
    elseif eVehicleModel == ExtendedM.VehicleHashes.FAGGIO2 then
        iCost = 5000
    elseif eVehicleModel == ExtendedM.VehicleHashes.FELON then
        iCost = 100000
    elseif eVehicleModel == ExtendedM.VehicleHashes.FELON2 then
        iCost = 95000
    elseif eVehicleModel == ExtendedM.VehicleHashes.FELTZER2 then
        iCost = 145000
    elseif eVehicleModel == ExtendedM.VehicleHashes.FQ2 then
        iCost = 50000
        if bNetwork_isGameInProgress then
            if g_sMPtunables.iBB_TRADE_PRICE_EXISTING_VEHICLES_FATHOM_FQ_2 >= 0 then
                iCost = g_sMPtunables.iBB_TRADE_PRICE_EXISTING_VEHICLES_FATHOM_FQ_2
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.FUGITIVE then
        iCost = 24000
    elseif eVehicleModel == ExtendedM.VehicleHashes.FUSILADE then
        iCost = 36000
    elseif eVehicleModel == ExtendedM.VehicleHashes.FUTO then
        iCost = 9000
        if bNetwork_isGameInProgress then
            if g_sMPtunables.iBB_TRADE_PRICE_EXISTING_VEHICLES_KARIN_FUTO >= 0 then
                iCost = g_sMPtunables.iBB_TRADE_PRICE_EXISTING_VEHICLES_KARIN_FUTO
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.GAUNTLET then
        iCost = 32000
    elseif eVehicleModel == ExtendedM.VehicleHashes.GBURRITO then
        iCost = 16000
    elseif eVehicleModel == ExtendedM.VehicleHashes.GRANGER then
        iCost = 35000
    elseif eVehicleModel == ExtendedM.VehicleHashes.GRESLEY then
        iCost = 29000
    elseif eVehicleModel == ExtendedM.VehicleHashes.HABANERO then
        iCost = 42000
        if bNetwork_isGameInProgress then
            if g_sMPtunables.iBB_TRADE_PRICE_EXISTING_VEHICLES_EMPEROR_HABANERO >= 0 then
                iCost = g_sMPtunables.iBB_TRADE_PRICE_EXISTING_VEHICLES_EMPEROR_HABANERO
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.HEXER then
        iCost = 15000
    elseif eVehicleModel == ExtendedM.VehicleHashes.HOTKNIFE then
        iCost = 90000
    elseif eVehicleModel == ExtendedM.VehicleHashes.INFERNUS then
        iCost = 440000
    elseif eVehicleModel == ExtendedM.VehicleHashes.INGOT then
        iCost = 9000
    elseif eVehicleModel == ExtendedM.VehicleHashes.INTRUDER then
        iCost = 16000
    elseif eVehicleModel == ExtendedM.VehicleHashes.ISSI2 then
        iCost = 18000
    elseif eVehicleModel == ExtendedM.VehicleHashes.JACKAL then
        iCost = 60000
    elseif eVehicleModel == ExtendedM.VehicleHashes.JB700 then
        iCost = 475000
    elseif eVehicleModel == ExtendedM.VehicleHashes.KHAMELION then
        iCost = 100000
    elseif eVehicleModel == ExtendedM.VehicleHashes.LANDSTALKER then
        iCost = 58000
    elseif eVehicleModel == ExtendedM.VehicleHashes.LGUARD then
        iCost = 865000
        if bNetwork_isGameInProgress then
            iCost = g_sMPtunables.iCH_SALE_PRICE_LGUARD
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.FIRETRUK then
        if not bAltVersion then
            iCost = 2471250
            if bNetwork_isGameInProgress then
                iCost = g_sMPtunables.iCH_TRADE_PRICE_FIRETRUCK
            end
        else
            iCost = 3295000
            if bNetwork_isGameInProgress then
                iCost = g_sMPtunables.iCH_BIN_PRICE_FIRETRUCK
            end
            iBasePrice = 2471250
            if bNetwork_isGameInProgress then
                iBasePrice = g_sMPtunables.iCH_TRADE_PRICE_FIRETRUCK
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.MANANA then
        iCost = 10000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iSUM_SALE_PRICE_MANANA >= 0 then
                iCost = g_sMPTunables.iSUM_SALE_PRICE_MANANA
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.MESA then
        iCost = 30000
    elseif eVehicleModel == ExtendedM.VehicleHashes.MINIVAN then
        iCost = 30000
    elseif eVehicleModel == ExtendedM.VehicleHashes.MONROE then
        iCost = 490000
    elseif eVehicleModel == ExtendedM.VehicleHashes.NEMESIS then
        iCost = 12000
    elseif eVehicleModel == ExtendedM.VehicleHashes.NINEF then
        iCost = 120000
    elseif eVehicleModel == ExtendedM.VehicleHashes.NINEF2 then
        iCost = 130000
    elseif eVehicleModel == ExtendedM.VehicleHashes.ORACLE then
        iCost = 82000
    elseif eVehicleModel == ExtendedM.VehicleHashes.ORACLE2 then
        iCost = 80000
    elseif eVehicleModel == ExtendedM.VehicleHashes.PATRIOT then
        iCost = 50000
        if bNetwork_isGameInProgress then
            if g_sMPtunables.iBB_TRADE_PRICE_EXISTING_VEHICLES_MAMMOTH_PATRIOT >= 0 then
                iCost = g_sMPtunables.iBB_TRADE_PRICE_EXISTING_VEHICLES_MAMMOTH_PATRIOT
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.PCJ then
        iCost = 9000
    elseif eVehicleModel == ExtendedM.VehicleHashes.PENUMBRA then
        iCost = 24000
    elseif eVehicleModel == ExtendedM.VehicleHashes.PEYOTE then
        iCost = 12000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iSUM_SALE_PRICE_PEYOTE >= 0 then
                iCost = g_sMPTunables.iSUM_SALE_PRICE_PEYOTE
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.PHOENIX then
        iCost = 20000
        -- if bNetwork_isGameInProgress
        -- and g_sMPTunables.iTRADE_PRICE_VEHICLES_PHOENIX >= 0
        -- iCost = g_sMPTunables.iTRADE_PRICE_VEHICLES_PHOENIX
        -- ENDIF
    elseif eVehicleModel == ExtendedM.VehicleHashes.PRAIRIE then
        iCost = 25000
        if bNetwork_isGameInProgress then
            if g_sMPtunables.iBB_TRADE_PRICE_EXISTING_VEHICLES_BOLLOKAN_PRAIRIE >= 0 then
                iCost = g_sMPtunables.iBB_TRADE_PRICE_EXISTING_VEHICLES_BOLLOKAN_PRAIRIE
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.PRANGER then
        iCost = 35000
    elseif eVehicleModel == ExtendedM.VehicleHashes.PREMIER then
        iCost = 10000
    elseif eVehicleModel == ExtendedM.VehicleHashes.PRIMO then
        iCost = 9000
    elseif eVehicleModel == ExtendedM.VehicleHashes.RADI then
        iCost = 32000
    elseif eVehicleModel == ExtendedM.VehicleHashes.RANCHERXL then
        iCost = 9000
    elseif eVehicleModel == ExtendedM.VehicleHashes.RANCHERXL2 then
        iCost = 9000
    elseif eVehicleModel == ExtendedM.VehicleHashes.RAPIDGT then
        iCost = 118000
    elseif eVehicleModel == ExtendedM.VehicleHashes.RAPIDGT2 then
        iCost = 136000
    elseif eVehicleModel == ExtendedM.VehicleHashes.RATLOADER then
        iCost = 6000
    elseif eVehicleModel == ExtendedM.VehicleHashes.REBEL then
        iCost = 7000
    elseif eVehicleModel == ExtendedM.VehicleHashes.REBEL2 then
        iCost = 22000
    elseif eVehicleModel == ExtendedM.VehicleHashes.REGINA then
        iCost = 8000
    elseif eVehicleModel == ExtendedM.VehicleHashes.ROCOTO then
        iCost = 85000
    elseif eVehicleModel == ExtendedM.VehicleHashes.RUFFIAN then
        iCost = 10000
    elseif eVehicleModel == ExtendedM.VehicleHashes.RUINER then
        iCost = 10000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iBB_TRADE_PRICE_EXISTING_VEHICLES_IMPONTE_RUINER >= 0 then
                iCost = g_sMPTunables.iBB_TRADE_PRICE_EXISTING_VEHICLES_IMPONTE_RUINER
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.RUMPO then
        iCost = 13000
    elseif eVehicleModel == ExtendedM.VehicleHashes.SABREGT then
        iCost = 15000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iWEBSITE_BENNYS_DECLASSE_SABRE_TURBO >= 0 then
                iCost = g_sMPTunables.iWEBSITE_BENNYS_DECLASSE_SABRE_TURBO
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.SADLER then
        iCost = 35000
    elseif eVehicleModel == ExtendedM.VehicleHashes.SANCHEZ then
        iCost = 7000
    elseif eVehicleModel == ExtendedM.VehicleHashes.SANDKING then
        iCost = 45000
    elseif eVehicleModel == ExtendedM.VehicleHashes.SANDKING2 then
        iCost = 45000
    elseif eVehicleModel == ExtendedM.VehicleHashes.SCHAFTER2 then
        iCost = 65000
    elseif eVehicleModel == ExtendedM.VehicleHashes.SCHWARZER then
        iCost = 80000
    elseif eVehicleModel == ExtendedM.VehicleHashes.SEASHARK then
        iCost = 16899
    elseif eVehicleModel == ExtendedM.VehicleHashes.SEMINOLE then
        iCost = 30000
    elseif eVehicleModel == ExtendedM.VehicleHashes.SENTINEL then
        iCost = 60000
    elseif eVehicleModel == ExtendedM.VehicleHashes.SENTINEL2 then
        iCost = 60000
    elseif eVehicleModel == ExtendedM.VehicleHashes.SERRANO then
        iCost = 60000
        if bNetwork_isGameInProgress then
            if g_sMPtunables.iBB_TRADE_PRICE_EXISTING_VEHICLES_BENEFACTOR_SERRANO >= 0 then
                iCost = g_sMPtunables.iBB_TRADE_PRICE_EXISTING_VEHICLES_BENEFACTOR_SERRANO
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.SPEEDO then
        iCost = 15000
    elseif eVehicleModel == ExtendedM.VehicleHashes.SPEEDO2 then
        iCost = 15000
    elseif eVehicleModel == ExtendedM.VehicleHashes.STANIER then
        iCost = 10000
    elseif eVehicleModel == ExtendedM.VehicleHashes.STINGER then
        iCost = 1000000
    elseif eVehicleModel == ExtendedM.VehicleHashes.STINGERGT then
        iCost = 1000000
    elseif eVehicleModel == ExtendedM.VehicleHashes.STRATUM then
        iCost = 10000
    elseif eVehicleModel == ExtendedM.VehicleHashes.STRETCH then
        iCost = 30000
    elseif eVehicleModel == ExtendedM.VehicleHashes.SULTAN then
        iCost = 12000
    elseif eVehicleModel == ExtendedM.VehicleHashes.SUPERD then
        iCost = 250000
    elseif eVehicleModel == ExtendedM.VehicleHashes.SURANO then
        iCost = 99000
    elseif eVehicleModel == ExtendedM.VehicleHashes.SURGE then
        iCost = 38000
    elseif eVehicleModel == ExtendedM.VehicleHashes.TAILGATER then
        iCost = 55000
    elseif eVehicleModel == ExtendedM.VehicleHashes.TAXI then
        iCost = 13000
    elseif eVehicleModel == ExtendedM.VehicleHashes.TORNADO then
        iCost = 30000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iWEBSITE_BENNYS_DECLASSE_TORNADO >= 0 then
                iCost = g_sMPTunables.iWEBSITE_BENNYS_DECLASSE_TORNADO
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.TORNADO2 then
        iCost = 30000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iWEBSITE_BENNYS_DECLASSE_TORNADO >= 0 then
                iCost = g_sMPTunables.iWEBSITE_BENNYS_DECLASSE_TORNADO
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.TORNADO3 then
        iCost = 30000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iWEBSITE_BENNYS_DECLASSE_TORNADO >= 0 then
                iCost = g_sMPTunables.iWEBSITE_BENNYS_DECLASSE_TORNADO
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.TORNADO4 then
        iCost = 30000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iWEBSITE_BENNYS_DECLASSE_TORNADO >= 0 then
                iCost = g_sMPTunables.iWEBSITE_BENNYS_DECLASSE_TORNADO
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.VACCA then
        iCost = 240000
    elseif eVehicleModel == ExtendedM.VehicleHashes.VADER then
        iCost = 9000
    elseif eVehicleModel == ExtendedM.VehicleHashes.VIGERO then
        iCost = 21000
    elseif eVehicleModel == ExtendedM.VehicleHashes.VOLTIC then
        iCost = 80000
    elseif eVehicleModel == ExtendedM.VehicleHashes.VOODOO2 then
        iCost = 5000
    elseif eVehicleModel == ExtendedM.VehicleHashes.WASHINGTON then
        iCost = 15000
    elseif eVehicleModel == ExtendedM.VehicleHashes.YOUGA then
        iCost = 16000
    elseif eVehicleModel == ExtendedM.VehicleHashes.ZION then
        iCost = 50000
    elseif eVehicleModel == ExtendedM.VehicleHashes.ZION2 then
        iCost = 65000
    elseif eVehicleModel == ExtendedM.VehicleHashes.BMX then
        iCost = 500
    elseif eVehicleModel == ExtendedM.VehicleHashes.SCORCHER then
        iCost = 1000
    elseif eVehicleModel == ExtendedM.VehicleHashes.TRIBIKE then
        iCost = 2500
    elseif eVehicleModel == ExtendedM.VehicleHashes.TRIBIKE2 then
        iCost = 2500
    elseif eVehicleModel == ExtendedM.VehicleHashes.TRIBIKE3 then
        iCost = 2500
    elseif eVehicleModel == ExtendedM.VehicleHashes.CRUISER then
        iCost = 3000
    elseif eVehicleModel == ExtendedM.VehicleHashes.ZTYPE then
        if bNetwork_isGameInProgress then
            iCost = 1000000
        else
            iCost = 10000000
        end
    end
    
    -- Skipped #if ExtendedM.Config.USE_TU_CHANGES inside multi-line condition
    -- Skipped #ENDIF inside multi-line condition
    
    if bNetwork_isGameInProgress or iForceNetworkPrice == 1 then --disable tunables
        if eVehicleModel == ExtendedM.VehicleHashes.ADDER then
            iCost = 1000000
        elseif eVehicleModel == ExtendedM.VehicleHashes.AIRBUS then
            iCost = 550000
        elseif eVehicleModel == ExtendedM.VehicleHashes.AKUMA then
            iCost = 9000
            -- CASE ExtendedM.VehicleHashes.ANNIHILATOR	iCost = 185000	BREAK
        elseif eVehicleModel == ExtendedM.VehicleHashes.ANNIHILATOR then
            iCost = 4000000
        elseif eVehicleModel == ExtendedM.VehicleHashes.BALLER2 then
            iCost = 90000
        elseif eVehicleModel == ExtendedM.VehicleHashes.BANSHEE then
            iCost = 105000
        elseif eVehicleModel == ExtendedM.VehicleHashes.BARRACKS then
            iCost = 450000
        elseif eVehicleModel == ExtendedM.VehicleHashes.BATI then
            iCost = 15000
        elseif eVehicleModel == ExtendedM.VehicleHashes.BATI2 then
            iCost = 15000
        elseif eVehicleModel == ExtendedM.VehicleHashes.BFINJECTION then
            iCost = 16000
        elseif eVehicleModel == ExtendedM.VehicleHashes.BISON then
            iCost = 30000
        elseif eVehicleModel == ExtendedM.VehicleHashes.BLAZER then
            iCost = 8000
        elseif eVehicleModel == ExtendedM.VehicleHashes.BMX then
            iCost = 800
        elseif eVehicleModel == ExtendedM.VehicleHashes.BULLET then
            iCost = 155000
        elseif eVehicleModel == ExtendedM.VehicleHashes.BUS then
            iCost = 500000
        elseif eVehicleModel == ExtendedM.VehicleHashes.BUZZARD then
            iCost = 2000000
        elseif eVehicleModel == ExtendedM.VehicleHashes.CARBONIZZARE then
            iCost = 195000
        elseif eVehicleModel == ExtendedM.VehicleHashes.CARBONRS then
            iCost = 40000
        elseif eVehicleModel == ExtendedM.VehicleHashes.CARGOBOB then
            iCost = 185000
        elseif eVehicleModel == ExtendedM.VehicleHashes.CHEETAH then
            iCost = 650000
        elseif eVehicleModel == ExtendedM.VehicleHashes.COACH then
            iCost = 525000
        elseif eVehicleModel == ExtendedM.VehicleHashes.COGCABRIO then
            iCost = 185000
        elseif eVehicleModel == ExtendedM.VehicleHashes.COMET2 then
            iCost = 100000
            -- if bNetwork_isGameInProgress
            -- if g_sMPTunables.iIMPEXP_COMET2_BASE_PRICE >= 0
            -- iCost = g_sMPTunables.iIMPEXP_COMET2_BASE_PRICE
            -- ENDIF
            -- ENDIF
        elseif eVehicleModel == ExtendedM.VehicleHashes.COQUETTE then
            iCost = 138000
        elseif eVehicleModel == ExtendedM.VehicleHashes.CRUISER then
            iCost = 800
        elseif eVehicleModel == ExtendedM.VehicleHashes.CRUSADER then
            iCost = 225000
        elseif eVehicleModel == ExtendedM.VehicleHashes.CUBAN800 then
            iCost = 240000
        elseif eVehicleModel == ExtendedM.VehicleHashes.DILETTANTE then
            iCost = 25000
        elseif eVehicleModel == ExtendedM.VehicleHashes.DOUBLE then
            iCost = 12000
        elseif eVehicleModel == ExtendedM.VehicleHashes.DUBSTA then
            iCost = 70000
        elseif eVehicleModel == ExtendedM.VehicleHashes.DUBSTA2 then
            iCost = 70000
        elseif eVehicleModel == ExtendedM.VehicleHashes.DUMP then
            iCost = 1000000
        elseif eVehicleModel == ExtendedM.VehicleHashes.DUSTER then
            iCost = 275000
        elseif eVehicleModel == ExtendedM.VehicleHashes.ELEGY2 then
            if not bAltVersion then
                iCost = 95000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iIMPEXP_ELEGY_BASE_PRICE >= 0 then
                        iCost = g_sMPTunables.iIMPEXP_ELEGY_BASE_PRICE
                    end
                end
            else
                iCost = 0
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iELEGY2_WEB_PRICE_MODIFIER >= 0 then
                        iCost = g_sMPTunables.iELEGY2_WEB_PRICE_MODIFIER
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ENTITYXF then
            iCost = 795000
        elseif eVehicleModel == ExtendedM.VehicleHashes.EXEMPLAR then
            iCost = 205000
        elseif eVehicleModel == ExtendedM.VehicleHashes.FAGGIO2 then
            iCost = 5000
        elseif eVehicleModel == ExtendedM.VehicleHashes.FELON then
            iCost = 90000
        elseif eVehicleModel == ExtendedM.VehicleHashes.FELON2 then
            iCost = 95000
        elseif eVehicleModel == ExtendedM.VehicleHashes.FELTZER2 then
            iCost = 145000
        elseif eVehicleModel == ExtendedM.VehicleHashes.FROGGER then
            iCost = 1300000
        elseif eVehicleModel == ExtendedM.VehicleHashes.FUGITIVE then
            iCost = 24000
        elseif eVehicleModel == ExtendedM.VehicleHashes.GAUNTLET then
            iCost = 32000
        elseif eVehicleModel == ExtendedM.VehicleHashes.HEXER then
            iCost = 15000
        elseif eVehicleModel == ExtendedM.VehicleHashes.HOTKNIFE then
            iCost = 90000
        elseif eVehicleModel == ExtendedM.VehicleHashes.INFERNUS then
            iCost = 440000
        elseif eVehicleModel == ExtendedM.VehicleHashes.ISSI2 then
            iCost = 18000
        elseif eVehicleModel == ExtendedM.VehicleHashes.JB700 then
            iCost = 350000
        elseif eVehicleModel == ExtendedM.VehicleHashes.JETMAX then
            iCost = 299000
        elseif eVehicleModel == ExtendedM.VehicleHashes.JOURNEY then
            iCost = 15000
        elseif eVehicleModel == ExtendedM.VehicleHashes.KHAMELION then
            iCost = 100000
        elseif eVehicleModel == ExtendedM.VehicleHashes.LUXOR then
            iCost = 1500000
        elseif eVehicleModel == ExtendedM.VehicleHashes.MAMMATUS then
            iCost = 300000
        elseif eVehicleModel == ExtendedM.VehicleHashes.MARQUIS then
            iCost = 413990
        elseif eVehicleModel == ExtendedM.VehicleHashes.MAVERICK then
            iCost = 780000
        elseif eVehicleModel == ExtendedM.VehicleHashes.MONROE then
            iCost = 490000
        elseif eVehicleModel == ExtendedM.VehicleHashes.MULE then
            iCost = 27000
        elseif eVehicleModel == ExtendedM.VehicleHashes.NINEF then
            iCost = 120000
        elseif eVehicleModel == ExtendedM.VehicleHashes.NINEF2 then
            iCost = 130000
        elseif eVehicleModel == ExtendedM.VehicleHashes.ORACLE2 then
            iCost = 80000
        elseif eVehicleModel == ExtendedM.VehicleHashes.PCJ then
            iCost = 9000
        elseif eVehicleModel == ExtendedM.VehicleHashes.PICADOR then
            iCost = 9000
        elseif eVehicleModel == ExtendedM.VehicleHashes.RAPIDGT then
            iCost = 132000
        elseif eVehicleModel == ExtendedM.VehicleHashes.RAPIDGT2 then
            iCost = 140000
        elseif eVehicleModel == ExtendedM.VehicleHashes.RENTALBUS then
            iCost = 30000
        elseif eVehicleModel == ExtendedM.VehicleHashes.ROCOTO then
            iCost = 85000
        elseif eVehicleModel == ExtendedM.VehicleHashes.RUFFIAN then
            iCost = 10000
        elseif eVehicleModel == ExtendedM.VehicleHashes.SANCHEZ then
            iCost = 7000
        elseif eVehicleModel == ExtendedM.VehicleHashes.SANDKING then
            iCost = 45000
        elseif eVehicleModel == ExtendedM.VehicleHashes.SCHWARZER then
            iCost = 80000
        elseif eVehicleModel == ExtendedM.VehicleHashes.SCORCHER then
            iCost = 2000
        elseif eVehicleModel == ExtendedM.VehicleHashes.SHAMAL then
            iCost = 1150000
        elseif eVehicleModel == ExtendedM.VehicleHashes.SQUALO then
            iCost = 196621
        elseif eVehicleModel == ExtendedM.VehicleHashes.STINGER then
            iCost = 850000
        elseif eVehicleModel == ExtendedM.VehicleHashes.STINGERGT then
            iCost = 875000
        elseif eVehicleModel == ExtendedM.VehicleHashes.STRETCH then
            iCost = 30000
        elseif eVehicleModel == ExtendedM.VehicleHashes.STUNT then
            iCost = 250000
        elseif eVehicleModel == ExtendedM.VehicleHashes.SUNTRAP then
            iCost = 25160
        elseif eVehicleModel == ExtendedM.VehicleHashes.SUPERD then
            iCost = 250000
        elseif eVehicleModel == ExtendedM.VehicleHashes.SURANO then
            iCost = 110000
        elseif eVehicleModel == ExtendedM.VehicleHashes.TITAN then
            iCost = 5000000
        elseif eVehicleModel == ExtendedM.VehicleHashes.TRIBIKE then
            iCost = 10000
        elseif eVehicleModel == ExtendedM.VehicleHashes.TRIBIKE2 then
            iCost = 10000
        elseif eVehicleModel == ExtendedM.VehicleHashes.TRIBIKE3 then
            iCost = 10000
        elseif eVehicleModel == ExtendedM.VehicleHashes.TROPIC then
            iCost = 22000
        elseif eVehicleModel == ExtendedM.VehicleHashes.VACCA then
            iCost = 240000
        elseif eVehicleModel == ExtendedM.VehicleHashes.VADER then
            iCost = 9000
        elseif eVehicleModel == ExtendedM.VehicleHashes.VELUM then
            iCost = 450000
        elseif eVehicleModel == ExtendedM.VehicleHashes.VIGERO then
            iCost = 21000
        elseif eVehicleModel == ExtendedM.VehicleHashes.VOLTIC then
            iCost = 150000
        elseif eVehicleModel == ExtendedM.VehicleHashes.ZION then
            iCost = 60000
        elseif eVehicleModel == ExtendedM.VehicleHashes.ZION2 then
            iCost = 65000
            -- CASE ExtendedM.VehicleHashes.ZTYPE			iCost = 165000	BREAK
        elseif eVehicleModel == ExtendedM.VehicleHashes.ZTYPE then
            iCost = 950000
        end
        
        if eVehicleModel == ExtendedM.VehicleHashes.ANNIHILATOR then
            iCost = 1825000
        elseif eVehicleModel == ExtendedM.VehicleHashes.BLAZER3 then
            iCost = 69000
        elseif eVehicleModel == ExtendedM.VehicleHashes.BODHI2 then
            iCost = 25000
        elseif eVehicleModel == ExtendedM.VehicleHashes.BUZZARD then
            iCost = 1750000
        elseif eVehicleModel == ExtendedM.VehicleHashes.DILETTANTE2 then
            iCost = 25000
        elseif eVehicleModel == ExtendedM.VehicleHashes.DLOADER then
            iCost = 15000
        elseif eVehicleModel == ExtendedM.VehicleHashes.DUNE2 then
            iCost = 1000000
        elseif eVehicleModel == ExtendedM.VehicleHashes.FROGGER then
            iCost = 1300000
        elseif eVehicleModel == ExtendedM.VehicleHashes.LUXOR then
            iCost = 1625000
        elseif eVehicleModel == ExtendedM.VehicleHashes.MESA3 then
            iCost = 87000
        elseif eVehicleModel == ExtendedM.VehicleHashes.PEYOTE then
            iCost = 38000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iSUM_SALE_PRICE_PEYOTE >= 0 then
                    iCost = g_sMPTunables.iSUM_SALE_PRICE_PEYOTE
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.RHINO then
            iCost = 1500000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iRHINO_EXPENDITURE_MODIFIER >= 0 then
                    iCost = g_sMPTunables.iRHINO_EXPENDITURE_MODIFIER
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ROMERO then
            iCost = 45000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iBB_TRADE_PRICE_EXISTING_VEHICLES_CHARIOT_ROMERO_HEARSE >= 0 then
                    iCost = g_sMPTunables.iBB_TRADE_PRICE_EXISTING_VEHICLES_CHARIOT_ROMERO_HEARSE
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.SENTINEL2 then
            iCost = 95000
        elseif eVehicleModel == ExtendedM.VehicleHashes.SHAMAL then
            iCost = 1150000
        elseif eVehicleModel == ExtendedM.VehicleHashes.SURFER then
            iCost = 11000
        elseif eVehicleModel == ExtendedM.VehicleHashes.SURFER2 then
            iCost = 5000
        elseif eVehicleModel == ExtendedM.VehicleHashes.TITAN then
            iCost = 2000000
        elseif eVehicleModel == ExtendedM.VehicleHashes.TOWTRUCK2 then
            iCost = 32000
        end
        
        -- Revised vehicle values for Beach Bum pack release
        if eVehicleModel == ExtendedM.VehicleHashes.BODHI2 then
            iCost = 25000
            -- #1713525
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iBODHI2_expenditure_modifier >= 0 then
                    iCost = g_sMPTunables.iBODHI2_expenditure_modifier
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.DUNE then
            iCost = 20000
            -- #1713525
            -- Skipped #if ExtendedM.Config.USE_TU_CHANGES inside multi-line condition
            -- Skipped #ENDIF inside multi-line condition
            if bNetwork_isGameInProgress or iForceNetworkPrice == 1 then
                iCost = 20000
                if g_sMPTunables.idune_expenditure_modifier >= 0 and bNetwork_isGameInProgress then
                    iCost = g_sMPTunables.idune_expenditure_modifier
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.REBEL then
            iCost = 3000
        elseif eVehicleModel == ExtendedM.VehicleHashes.SADLER then
            iCost = 35000
        elseif eVehicleModel == ExtendedM.VehicleHashes.SANCHEZ2 then
            iCost = 8000
        elseif eVehicleModel == ExtendedM.VehicleHashes.SANDKING2 then
            iCost = 38000
        end
        
        -- Revised vehicle values for Business pack release
        if eVehicleModel == ExtendedM.VehicleHashes.ASEA then
            iCost = 12000
        elseif eVehicleModel == ExtendedM.VehicleHashes.ASTEROPE then
            iCost = 26000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.ibusiness_vehicles_Asterope >= 0 then
                    iCost = g_sMPTunables.ibusiness_vehicles_Asterope
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.BOBCATXL then
            iCost = 23000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.ibusiness_vehicles_bobcatxl >= 0 then
                    iCost = g_sMPTunables.ibusiness_vehicles_bobcatxl
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CAVALCADE then
            iCost = 60000
            -- Skipped #if ExtendedM.Config.USE_TU_CHANGES inside multi-line condition
            -- Skipped #ENDIF inside multi-line condition
            if bNetwork_isGameInProgress or iForceNetworkPrice == 1 then
                iCost = 60000
                if g_sMPTunables.icavalcade_expenditure_modifier >= 0 and bNetwork_isGameInProgress then
                    iCost = g_sMPTunables.icavalcade_expenditure_modifier
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CAVALCADE2 then
            iCost = 60000
            -- Skipped #if ExtendedM.Config.USE_TU_CHANGES inside multi-line condition
            -- Skipped #ENDIF inside multi-line condition
            if bNetwork_isGameInProgress or iForceNetworkPrice == 1 then
                iCost = 70000
                if g_sMPTunables.ibusiness_vehicles_Cavalcade2 >= 0 and bNetwork_isGameInProgress then
                    iCost = g_sMPTunables.ibusiness_vehicles_Cavalcade2
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.GRANGER then
            iCost = 35000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.ibusiness_vehicles_Granger >= 0 then
                    iCost = g_sMPTunables.ibusiness_vehicles_Granger
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.INGOT then
            iCost = 9000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.ibusiness_vehicles_Ingot >= 0 then
                    iCost = g_sMPTunables.ibusiness_vehicles_Ingot
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.INTRUDER then
            iCost = 16000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.ibusiness_vehicles_Intruder >= 0 then
                    iCost = g_sMPTunables.ibusiness_vehicles_Intruder
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.MINIVAN then
            iCost = 30000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.ibusiness_vehicles_Minivan >= 0 then
                    iCost = g_sMPTunables.ibusiness_vehicles_Minivan
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.PREMIER then
            iCost = 10000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.ibusiness_vehicles_Premier >= 0 then
                    iCost = g_sMPTunables.ibusiness_vehicles_Premier
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.RADI then
            iCost = 32000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.ibusiness_vehicles_Radi >= 0 then
                    iCost = g_sMPTunables.ibusiness_vehicles_Radi
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.RANCHERXL then
            iCost = 9000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.ibusiness_vehicles_Rancherxl >= 0 then
                    iCost = g_sMPTunables.ibusiness_vehicles_Rancherxl
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.RATLOADER then
            iCost = 6000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.ivalentine_vehicle_RATLOADER >= 0 then
                    iCost = g_sMPTunables.ivalentine_vehicle_RATLOADER
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.STANIER then
            iCost = 10000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.ibusiness_vehicles_Stanier >= 0 then
                    iCost = g_sMPTunables.ibusiness_vehicles_Stanier
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.STRATUM then
            iCost = 10000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.ibusiness_vehicles_Stratum >= 0 then
                    iCost = g_sMPTunables.ibusiness_vehicles_Stratum
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.WASHINGTON then
            iCost = 15000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.ibusiness_vehicles_Washington >= 0 then
                    iCost = g_sMPTunables.ibusiness_vehicles_Washington
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CARGOBOB then
            iCost = 1790000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iEXEC1_CARGOBOB >= 0 then
                    iCost = g_sMPTunables.iEXEC1_CARGOBOB
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CARGOBOB2 then
            iCost = 1995000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iEXEC1_CARGOBOB2 >= 0 then
                    iCost = g_sMPTunables.iEXEC1_CARGOBOB2
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TUG then
            iCost = 1250000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iEXEC1_TUG >= 0 then
                    iCost = g_sMPTunables.iEXEC1_TUG
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.NIMBUS then
            iCost = 1900000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iEXEC1_BUCKINGHAM_NIMBUS >= 0 then
                    iCost = g_sMPTunables.iEXEC1_BUCKINGHAM_NIMBUS
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.BRICKADE then
            iCost = 1110000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iEXEC1_HVY_BRICKADE >= 0 then
                    iCost = g_sMPTunables.iEXEC1_HVY_BRICKADE
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.WINDSOR2 then
            iCost = 900000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iEXEC1_ENUS_WINDSOR_DROP >= 0 then
                    iCost = g_sMPTunables.iEXEC1_ENUS_WINDSOR_DROP
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.PROTOTIPO then
            iCost = 2700000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iEXEC1_PROGEN_X80_PROTO >= 0 then
                    iCost = g_sMPTunables.iEXEC1_PROGEN_X80_PROTO
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.FMJ then
            iCost = 1750000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iEXEC1_VAPID_FMJ >= 0 then
                    iCost = g_sMPTunables.iEXEC1_VAPID_FMJ
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.BESTIAGTS then
            iCost = 610000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iEXEC1_GROTTI_BESTIA >= 0 then
                    iCost = g_sMPTunables.iEXEC1_GROTTI_BESTIA
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.XLS then
            iCost = 253000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iEXEC1_BENEFACTOR_XLS >= 0 then
                    iCost = g_sMPTunables.iEXEC1_BENEFACTOR_XLS
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.XLS2 then
            iCost = 522000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iEXEC1_BENEFACTOR_XLS_ARMORED >= 0 then
                    iCost = g_sMPTunables.iEXEC1_BENEFACTOR_XLS_ARMORED
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.SEVEN70 then
            iCost = 695000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iEXEC1_DEWBAUCHEE_SEVEN70 >= 0 then
                    iCost = g_sMPTunables.iEXEC1_DEWBAUCHEE_SEVEN70
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.PFISTER811 then
            iCost = 1135000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iEXEC1_PFISTER_811 >= 0 then
                    iCost = g_sMPTunables.iEXEC1_PFISTER_811
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.REAPER then
            iCost = 1595000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iEXEC_VEH_PEGASUS_REAPER >= 0 then
                    iCost = g_sMPTunables.iEXEC_VEH_PEGASUS_REAPER
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.RUMPO3 then
            iCost = 130000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iEXEC1_BRAVADO_RUMPO_CUSTOM >= 0 then
                    iCost = g_sMPTunables.iEXEC1_BRAVADO_RUMPO_CUSTOM
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.VOLATUS then
            iCost = 2295000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iEXEC1_BUCKINGHAM_VOLATUS >= 0 then
                    iCost = g_sMPTunables.iEXEC1_BUCKINGHAM_VOLATUS
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.LE7B then
            iCost = 2475000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iSTUNT_Annis_RE7B   >= 0 then
                    iCost = g_sMPtunables.iSTUNT_Annis_RE7B
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.OMNIS then
            if not bAltVersion then
                iCost = 701000
                if bNetwork_isGameInProgress then
                    if g_sMPtunables.iSTUNT_Obey_Omnis  >= 0 then
                        iCost = g_sMPtunables.iSTUNT_Obey_Omnis
                    end
                end
            else
                iCost = 0
                -- if bNetwork_isGameInProgress
                -- if g_sMPtunables.iSTUNT_Obey_Omnis_FREE >= 0
                -- iCost = g_sMPtunables.iSTUNT_Obey_Omnis_FREE
                -- ENDIF
                -- ENDIF
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TROPOS then
            iCost = 816000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iSTUNT_Lampadati_Tropos_Rallye   >= 0 then
                    iCost = g_sMPtunables.iSTUNT_Lampadati_Tropos_Rallye
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.BRIOSO then
            iCost = 155000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iSTUNT_Grotti_Brioso_RA  >= 0 then
                    iCost = g_sMPtunables.iSTUNT_Grotti_Brioso_RA
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TROPHYTRUCK then
            iCost = 550000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iSTUNT_Vapid_Trophy_Truck    >= 0 then
                    iCost = g_sMPtunables.iSTUNT_Vapid_Trophy_Truck
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TROPHYTRUCK2 then
            iCost = 695000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iSTUNT_Vapid_Desert_Raid >= 0 then
                    iCost = g_sMPtunables.iSTUNT_Vapid_Desert_Raid
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CONTENDER then
            iCost = 250000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iSTUNT_Bravado_Contender  >= 0 then
                    iCost = g_sMPtunables.iSTUNT_Bravado_Contender
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CLIFFHANGER then
            iCost = 225000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iSTUNT_Western_Cliffhanger >= 0 then
                    iCost = g_sMPtunables.iSTUNT_Western_Cliffhanger
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.BF400 then
            iCost = 95000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iSTUNT_Nagasaki_BF400  >= 0 then
                    iCost = g_sMPtunables.iSTUNT_Nagasaki_BF400
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TYRUS then
            iCost = 2550000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iSTUNT_Progen_Tyrus >= 0 then
                    iCost = g_sMPtunables.iSTUNT_Progen_Tyrus
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.LYNX then
            iCost = 1735000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iSTUNT_Ocelot_Lynx >= 0 then
                    iCost = g_sMPtunables.iSTUNT_Ocelot_Lynx
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.SHEAVA then
            iCost = 1995000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iSTUNT_Emperor_Sheava >= 0 then
                    iCost = g_sMPtunables.iSTUNT_Emperor_Sheava
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.RALLYTRUCK then
            if not bAltVersion then
                iCost = 1300000
                if bNetwork_isGameInProgress then
                    if g_sMPtunables.iSTUNT_MTL_DUNE_Livery_1    >= 0 then
                        iCost = g_sMPtunables.iSTUNT_MTL_DUNE_Livery_1
                    end
                end
            else
                iCost = 1385000
                if bNetwork_isGameInProgress then
                    if g_sMPtunables.iSTUNT_MTL_DUNE_Livery_2    >= 0 then
                        iCost = g_sMPtunables.iSTUNT_MTL_DUNE_Livery_2
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TAMPA2 then
            iCost = 995000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iSTUNT_Decalsse_Drift_Tampa  >= 0 then
                    iCost = g_sMPtunables.iSTUNT_Decalsse_Drift_Tampa
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.GARGOYLE then
            iCost = 120000
            if bNetwork_isGameInProgress and g_sMPtunables.iSTUNT_Western_Bike_O_Death  >= 0 then
                iCost = g_sMPtunables.iSTUNT_Western_Bike_O_Death
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = math.floor((120000 * 1.0)*0.75 + 0.5)
                if bNetwork_isGameInProgress and g_sMPTunables.iAW_TRADE_PRICE_GARGOYLE >= 0 then
                    iCost = g_sMPtunables.iAW_TRADE_PRICE_GARGOYLE
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ESSKEY then
            iCost = 264000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iBiker_Website_Pegassi_Esskey >= 0 then
                    iCost = g_sMPtunables.iBiker_Website_Pegassi_Esskey
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.NIGHTBLADE then
            iCost = 100000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iBiker_Website_Western_Nightblade >= 0 then
                    iCost = g_sMPtunables.iBiker_Website_Western_Nightblade
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.DEFILER then
            if bAltVersion then
                iCost = 309000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_DEFILER >= 0 then
                        iCost = g_sMPTunables.iCH_TRADE_PRICE_DEFILER
                    end
                end
            else
                iCost = 412000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBiker_Website_Shitzu_Defiler >= 0 then
                        iCost = g_sMPTunables.iBiker_Website_Shitzu_Defiler
                    end
                end
                iBasePrice = 309000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_DEFILER >= 0 then
                        iBasePrice = g_sMPTunables.iCH_TRADE_PRICE_DEFILER
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.AVARUS then
            iCost = 116000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iBiker_Website_LCC_Avarus >= 0 then
                    iCost = g_sMPtunables.iBiker_Website_LCC_Avarus
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ZOMBIEA then
            iCost = 99000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iBiker_Website_Western_Zombie_Bobber >= 0 then
                    iCost = g_sMPtunables.iBiker_Website_Western_Zombie_Bobber
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ZOMBIEB then
            if not bAltVersion then
                iCost = 122000
                if bNetwork_isGameInProgress then
                    if g_sMPtunables.iBiker_Website_Western_Zombie_Chopper >= 0 then
                        iCost = g_sMPtunables.iBiker_Website_Western_Zombie_Chopper
                    end
                end
            else
                iCost = 0
                -- if bNetwork_isGameInProgress
                -- if g_sMPtunables.iBiker_Website_Western_Zombie_Chopper_FREE >= 0
                -- iCost = g_sMPtunables.iBiker_Website_Western_Zombie_Chopper_FREE
                -- ENDIF
                -- ENDIF
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CHIMERA then
            iCost = 210000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iBiker_Website_Nagasaki_Chimera >= 0 then
                    iCost = g_sMPtunables.iBiker_Website_Nagasaki_Chimera
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.DAEMON2 then
            iCost = 145000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iBiker_Website_Western_Daemon_Custom >= 0 then
                    iCost = g_sMPtunables.iBiker_Website_Western_Daemon_Custom
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.RATBIKE then
            iCost = 48000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iBiker_Website_Western_Rat_Bike >= 0 then
                    iCost = g_sMPtunables.iBiker_Website_Western_Rat_Bike
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.SHOTARO then
            iCost = 2225000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iBiker_Website_Nagasaki_Shotaro >= 0 then
                    iCost = g_sMPtunables.iBiker_Website_Nagasaki_Shotaro
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.RAPTOR then
            iCost = 648000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iBiker_Website_BF_Raptor >= 0 then
                    iCost = g_sMPtunables.iBiker_Website_BF_Raptor
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.HAKUCHOU2 then
            iCost = 976000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iBiker_Website_Shitzu_Hakuchou_Drag >= 0 then
                    iCost = g_sMPtunables.iBiker_Website_Shitzu_Hakuchou_Drag
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.BLAZER4 then
            iCost = 81000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iBiker_Website_Nagasaki_Street_Blazer >= 0 then
                    iCost = g_sMPtunables.iBiker_Website_Nagasaki_Street_Blazer
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.SANCTUS then
            iCost = 1995000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iBiker_Website_LCC_Sanctus >= 0 then
                    iCost = g_sMPtunables.iBiker_Website_LCC_Sanctus
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.VORTEX then
            if not bAltVersion then
                iCost = 356000
                if bNetwork_isGameInProgress then
                    if g_sMPtunables.iBiker_Website_Pegassi_Vortex >= 0 then
                        iCost = g_sMPtunables.iBiker_Website_Pegassi_Vortex
                    end
                end
            else
                iCost = 0
                -- if bNetwork_isGameInProgress
                -- if g_sMPtunables.iBiker_Website_Pegassi_Vortex_FREE >= 0
                -- iCost = g_sMPtunables.iBiker_Website_Pegassi_Vortex_FREE
                -- ENDIF
                -- ENDIF
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.MANCHEZ then
            if bAltVersion then
                iCost = 50250
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_MANCHEZ >= 0 then
                        iCost = g_sMPTunables.iCH_TRADE_PRICE_MANCHEZ
                    end
                end
            else
                iCost = 67000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBiker_Website_Maibatsu_Manchez >= 0 then
                        iCost = g_sMPTunables.iBiker_Website_Maibatsu_Manchez
                    end
                end
                iBasePrice = 50250
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_MANCHEZ >= 0 then
                        iBasePrice = g_sMPTunables.iCH_TRADE_PRICE_MANCHEZ
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TORNADO6 then
            iCost = 378000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iWEBSITE_DECLASSE_TORNADO_RAT_ROD >= 0 then
                    iCost = g_sMPTunables.iWEBSITE_DECLASSE_TORNADO_RAT_ROD
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.YOUGA2 then
            iCost = 195000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iWEBSITE_VAPID_YOUGA_CLASSIC >= 0 then
                    iCost = g_sMPtunables.iWEBSITE_VAPID_YOUGA_CLASSIC
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.WOLFSBANE then
            if bAltVersion then
                iCost = 71250
                if bNetwork_isGameInProgress then
                    if ExtendedM.Config.Features.FEATURE_COPS_N_CROOKS == 1 then
                        if g_sMPTunables.iCNC_TRADE_PRICE_WOLFSBANE  >= 0 then
                            iCost = g_sMPTunables.iCNC_TRADE_PRICE_WOLFSBANE
                        end
                    end
                end
            else
                iCost = 95000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBiker_Website_Western_Wolfsbane >= 0 then
                        iCost = g_sMPTunables.iBiker_Website_Western_Wolfsbane
                    end
                end
                iBasePrice = 71250
                if bNetwork_isGameInProgress then
                    if ExtendedM.Config.Features.FEATURE_COPS_N_CROOKS == 1 then
                        if g_sMPTunables.iCNC_TRADE_PRICE_WOLFSBANE  >= 0 then
                            iBasePrice = g_sMPTunables.iCNC_TRADE_PRICE_WOLFSBANE
                        end
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.FAGGIO3 then
            iCost = 55000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iWEBSITE_PEGASSI_FAGGIO_MOD >= 0 then
                    iCost = g_sMPTunables.iWEBSITE_PEGASSI_FAGGIO_MOD
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.FAGGIO then
            iCost = 47500
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iWEBSITE_PEGASSI_FAGGIO_SPORT >= 0 then
                    iCost = g_sMPTunables.iWEBSITE_PEGASSI_FAGGIO_SPORT
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.DUNE5 then
            if not bAltVersion then
                iCost = 3192000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iIMPEXP_DUNE5_BIN_PRICE >= 0 then
                        iCost = g_sMPTunables.iIMPEXP_DUNE5_BIN_PRICE
                    end
                end
            else
                iCost = 2400000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iIMPEXP_DUNE5_SECUROSERV_PRICE >= 0 then
                        iCost = g_sMPTunables.iIMPEXP_DUNE5_SECUROSERV_PRICE
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.PHANTOM2 then
            if not bAltVersion then
                iCost = 2553600
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iIMPEXP_PHANTOM2_BIN_PRICE >= 0 then
                        iCost = g_sMPTunables.iIMPEXP_PHANTOM2_BIN_PRICE
                    end
                end
            else
                iCost = 1920000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iIMPEXP_PHANTOM2_SECUROSERV_PRICE >= 0 then
                        iCost = g_sMPTunables.iIMPEXP_PHANTOM2_SECUROSERV_PRICE
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TECHNICAL2 then
            if not bAltVersion then
                iCost = 1489600
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iIMPEXP_TECHNICAL2_BIN_PRICE >= 0 then
                        iCost = g_sMPTunables.iIMPEXP_TECHNICAL2_BIN_PRICE
                    end
                end
            else
                iCost = 1120000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iIMPEXP_TECHNICAL2_SECUROSERV_PRICE >= 0 then
                        iCost = g_sMPTunables.iIMPEXP_TECHNICAL2_SECUROSERV_PRICE
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.BLAZER5 then
            if not bAltVersion then
                iCost = 1755600
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iIMPEXP_BLAZER5_BIN_PRICE >= 0 then
                        iCost = g_sMPTunables.iIMPEXP_BLAZER5_BIN_PRICE
                    end
                end
            else
                iCost = 1320000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iIMPEXP_BLAZER5_SECUROSERV_PRICE >= 0 then
                        iCost = g_sMPTunables.iIMPEXP_BLAZER5_SECUROSERV_PRICE
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.BOXVILLE5 then
            if not bAltVersion then
                iCost = 2926000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iIMPEXP_BOXVILLE5_BIN_PRICE >= 0 then
                        iCost = g_sMPTunables.iIMPEXP_BOXVILLE5_BIN_PRICE
                    end
                end
            else
                iCost = 2200000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iIMPEXP_BOXVILLE5_SECUROSERV_PRICE >= 0 then
                        iCost = g_sMPTunables.iIMPEXP_BOXVILLE5_SECUROSERV_PRICE
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.WASTELANDER then
            if not bAltVersion then
                iCost = 658350
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iIMPEXP_WASTELANDER_BIN_PRICE >= 0 then
                        iCost = g_sMPTunables.iIMPEXP_WASTELANDER_BIN_PRICE
                    end
                end
            else
                iCost = 495000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iIMPEXP_WASTELANDER_SECUROSERV_PRICE >= 0 then
                        iCost = g_sMPTunables.iIMPEXP_WASTELANDER_SECUROSERV_PRICE
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.RUINER2 then
            if not bAltVersion then
                iCost = 5745600
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iIMPEXP_RUINER2_BIN_PRICE >= 0 then
                        iCost = g_sMPTunables.iIMPEXP_RUINER2_BIN_PRICE
                    end
                end
            else
                iCost = 4320000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iIMPEXP_RUINER2_SECUROSERV_PRICE >= 0 then
                        iCost = g_sMPTunables.iIMPEXP_RUINER2_SECUROSERV_PRICE
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.VOLTIC2 then
            if not bAltVersion then
                iCost = 3830400
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iIMPEXP_VOLTIC2_BIN_PRICE >= 0 then
                        iCost = g_sMPTunables.iIMPEXP_VOLTIC2_BIN_PRICE
                    end
                end
            else
                iCost = 2880000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iIMPEXP_VOLTIC2_SECUROSERV_PRICE >= 0 then
                        iCost = g_sMPTunables.iIMPEXP_VOLTIC2_SECUROSERV_PRICE
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.PENETRATOR then
            iCost = 880000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iIMPEXP_PENETRATOR_PRICE >= 0 then
                    iCost = g_sMPTunables.iIMPEXP_PENETRATOR_PRICE
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TEMPESTA then
            iCost = 1329000
            if bNetwork_isGameInProgress and g_sMPTunables.iIMPEXP_TEMPESTA_PRICE >= 0 then
                iCost = g_sMPTunables.iIMPEXP_TEMPESTA_PRICE
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = math.floor((1329000 * 1.0)*0.75 + 0.5)
                -- if bNetwork_isGameInProgress
                -- and g_sMPtunables.iIMPEXP_TEMPESTA_PRICE >= 0
                -- iCost = g_sMPTunables.iIMPEXP_TEMPESTA_PRICE
                -- ENDIF
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ITALIGTB then
            iCost = 1189000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iIMPEXP_ITALIGTB_BASE_PRICE >= 0 then
                    iCost = g_sMPTunables.iIMPEXP_ITALIGTB_BASE_PRICE
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ITALIGTB2 then
            iCost = (g_sMPTunables.iIMPEXP_ITALIGTB_BASE_PRICE + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
        elseif eVehicleModel == ExtendedM.VehicleHashes.NERO then
            iCost = 1440000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iIMPEXP_NERO_BASE_PRICE >= 0 then
                    iCost = g_sMPTunables.iIMPEXP_NERO_BASE_PRICE
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.NERO2 then
            iCost = (g_sMPTunables.iIMPEXP_NERO_BASE_PRICE + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
        elseif eVehicleModel == ExtendedM.VehicleHashes.DIABLOUS then
            iCost = 169000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iIMPEXP_DIABLOUS_BASE_PRICE >= 0 then
                    iCost = g_sMPTunables.iIMPEXP_DIABLOUS_BASE_PRICE
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.DIABLOUS2 then
            iCost = (g_sMPTunables.iIMPEXP_DIABLOUS_BASE_PRICE + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
        elseif eVehicleModel == ExtendedM.VehicleHashes.FCR then
            iCost = 135000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iIMPEXP_FCR_BASE_PRICE >= 0 then
                    iCost = g_sMPTunables.iIMPEXP_FCR_BASE_PRICE
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.FCR2 then
            iCost = (g_sMPTunables.iIMPEXP_FCR_BASE_PRICE + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
        elseif eVehicleModel == ExtendedM.VehicleHashes.SPECTER then
            iCost = 599000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iIMPEXP_SPECTER_BASE_PRICE >= 0 then
                    iCost = g_sMPTunables.iIMPEXP_SPECTER_BASE_PRICE
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.SPECTER2 then
            iCost = (g_sMPTunables.iIMPEXP_SPECTER_BASE_PRICE + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.COMET3 then
            iCost = (85000 + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
        elseif eVehicleModel == ExtendedM.VehicleHashes.ELEGY then
            iCost = (g_sMPTunables.iIMPEXP_ELEGY_BASE_PRICE + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
        elseif eVehicleModel == ExtendedM.VehicleHashes.INFERNUS2 then
            iCost = 915000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iSR_PEGASSI_INFERNUS2 >= 0 then
                    iCost = g_sMPTunables.iSR_PEGASSI_INFERNUS2
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.GP1 then
            iCost = 1260000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iSR_PROGEN_GP1 >= 0 then
                    iCost = g_sMPTunables.iSR_PROGEN_GP1
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.RUSTON then
            iCost = 430000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iSR_HIJAK_RUSTON >= 0 then
                    iCost = g_sMPTunables.iSR_HIJAK_RUSTON
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TURISMO2 then
            iCost = 705000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iSR_GROTTI_TURISMO2 >= 0 then
                    iCost = g_sMPTunables.iSR_GROTTI_TURISMO2
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ARDENT then
            iCost = 1150000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iGR_BASIC_WEAPONIZED_VEHICLES_OCELOT_ARDENT >= 0 then
                    iCost = g_sMPTunables.iGR_BASIC_WEAPONIZED_VEHICLES_OCELOT_ARDENT
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CHEETAH2 then
            iCost = 865000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iGR_NEW_SPORTS_CARS_GROTTI_CHEETAH_CLASSIC >= 0 then
                    iCost = g_sMPTunables.iGR_NEW_SPORTS_CARS_GROTTI_CHEETAH_CLASSIC
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.NIGHTSHARK then
            iCost = 1245000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iGR_BASIC_WEAPONIZED_VEHICLES_HVY_NIGHTSHARK >= 0 then
                    iCost = g_sMPTunables.iGR_BASIC_WEAPONIZED_VEHICLES_HVY_NIGHTSHARK
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TORERO then
            iCost = 998000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iGR_NEW_SPORTS_CARS_PEGASSI_TORERO >= 0 then
                    iCost = g_sMPTunables.iGR_NEW_SPORTS_CARS_PEGASSI_TORERO
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.VAGNER then
            iCost = 1535000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iGR_NEW_SPORTS_CARS_DEWBAUCHEE_VAGNER >= 0 then
                    iCost = g_sMPTunables.iGR_NEW_SPORTS_CARS_DEWBAUCHEE_VAGNER
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.XA21 then
            iCost = 2375000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iGR_NEW_SPORTS_CARS_OCELOT_XA_21 >= 0 then
                    iCost = g_sMPTunables.iGR_NEW_SPORTS_CARS_OCELOT_XA_21
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.APC then
            iCost = 2325000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iGR_NEW_FULLY_WEAPONIZED_VEHICLES_HVY_APC >= 0 then
                    iCost = g_sMPTunables.iGR_NEW_FULLY_WEAPONIZED_VEHICLES_HVY_APC
                end
            end
            iBasePrice = iCost
            if not bAltVersion then
                iCost = math.floor((iCost * 1.0) * ((100.0+(g_sMPTunables.iGR_VEHICLE_GENERAL_BUY_IT_NOW_PRICE_INCREASE * 1.0))/100.0) + 0.5)
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.DUNE3 then
            iCost = 850000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iGR_NEW_FULLY_WEAPONIZED_VEHICLES_BF_DUNE_FAV >= 0 then
                    iCost = g_sMPTunables.iGR_NEW_FULLY_WEAPONIZED_VEHICLES_BF_DUNE_FAV
                end
            end
            iBasePrice = iCost
            if not bAltVersion then
                iCost = math.floor((iCost * 1.0) * ((100.0+(g_sMPTunables.iGR_VEHICLE_GENERAL_BUY_IT_NOW_PRICE_INCREASE * 1.0))/100.0) + 0.5)
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.HALFTRACK then
            iCost = 1695000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iGR_NEW_FULLY_WEAPONIZED_VEHICLES_BRAVADO_HALF_TRACK >= 0 then
                    iCost = g_sMPTunables.iGR_NEW_FULLY_WEAPONIZED_VEHICLES_BRAVADO_HALF_TRACK
                end
            end
            iBasePrice = iCost
            if not bAltVersion then
                iCost = math.floor((iCost * 1.0) * ((100.0+(g_sMPTunables.iGR_VEHICLE_GENERAL_BUY_IT_NOW_PRICE_INCREASE * 1.0))/100.0) + 0.5)
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.OPPRESSOR then
            iCost = 2650000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iGR_NEW_FULLY_WEAPONIZED_VEHICLES_PEGASSI_OPPRESSOR >= 0 then
                    iCost = g_sMPTunables.iGR_NEW_FULLY_WEAPONIZED_VEHICLES_PEGASSI_OPPRESSOR
                end
            end
            iBasePrice = iCost
            if not bAltVersion then
                iCost = math.floor((iCost * 1.0) * ((100.0+(g_sMPTunables.iGR_VEHICLE_GENERAL_BUY_IT_NOW_PRICE_INCREASE * 1.0))/100.0) + 0.5)
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TAMPA3 then
            iCost = 1585000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iGR_NEW_FULLY_WEAPONIZED_VEHICLES_DECLASSE_WEAPONIZED_TAMPA >= 0 then
                    iCost = g_sMPTunables.iGR_NEW_FULLY_WEAPONIZED_VEHICLES_DECLASSE_WEAPONIZED_TAMPA
                end
            end
            iBasePrice = iCost
            if not bAltVersion then
                iCost = math.floor((iCost * 1.0) * ((100.0+(g_sMPTunables.iGR_VEHICLE_GENERAL_BUY_IT_NOW_PRICE_INCREASE * 1.0))/100.0) + 0.5)
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TRAILERSMALL2 then
            iCost = 1400000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iGR_NEW_FULLY_WEAPONIZED_VEHICLES_TURRETED_TRAILER >= 0 then
                    iCost = g_sMPTunables.iGR_NEW_FULLY_WEAPONIZED_VEHICLES_TURRETED_TRAILER
                end
            end
            iBasePrice = iCost
            if not bAltVersion then
                iCost = math.floor((iCost * 1.0) * ((100.0+(g_sMPTunables.iGR_VEHICLE_GENERAL_BUY_IT_NOW_PRICE_INCREASE * 1.0))/100.0) + 0.5)
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.PHANTOM3 then
            if not bAltVersion then
                iCost = 1225000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iGR_TRUCK_PROPERTY_JOBUILT_PHANTOM_CUSTOM >= 0 then
                        iCost = g_sMPTunables.iGR_TRUCK_PROPERTY_JOBUILT_PHANTOM_CUSTOM
                    end
                end
            else
                iCost = 0
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.HAULER2 then
            if not bAltVersion then
                iCost = 1400000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iGR_TRUCK_PROPERTY_JOBUILT_HAULER_CUSTOM >= 0 then
                        iCost = g_sMPTunables.iGR_TRUCK_PROPERTY_JOBUILT_HAULER_CUSTOM
                    end
                end
            else
                iCost = 0
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.LAZER then
            iCost = 6500000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_P996_LAZER >= 0 then
                    iCost = g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_P996_LAZER
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.MICROLIGHT then
            if bAltVersion then
                iCost = 500000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_PEGASSI_ULTRALIGHT >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_PEGASSI_ULTRALIGHT
                    end
                end
            else
                iCost = math.floor((500000 * 1.0) * ((100.0+(33 * 1.0))/100.0) + 0.5)
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_PEGASSI_ULTRALIGHT >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_PEGASSI_ULTRALIGHT
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.MOGUL then
            if bAltVersion then
                iCost = 2350000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_MOGUL >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_MOGUL
                    end
                end
            else
                iCost = math.floor((2350000 * 1.0) * ((100.0+(33 * 1.0))/100.0) + 0.5)
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_MOGUL >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_MOGUL
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ROGUE then
            if bAltVersion then
                iCost = 1200000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_ROGUE >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_ROGUE
                    end
                end
            else
                iCost = math.floor((1200000 * 1.0) * ((100.0+(33 * 1.0))/100.0) + 0.5)
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_ROGUE >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_ROGUE
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.STARLING then
            if bAltVersion then
                iCost = 2750000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_STARLING >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_STARLING
                    end
                end
            else
                iCost = math.floor((2750000 * 1.0) * ((100.0+(33 * 1.0))/100.0) + 0.5)
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_STARLING >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_STARLING
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.SEABREEZE then
            if bAltVersion then
                iCost = 850000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_WESTERN_SEABREEZE >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_WESTERN_SEABREEZE
                    end
                end
            else
                iCost = math.floor((850000 * 1.0) * ((100.0+(33 * 1.0))/100.0) + 0.5)
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_WESTERN_SEABREEZE >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_WESTERN_SEABREEZE
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TULA then
            if bAltVersion then
                iCost = 3890000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_TULA >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_TULA
                    end
                end
            else
                iCost = math.floor((3890000 * 1.0) * ((100.0+(33 * 1.0))/100.0) + 0.5)
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_TULA >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_TULA
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.PYRO then
            if bAltVersion then
                iCost = 3350000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_PYRO >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_PYRO
                    end
                end
            else
                iCost = math.floor((3350000 * 1.0) * ((100.0+(33 * 1.0))/100.0) + 0.5)
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_PYRO >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_PYRO
                    end
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.MOLOTOK then
            if bAltVersion then
                iCost = 3600000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_V65_MOLOTOK >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_V65_MOLOTOK
                    end
                end
            else
                iCost = math.floor((3600000 * 1.0) * ((100.0+(33 * 1.0))/100.0) + 0.5)
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_V65_MOLOTOK >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_V65_MOLOTOK
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.NOKOTA then
            if bAltVersion then
                iCost = 1995000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_P45_NOKOTA >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_P45_NOKOTA
                    end
                end
            else
                iCost = math.floor((1995000 * 1.0) * ((100.0+(33 * 1.0))/100.0) + 0.5)
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_P45_NOKOTA >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_P45_NOKOTA
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.BOMBUSHKA then
            if bAltVersion then
                iCost = 4450000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_BOMBUSHKA >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_BOMBUSHKA
                    end
                end
            else
                iCost = math.floor((4450000 * 1.0) * ((100.0+(33 * 1.0))/100.0) + 0.5)
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_BOMBUSHKA >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_BOMBUSHKA
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.HUNTER then
            if bAltVersion then
                iCost = 3100000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_HUNTER >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_HUNTER
                    end
                end
            else
                iCost = math.floor((3100000 * 1.0) * ((100.0+(33 * 1.0))/100.0) + 0.5)
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_HUNTER >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_HUNTER
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.HAVOK then
            if bAltVersion then
                iCost = 1730000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_NAGASAKI_HAVOK >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_NAGASAKI_HAVOK
                    end
                end
            else
                iCost = math.floor((1730000 * 1.0) * ((100.0+(33 * 1.0))/100.0) + 0.5)
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_NAGASAKI_HAVOK >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_NAGASAKI_HAVOK
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.HOWARD then
            if bAltVersion then
                iCost = 975000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_HOWARD_NX25 >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_HOWARD_NX25
                    end
                end
            else
                iCost = math.floor((975000 * 1.0) * ((100.0+(33 * 1.0))/100.0) + 0.5)
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_HOWARD_NX25 >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_HOWARD_NX25
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ALPHAZ1 then
            if bAltVersion then
                iCost = 1595000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_ALPHAZ1 >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_TRADE_PRICE_ALPHAZ1
                    end
                end
            else
                iCost = math.floor((1595000 * 1.0) * ((100.0+(33 * 1.0))/100.0) + 0.5)
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_ALPHAZ1 >= 0 then
                        iCost = g_sMPTunables.iSMUG_VEHICLES_BUY_IT_NOW_PRICE_ALPHAZ1
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CYCLONE then
            iCost = 1890000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iSMUG_VEHICLES_CARS_TRADE_PRICE_COIL_CYCLONE >= 0 then
                    iCost = g_sMPTunables.iSMUG_VEHICLES_CARS_TRADE_PRICE_COIL_CYCLONE
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.VISIONE then
            iCost = 2250000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iSMUG_VEHICLES_CARS_TRADE_PRICE_GROTTI_VISIONE >= 0 then
                    iCost = g_sMPTunables.iSMUG_VEHICLES_CARS_TRADE_PRICE_GROTTI_VISIONE
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.VIGILANTE then
            iCost = 3750000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iSMUG_VEHICLES_CARS_TRADE_PRICE_GROTTI_VIGILANTE >= 0 then
                    iCost = g_sMPTunables.iSMUG_VEHICLES_CARS_TRADE_PRICE_GROTTI_VIGILANTE
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.RETINUE then
            iCost = 615000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iSMUG_VEHICLES_CARS_TRADE_PRICE_VAPID_RETINUE >= 0 then
                    iCost = g_sMPTunables.iSMUG_VEHICLES_CARS_TRADE_PRICE_VAPID_RETINUE
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.RAPIDGT3 then
            iCost = 885000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iSMUG_VEHICLES_CARS_TRADE_PRICE_DEWBAUCHEE_RAPIDGT_CLASSIC >= 0 then
                    iCost = g_sMPTunables.iSMUG_VEHICLES_CARS_TRADE_PRICE_DEWBAUCHEE_RAPIDGT_CLASSIC
                end
            end
        end
        if eVehicleModel == ExtendedM.VehicleHashes.DELUXO then
            if bAltVersion then
                iCost = 3550000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_DELUXO >= 0 then
                        iCost = g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_DELUXO
                    end
                end
            else
                iCost = 4721500
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_BUY_IT_NOW_PRICE_DELUXO >= 0 then
                        iCost = g_sMPTunables.iH2_VEHICLES_BUY_IT_NOW_PRICE_DELUXO
                    end
                end
                iBasePrice = 3550000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_DELUXO >= 0 then
                        iBasePrice = g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_DELUXO
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.STROMBERG then
            if bAltVersion then
                iCost = 2395000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_STROMBERG >= 0 then
                        iCost = g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_STROMBERG
                    end
                end
            else
                iCost = 3185350
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_BUY_IT_NOW_PRICE_STROMBERG >= 0 then
                        iCost = g_sMPTunables.iH2_VEHICLES_BUY_IT_NOW_PRICE_STROMBERG
                    end
                end
                iBasePrice = 2395000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_STROMBERG >= 0 then
                        iBasePrice = g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_STROMBERG
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.RIOT2 then
            if bAltVersion then
                iCost = 2350000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_RCV >= 0 then
                        iCost = g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_RCV
                    end
                end
            else
                iCost = 3125500
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_BUY_IT_NOW_PRICE_RCV >= 0 then
                        iCost = g_sMPTunables.iH2_VEHICLES_BUY_IT_NOW_PRICE_RCV
                    end
                end
                iBasePrice = 2350000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_RCV >= 0 then
                        iBasePrice = g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_RCV
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CHERNOBOG then
            if bAltVersion then
                iCost = 2490000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_CHERNOBOG >= 0 then
                        iCost = g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_CHERNOBOG
                    end
                end
            else
                iCost = 3311700
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_BUY_IT_NOW_PRICE_CHERNOBOG >= 0 then
                        iCost = g_sMPTunables.iH2_VEHICLES_BUY_IT_NOW_PRICE_CHERNOBOG
                    end
                end
                iBasePrice = 2490000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_CHERNOBOG >= 0 then
                        iBasePrice = g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_CHERNOBOG
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.KHANJALI then
            if bAltVersion then
                iCost = 2895000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_KHANJALI >= 0 then
                        iCost = g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_KHANJALI
                    end
                end
            else
                iCost = 3850350
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_BUY_IT_NOW_PRICE_KHANJALI >= 0 then
                        iCost = g_sMPTunables.iH2_VEHICLES_BUY_IT_NOW_PRICE_KHANJALI
                    end
                end
                iBasePrice = 2895000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_KHANJALI >= 0 then
                        iBasePrice = g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_KHANJALI
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.AKULA then
            if bAltVersion then
                iCost = 2785000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_AKULA >= 0 then
                        iCost = g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_AKULA
                    end
                end
            else
                iCost = 3704050
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_BUY_IT_NOW_PRICE_AKULA >= 0 then
                        iCost = g_sMPTunables.iH2_VEHICLES_BUY_IT_NOW_PRICE_AKULA
                    end
                end
                iBasePrice = 2785000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_AKULA >= 0 then
                        iBasePrice = g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_AKULA
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.THRUSTER then
            if bAltVersion then
                iCost = 2750000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_THRUSTER >= 0 then
                        iCost = g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_THRUSTER
                    end
                end
            else
                iCost = 3657500
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_BUY_IT_NOW_PRICE_THRUSTER >= 0 then
                        iCost = g_sMPTunables.iH2_VEHICLES_BUY_IT_NOW_PRICE_THRUSTER
                    end
                end
                iBasePrice = 2750000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_THRUSTER >= 0 then
                        iBasePrice = g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_THRUSTER
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.BARRAGE then
            if bAltVersion then
                iCost = 1595000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_BARRAGE >= 0 then
                        iCost = g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_BARRAGE
                    end
                end
            else
                iCost = 2121350
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_BUY_IT_NOW_PRICE_BARRAGE >= 0 then
                        iCost = g_sMPTunables.iH2_VEHICLES_BUY_IT_NOW_PRICE_BARRAGE
                    end
                end
                iBasePrice = 1595000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_BARRAGE >= 0 then
                        iBasePrice = g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_BARRAGE
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.VOLATOL then
            if bAltVersion then
                iCost = 2800000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_VOLATOL >= 0 then
                        iCost = g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_VOLATOL
                    end
                end
            else
                iCost = 3724000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_BUY_IT_NOW_PRICE_VOLATOL >= 0 then
                        iCost = g_sMPTunables.iH2_VEHICLES_BUY_IT_NOW_PRICE_VOLATOL
                    end
                end
                iBasePrice = 2800000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_VOLATOL >= 0 then
                        iBasePrice = g_sMPTunables.iH2_VEHICLES_TRADE_PRICE_VOLATOL
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.COMET4 then
            iCost = 710000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iH2_VEHICLES_PRICE_COMET_SAFARI >= 0 then
                    iCost = g_sMPTunables.iH2_VEHICLES_PRICE_COMET_SAFARI
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.NEON then
            iCost = 1500000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iH2_VEHICLES_PRICE_NEON >= 0 then
                    iCost = g_sMPTunables.iH2_VEHICLES_PRICE_NEON
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.STREITER then
            iCost = 500000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iH2_VEHICLES_PRICE_STREITER >= 0 then
                    iCost = g_sMPTunables.iH2_VEHICLES_PRICE_STREITER
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.SENTINEL3 then
            if bAltVersion then
                iCost = 487500
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_SENTINAL3 >= 0 then
                        iCost = g_sMPTunables.iCH_TRADE_PRICE_SENTINAL3
                    end
                end
            else
                iCost = 650000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iH2_VEHICLES_PRICE_SENTINEL_CLASSIC >= 0 then
                        iCost = g_sMPTunables.iH2_VEHICLES_PRICE_SENTINEL_CLASSIC
                    end
                end
                iBasePrice = 487500
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_SENTINAL3 >= 0 then
                        iBasePrice = g_sMPTunables.iCH_TRADE_PRICE_SENTINAL3
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.YOSEMITE then
            iCost = 485000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iH2_VEHICLES_PRICE_YOSEMITE >= 0 then
                    iCost = g_sMPTunables.iH2_VEHICLES_PRICE_YOSEMITE
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.SC1 then
            iCost = 1603000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iH2_VEHICLES_PRICE_SC1 >= 0 then
                    iCost = g_sMPTunables.iH2_VEHICLES_PRICE_SC1
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.AUTARCH then
            iCost = 1955000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iH2_VEHICLES_PRICE_AUTARCH >= 0 then
                    iCost = g_sMPTunables.iH2_VEHICLES_PRICE_AUTARCH
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.GT500 then
            iCost = 785000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iH2_VEHICLES_PRICE_GT500 >= 0 then
                    iCost = g_sMPTunables.iH2_VEHICLES_PRICE_GT500
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.HUSTLER then
            iCost = 625000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iH2_VEHICLES_PRICE_HUSTLER >= 0 then
                    iCost = g_sMPTunables.iH2_VEHICLES_PRICE_HUSTLER
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.REVOLTER then
            iCost = 1610000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iH2_VEHICLES_PRICE_REVOLTER >= 0 then
                    iCost = g_sMPTunables.iH2_VEHICLES_PRICE_REVOLTER
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.PARIAH then
            iCost = 1420000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iH2_VEHICLES_PRICE_PARIAH >= 0 then
                    iCost = g_sMPTunables.iH2_VEHICLES_PRICE_PARIAH
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.RAIDEN then
            iCost = 1375000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iH2_VEHICLES_PRICE_RAIDEN >= 0 then
                    iCost = g_sMPTunables.iH2_VEHICLES_PRICE_RAIDEN
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.SAVESTRA then
            iCost = 990000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iH2_VEHICLES_PRICE_SAVESTRA >= 0 then
                    iCost = g_sMPTunables.iH2_VEHICLES_PRICE_SAVESTRA
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.RIATA then
            iCost = 380000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iH2_VEHICLES_PRICE_RIATA >= 0 then
                    iCost = g_sMPTunables.iH2_VEHICLES_PRICE_RIATA
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.HERMES then
            iCost = 535000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iH2_VEHICLES_PRICE_HERMES >= 0 then
                    iCost = g_sMPTunables.iH2_VEHICLES_PRICE_HERMES
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.COMET5 then
            iCost = 1145000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iH2_VEHICLES_PRICE_COMET_GT >= 0 then
                    iCost = g_sMPTunables.iH2_VEHICLES_PRICE_COMET_GT
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.Z190 then
            iCost = 900000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iH2_VEHICLES_PRICE_190Z >= 0 then
                    iCost = g_sMPTunables.iH2_VEHICLES_PRICE_190Z
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.VISERIS then
            iCost = 875000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iH2_VEHICLES_PRICE_VISERIS >= 0 then
                    iCost = g_sMPTunables.iH2_VEHICLES_PRICE_VISERIS
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.KAMACHO then
            iCost = 345000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iH2_VEHICLES_PRICE_KAMACHO >= 0 then
                    iCost = g_sMPTunables.iH2_VEHICLES_PRICE_KAMACHO
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.GB200 then
            iCost = 940000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iASSAULT_VEHICLES_VAPID_GB200 >= 0 then
                    iCost = g_sMPTunables.iASSAULT_VEHICLES_VAPID_GB200
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.FAGALOA then
            iCost = 335000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iASSAULT_VEHICLES_VULCAR_FAGALOA >= 0 then
                    iCost = g_sMPTunables.iASSAULT_VEHICLES_VULCAR_FAGALOA
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ELLIE then
            if bAltVersion then
                iCost = 423750
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_ELLIE >= 0 then
                        iCost = g_sMPTunables.iCH_TRADE_PRICE_ELLIE
                    end
                end
            else
                iCost = 565000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iASSAULT_VEHICLES_VAPID_ELLIE >= 0 then
                        iCost = g_sMPTunables.iASSAULT_VEHICLES_VAPID_ELLIE
                    end
                end
                iBasePrice = 423750
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_ELLIE >= 0 then
                        iBasePrice = g_sMPTunables.iCH_TRADE_PRICE_ELLIE
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ISSI3 then
            iCost = 360000
            if bNetwork_isGameInProgress and g_sMPTunables.iASSAULT_VEHICLES_WEENY_ISSI_CLASSIC >= 0 then
                iCost = g_sMPTunables.iASSAULT_VEHICLES_WEENY_ISSI_CLASSIC
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = math.floor((360000 * 1.0)*0.75 + 0.5)
                if bNetwork_isGameInProgress and g_sMPTunables.iAW_TRADE_PRICE_ISSI >= 0 then
                    iCost = g_sMPTunables.iAW_TRADE_PRICE_ISSI
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.MICHELLI then
            iCost = 1225000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iASSAULT_VEHICLES_LAMPADATI_MICHELLI_GT >= 0 then
                    iCost = g_sMPTunables.iASSAULT_VEHICLES_LAMPADATI_MICHELLI_GT
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.FLASHGT then
            iCost = 1675000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iASSAULT_VEHICLES_VAPID_FLASH_GT >= 0 then
                    iCost = g_sMPTunables.iASSAULT_VEHICLES_VAPID_FLASH_GT
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.HOTRING then
            iCost = 830000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iASSAULT_VEHICLES_DECLASSE_HOTRING_SABRE >= 0 then
                    iCost = g_sMPTunables.iASSAULT_VEHICLES_DECLASSE_HOTRING_SABRE
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TEZERACT then
            iCost = 2825000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iASSAULT_VEHICLES_PEGASSI_TEZERACT >= 0 then
                    iCost = g_sMPTunables.iASSAULT_VEHICLES_PEGASSI_TEZERACT
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TYRANT then
            iCost = 2515000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iASSAULT_VEHICLES_OVERFLOD_TYRANT >= 0 then
                    iCost = g_sMPTunables.iASSAULT_VEHICLES_OVERFLOD_TYRANT
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.DOMINATOR3 then
            iCost = 725000
            if bNetwork_isGameInProgress and g_sMPTunables.iASSAULT_VEHICLES_VAPID_DOMINATOR_GTX >= 0 then
                iCost = g_sMPTunables.iASSAULT_VEHICLES_VAPID_DOMINATOR_GTX
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = math.floor((725000 * 1.0)*0.75 + 0.5)
                -- if bNetwork_isGameInProgress
                -- and g_sMPtunables.iASSAULT_VEHICLES_VAPID_DOMINATOR_GTX >= 0
                -- iCost = g_sMPTunables.iASSAULT_VEHICLES_VAPID_DOMINATOR_GTX
                -- ENDIF
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TAIPAN then
            iCost = 1980000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iASSAULT_VEHICLES_CHEVAL_TAIPAN >= 0 then
                    iCost = g_sMPTunables.iASSAULT_VEHICLES_CHEVAL_TAIPAN
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ENTITY2 then
            iCost = 2305000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iASSAULT_VEHICLES_OVERFLOD_ENTITY_XXR >= 0 then
                    iCost = g_sMPTunables.iASSAULT_VEHICLES_OVERFLOD_ENTITY_XXR
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.JESTER3 then
            iCost = 790000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iASSAULT_VEHICLES_DINKA_JESTER_CLASSIC >= 0 then
                    iCost = g_sMPTunables.iASSAULT_VEHICLES_DINKA_JESTER_CLASSIC
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CHEBUREK then
            iCost = 145000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iASSAULT_VEHICLES_VULCAR_CHEBUREK >= 0 then
                    iCost = g_sMPTunables.iASSAULT_VEHICLES_VULCAR_CHEBUREK
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CARACARA then
            iCost = 1775000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iASSAULT_VEHICLES_VAPID_CARACARA >= 0 then
                    iCost = g_sMPTunables.iASSAULT_VEHICLES_VAPID_CARACARA
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.SEASPARROW then
            iCost = 1815000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iASSAULT_VEHICLES_SEA_SPARROW >= 0 then
                    iCost = g_sMPTunables.iASSAULT_VEHICLES_SEA_SPARROW
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TERBYTE then
            if not bAltVersion then
                iCost = 1375000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBB_BENEFACTOR_TERRORBYTE >= 0 then
                        iCost = g_sMPTunables.iBB_BENEFACTOR_TERRORBYTE
                    end
                end
            else
                iCost = 0
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.MULE4 then
            if bAltVersion then
                iCost = 72000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBB_TRADE_PRICE_WEAPONIZED_VEHICLES_MAIBATSU_MULE_CUSTOM >= 0 then
                        iCost = g_sMPTunables.iBB_TRADE_PRICE_WEAPONIZED_VEHICLES_MAIBATSU_MULE_CUSTOM
                    end
                end
            else
                iCost = 95760
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_MAIBATSU_MULE_CUSTOM >= 0 then
                        iCost = g_sMPTunables.iBB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_MAIBATSU_MULE_CUSTOM
                    end
                end
                iBasePrice = 72000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBB_TRADE_PRICE_WEAPONIZED_VEHICLES_MAIBATSU_MULE_CUSTOM >= 0 then
                        iBasePrice = g_sMPTunables.iBB_TRADE_PRICE_WEAPONIZED_VEHICLES_MAIBATSU_MULE_CUSTOM
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.POUNDER2 then
            if bAltVersion then
                iCost = 241000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBB_TRADE_PRICE_WEAPONIZED_VEHICLES_MTL_POUNDER_CUSTOM >= 0 then
                        iCost = g_sMPTunables.iBB_TRADE_PRICE_WEAPONIZED_VEHICLES_MTL_POUNDER_CUSTOM
                    end
                end
            else
                iCost = 320530
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_MTL_POUNDER_CUSTOM >= 0 then
                        iCost = g_sMPTunables.iBB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_MTL_POUNDER_CUSTOM
                    end
                end
                iBasePrice = 241000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBB_TRADE_PRICE_WEAPONIZED_VEHICLES_MTL_POUNDER_CUSTOM >= 0 then
                        iBasePrice = g_sMPTunables.iBB_TRADE_PRICE_WEAPONIZED_VEHICLES_MTL_POUNDER_CUSTOM
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.SWINGER then
            iCost = 909000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iBB_TRADE_PRICE_HIGH_END_VEHICLES_OCELOT_SWINGER >= 0 then
                    iCost = g_sMPTunables.iBB_TRADE_PRICE_HIGH_END_VEHICLES_OCELOT_SWINGER
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.MENACER then
            iCost = 1775000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iBB_TRADE_PRICE_WEAPONIZED_VEHICLES_PEGASSI_HVY_MENACER >= 0 then
                    iCost = g_sMPTunables.iBB_TRADE_PRICE_WEAPONIZED_VEHICLES_PEGASSI_HVY_MENACER
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.SCRAMJET then
            iCost = 3480000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iBB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_DECLASSE_SCRAMJET >= 0 then
                    iCost = g_sMPTunables.iBB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_DECLASSE_SCRAMJET
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.STRIKEFORCE then
            iCost = 3800000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iBB_TRADE_PRICE_WEAPONIZED_VEHICLES_B_11_STRIKEFORCE >= 0 then
                    iCost = g_sMPTunables.iBB_TRADE_PRICE_WEAPONIZED_VEHICLES_B_11_STRIKEFORCE
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.OPPRESSOR2 then
            if bAltVersion then
                iCost = 2925000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBB_TRADE_PRICE_WEAPONIZED_VEHICLES_PEGASSI_OPPRESSOR_MK_II >= 0 then
                        iCost = g_sMPTunables.iBB_TRADE_PRICE_WEAPONIZED_VEHICLES_PEGASSI_OPPRESSOR_MK_II
                    end
                end
            else
                iCost = 3890250
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_PEGASSI_OPPRESSOR_MK_II >= 0 then
                        iCost = g_sMPTunables.iBB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_PEGASSI_OPPRESSOR_MK_II
                    end
                end
                iBasePrice = 2925000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBB_TRADE_PRICE_WEAPONIZED_VEHICLES_PEGASSI_OPPRESSOR_MK_II >= 0 then
                        iBasePrice = g_sMPTunables.iBB_TRADE_PRICE_WEAPONIZED_VEHICLES_PEGASSI_OPPRESSOR_MK_II
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.PATRIOT2 then
            if bAltVersion then
                iCost = 460000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBB_TRADE_PRICE_HIGH_END_VEHICLES_MAMMOTH_PATRIOT_STRETCH >= 0 then
                        iCost = g_sMPTunables.iBB_TRADE_PRICE_HIGH_END_VEHICLES_MAMMOTH_PATRIOT_STRETCH
                    end
                end
            else
                iCost = 611800
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBB_BUY_IT_NOW_PRICE_HIGH_END_VEHICLES_MAMMOTH_PATRIOT_STRETCH >= 0 then
                        iCost = g_sMPTunables.iBB_BUY_IT_NOW_PRICE_HIGH_END_VEHICLES_MAMMOTH_PATRIOT_STRETCH
                    end
                end
                iBasePrice = 460000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBB_TRADE_PRICE_HIGH_END_VEHICLES_MAMMOTH_PATRIOT_STRETCH >= 0 then
                        iBasePrice = g_sMPTunables.iBB_TRADE_PRICE_HIGH_END_VEHICLES_MAMMOTH_PATRIOT_STRETCH
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.STAFFORD then
            iCost = 1272000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iBB_TRADE_PRICE_HIGH_END_VEHICLES_ENUS_STAFFORD >= 0 then
                    iCost = g_sMPTunables.iBB_TRADE_PRICE_HIGH_END_VEHICLES_ENUS_STAFFORD
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.FREECRAWLER then
            iCost = 597000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iBB_TRADE_PRICE_HIGH_END_VEHICLES_CANIS_FREECRAWLER >= 0 then
                    iCost = g_sMPTunables.iBB_TRADE_PRICE_HIGH_END_VEHICLES_CANIS_FREECRAWLER
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.BLIMP3 then
            if bAltVersion then
                iCost = 895000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBB_TRADE_PRICE_MISC_VEHICLES_BLIMP >= 0 then
                        iCost = g_sMPTunables.iBB_TRADE_PRICE_MISC_VEHICLES_BLIMP
                    end
                end
            else
                iCost = 1190350
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP >= 0 then
                        iCost = g_sMPTunables.iBB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP
                    end
                end
                iBasePrice = 895000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBB_TRADE_PRICE_MISC_VEHICLES_BLIMP >= 0 then
                        iBasePrice = g_sMPTunables.iBB_TRADE_PRICE_MISC_VEHICLES_BLIMP
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.PBUS2 then
            if bAltVersion then
                iCost = 1385000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBB_TRADE_PRICE_MISC_VEHICLES_FESTIVAL_BUS >= 0 then
                        iCost = g_sMPTunables.iBB_TRADE_PRICE_MISC_VEHICLES_FESTIVAL_BUS
                    end
                end
            else
                iCost = 1842050
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBB_BUY_IT_NOW_PRICE_MISC_VEHICLES_FESTIVAL_BUS >= 0 then
                        iCost = g_sMPTunables.iBB_BUY_IT_NOW_PRICE_MISC_VEHICLES_FESTIVAL_BUS
                    end
                end
                iBasePrice = 1385000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iBB_TRADE_PRICE_MISC_VEHICLES_FESTIVAL_BUS >= 0 then
                        iBasePrice = g_sMPTunables.iBB_TRADE_PRICE_MISC_VEHICLES_FESTIVAL_BUS
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CERBERUS then
            iCost = 3870300
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_BUY_IT_NOW_PRICE_APOCALYPSE_CERBERUS >= 0 then
                iCost = g_sMPTunables.iAW_BUY_IT_NOW_PRICE_APOCALYPSE_CERBERUS
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 2910000
                if bNetwork_isGameInProgress and g_sMPtunables.iAW_TRADE_PRICE_APOCALYPSE_CERBERUS >= 0 then
                    iCost = g_sMPTunables.iAW_TRADE_PRICE_APOCALYPSE_CERBERUS
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CERBERUS2 then
            iCost = 3870300
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_BUY_IT_NOW_PRICE_SCIFI_CERBERUS >= 0 then
                iCost = g_sMPTunables.iAW_BUY_IT_NOW_PRICE_SCIFI_CERBERUS
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 2910000
                if bNetwork_isGameInProgress and g_sMPtunables.iAW_TRADE_PRICE_SCIFI_CERBERUS >= 0 then
                    iCost = g_sMPTunables.iAW_TRADE_PRICE_SCIFI_CERBERUS
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CERBERUS3 then
            iCost = 3870300
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_BUY_IT_NOW_PRICE_CONSUMERISM_CERBERUS >= 0 then
                iCost = g_sMPTunables.iAW_BUY_IT_NOW_PRICE_CONSUMERISM_CERBERUS
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 2910000
                if bNetwork_isGameInProgress and g_sMPtunables.iAW_TRADE_PRICE_CONSUMERISM_CERBERUS >= 0 then
                    iCost = g_sMPTunables.iAW_TRADE_PRICE_CONSUMERISM_CERBERUS
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.BRUTUS then
            iCost = 2666650
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_BUY_IT_NOW_PRICE_APOCALYPSE_BRUTUS >= 0 then
                iCost = g_sMPTunables.iAW_BUY_IT_NOW_PRICE_APOCALYPSE_BRUTUS
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 2005000
                if bNetwork_isGameInProgress and g_sMPtunables.iAW_TRADE_PRICE_APOCALYPSE_BRUTUS >= 0 then
                    iCost = g_sMPTunables.iAW_TRADE_PRICE_APOCALYPSE_BRUTUS
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.BRUTUS2 then
            iCost = 2666650
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_BUY_IT_NOW_PRICE_SCIFI_BRUTUS >= 0 then
                iCost = g_sMPTunables.iAW_BUY_IT_NOW_PRICE_SCIFI_BRUTUS
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 2005000
                if bNetwork_isGameInProgress and g_sMPtunables.iAW_TRADE_PRICE_SCIFI_BRUTUS >= 0 then
                    iCost = g_sMPTunables.iAW_TRADE_PRICE_SCIFI_BRUTUS
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.BRUTUS3 then
            iCost = 2666650
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_BUY_IT_NOW_PRICE_CONSUMERISM_BRUTUS >= 0 then
                iCost = g_sMPTunables.iAW_BUY_IT_NOW_PRICE_CONSUMERISM_BRUTUS
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 2005000
                if bNetwork_isGameInProgress and g_sMPtunables.iAW_TRADE_PRICE_CONSUMERISM_BRUTUS >= 0 then
                    iCost = g_sMPTunables.iAW_TRADE_PRICE_CONSUMERISM_BRUTUS
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.SCARAB then
            iCost = 3076290
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_BUY_IT_NOW_PRICE_APOCALYPSE_SCARAB >= 0 then
                iCost = g_sMPTunables.iAW_BUY_IT_NOW_PRICE_APOCALYPSE_SCARAB
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 2313000
                if bNetwork_isGameInProgress and g_sMPtunables.iAW_TRADE_PRICE_APOCALYPSE_SCARAB >= 0 then
                    iCost = g_sMPTunables.iAW_TRADE_PRICE_APOCALYPSE_SCARAB
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.SCARAB2 then
            iCost = 3076290
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_BUY_IT_NOW_PRICE_SCIFI_SCARAB >= 0 then
                iCost = g_sMPTunables.iAW_BUY_IT_NOW_PRICE_SCIFI_SCARAB
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 2313000
                if bNetwork_isGameInProgress and g_sMPtunables.iAW_TRADE_PRICE_SCIFI_SCARAB >= 0 then
                    iCost = g_sMPTunables.iAW_TRADE_PRICE_SCIFI_SCARAB
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.SCARAB3 then
            iCost = 3076290
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_BUY_IT_NOW_PRICE_CONSUMERISM_SCARAB >= 0 then
                iCost = g_sMPTunables.iAW_BUY_IT_NOW_PRICE_CONSUMERISM_SCARAB
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 2313000
                if bNetwork_isGameInProgress and g_sMPtunables.iAW_TRADE_PRICE_CONSUMERISM_SCARAB >= 0 then
                    iCost = g_sMPTunables.iAW_TRADE_PRICE_CONSUMERISM_SCARAB
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.IMPERATOR then
            iCost = 2284940
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_BUY_IT_NOW_PRICE_APOCALYPSE_IMPERATOR >= 0 then
                iCost = g_sMPTunables.iAW_BUY_IT_NOW_PRICE_APOCALYPSE_IMPERATOR
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1718000
                if bNetwork_isGameInProgress and g_sMPtunables.iAW_TRADE_PRICE_APOCALYPSE_IMPERATOR >= 0 then
                    iCost = g_sMPTunables.iAW_TRADE_PRICE_APOCALYPSE_IMPERATOR
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.IMPERATOR2 then
            iCost = 2284940
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_BUY_IT_NOW_PRICE_SCIFI_IMPERATOR >= 0 then
                iCost = g_sMPTunables.iAW_BUY_IT_NOW_PRICE_SCIFI_IMPERATOR
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1718000
                if bNetwork_isGameInProgress and g_sMPtunables.iAW_TRADE_PRICE_SCIFI_IMPERATOR >= 0 then
                    iCost = g_sMPTunables.iAW_TRADE_PRICE_SCIFI_IMPERATOR
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.IMPERATOR3 then
            iCost = 2284940
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_BUY_IT_NOW_PRICE_CONSUMERISM_IMPERATOR >= 0 then
                iCost = g_sMPTunables.iAW_BUY_IT_NOW_PRICE_CONSUMERISM_IMPERATOR
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1718000
                if bNetwork_isGameInProgress and g_sMPtunables.iAW_TRADE_PRICE_CONSUMERISM_IMPERATOR >= 0 then
                    iCost = g_sMPTunables.iAW_TRADE_PRICE_CONSUMERISM_IMPERATOR
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ZR380 then
            iCost = 2138640
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_BUY_IT_NOW_PRICE_APOCALYPSE_ZR380 >= 0 then
                iCost = g_sMPTunables.iAW_BUY_IT_NOW_PRICE_APOCALYPSE_ZR380
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1608000
                if bNetwork_isGameInProgress and g_sMPtunables.iAW_TRADE_PRICE_APOCALYPSE_ZR380 >= 0 then
                    iCost = g_sMPTunables.iAW_TRADE_PRICE_APOCALYPSE_ZR380
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ZR3802 then
            iCost = 2138640
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_BUY_IT_NOW_PRICE_SCIFI_ZR380 >= 0 then
                iCost = g_sMPTunables.iAW_BUY_IT_NOW_PRICE_SCIFI_ZR380
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1608000
                if bNetwork_isGameInProgress and g_sMPtunables.iAW_TRADE_PRICE_SCIFI_ZR380 >= 0 then
                    iCost = g_sMPTunables.iAW_TRADE_PRICE_SCIFI_ZR380
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ZR3803 then
            iCost = 2138640
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_BUY_IT_NOW_PRICE_CONSUMERISM_ZR380 >= 0 then
                iCost = g_sMPTunables.iAW_BUY_IT_NOW_PRICE_CONSUMERISM_ZR380
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1608000
                if bNetwork_isGameInProgress and g_sMPtunables.iAW_TRADE_PRICE_CONSUMERISM_ZR380 >= 0 then
                    iCost = g_sMPTunables.iAW_TRADE_PRICE_CONSUMERISM_ZR380
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.IMPALER then
            iCost = 331835
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_BUY_IT_NOW_PRICE_IMPALER >= 0 then
                iCost = g_sMPTunables.iAW_BUY_IT_NOW_PRICE_IMPALER
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 249500
                if bNetwork_isGameInProgress and g_sMPTunables.iAW_TRADE_PRICE_IMPALER >= 0 then
                    iCost = g_sMPTunables.iAW_TRADE_PRICE_IMPALER
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.VAMOS then
            iCost = 596000
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_SALE_PRICE_VAMOS >= 0 then
                iCost = g_sMPTunables.iAW_SALE_PRICE_VAMOS
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TULIP then
            iCost = 718000
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_SALE_PRICE_TULIP >= 0 then
                iCost = g_sMPTunables.iAW_SALE_PRICE_TULIP
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.DEVESTE then
            iCost = 1795000
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_SALE_PRICE_DEVESTE >= 0 then
                iCost = g_sMPTunables.iAW_SALE_PRICE_DEVESTE
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.SCHLAGEN then
            iCost = 1300000
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_SALE_PRICE_SCHLAGEN >= 0 then
                iCost = g_sMPTunables.iAW_SALE_PRICE_SCHLAGEN
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TOROS then
            iCost = 498000
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_SALE_PRICE_TOROS >= 0 then
                iCost = g_sMPTunables.iAW_SALE_PRICE_TOROS
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.DEVIANT then
            iCost = 512000
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_SALE_PRICE_DEVIANT >= 0 then
                iCost = g_sMPTunables.iAW_SALE_PRICE_DEVIANT
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CLIQUE then
            iCost = 909000
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_SALE_PRICE_CLIQUE >= 0 then
                iCost = g_sMPTunables.iAW_SALE_PRICE_CLIQUE
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ITALIGTO then
            iCost = 1965000
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_SALE_PRICE_GTO >= 0 then
                iCost = g_sMPTunables.iAW_SALE_PRICE_GTO
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.RCBANDITO then
            iCost = 1590000
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_SALE_PRICE_BANDITO >= 0 then
                iCost = g_sMPTunables.iAW_SALE_PRICE_BANDITO
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.BLISTA3 then
            iCost = 0
            -- if bNetwork_isGameInProgress
            -- and g_sMPTunables.iTRADE_PRICE_VEHICLES_BLISTA3 >= 0
            -- iCost = g_sMPTunables.iTRADE_PRICE_VEHICLES_BLISTA3
            -- ENDIF
        elseif eVehicleModel == ExtendedM.VehicleHashes.SLAMVAN4 then
            iCost = 0
            -- if bNetwork_isGameInProgress
            -- and g_sMPTunables.iTRADE_PRICE_VEHICLES_SLAMVAN4 >= 0
            -- iCost = g_sMPTunables.iTRADE_PRICE_VEHICLES_BLISTA3
            -- ENDIF
        elseif (ExtendedM.VehicleHashes.SLAMVAN5 ~= 1) and (eVehicleModel == ExtendedM.VehicleHashes.SLAMVAN5) then
            iCost = 100000
            -- if bNetwork_isGameInProgress
            -- and g_sMPTunables.iTRADE_PRICE_VEHICLES_SLAMVAN5 >= 0
            -- iCost = g_sMPTunables.iTRADE_PRICE_VEHICLES_SLAMVAN5
            -- ENDIF
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.THRAX then
            iCost = 2325000
            if ExtendedM.VehicleHashes.SLAMVAN5 ~= 1 and (bNetwork_isGameInProgress) and g_sMPTunables.iVC_SALE_PRICE_THRAX >= 0 then
                iCost = g_sMPTunables.iVC_SALE_PRICE_THRAX
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.DRAFTER then
            iCost = 718000
            if bNetwork_isGameInProgress and g_sMPTunables.iVC_SALE_PRICE_DRAFTER_8F >= 0 then
                iCost = g_sMPTunables.iVC_SALE_PRICE_DRAFTER_8F
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.LOCUST then
            iCost = 1625000
            if bNetwork_isGameInProgress and g_sMPTunables.iVC_SALE_PRICE_LOCUST >= 0 then
                iCost = g_sMPTunables.iVC_SALE_PRICE_LOCUST
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.NOVAK then
            iCost = 608000
            if bNetwork_isGameInProgress and g_sMPTunables.iVC_SALE_PRICE_NOVAK >= 0 then
                iCost = g_sMPTunables.iVC_SALE_PRICE_NOVAK
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ZORRUSSO then
            iCost = 1925000
            if bNetwork_isGameInProgress and g_sMPTunables.iVC_SALE_PRICE_ZORRUSSO >= 0 then
                iCost = g_sMPTunables.iVC_SALE_PRICE_ZORRUSSO
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.GAUNTLET3 then
            if bAltVersion then
                iCost = 461250
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_GAUNTLET3 >= 0 then
                        iCost = g_sMPTunables.iCH_TRADE_PRICE_GAUNTLET3
                    end
                end
            else
                iCost = 615000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iVC_SALE_PRICE_GAUNTLET_CLASSIC >= 0 then
                        iCost = g_sMPTunables.iVC_SALE_PRICE_GAUNTLET_CLASSIC
                    end
                end
                iBasePrice = 461250
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_GAUNTLET3 >= 0 then
                        iBasePrice = g_sMPTunables.iCH_TRADE_PRICE_GAUNTLET3
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ISSI7 then
            iCost = 897000
            if bNetwork_isGameInProgress and g_sMPTunables.iVC_SALE_UPGRADE_PRICE_ISSI_CUSTOM >= 0 then
                iCost = g_sMPTunables.iVC_SALE_UPGRADE_PRICE_ISSI_CUSTOM
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ZION3 then
            iCost = 812000
            if bNetwork_isGameInProgress and g_sMPTunables.iVC_SALE_PRICE_ZION_CLASSIC >= 0 then
                iCost = g_sMPTunables.iVC_SALE_PRICE_ZION_CLASSIC
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.NEBULA then
            iCost = 797000
            if bNetwork_isGameInProgress and g_sMPTunables.iVC_SALE_PRICE_NEBULA >= 0 then
                iCost = g_sMPTunables.iVC_SALE_PRICE_NEBULA
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.HELLION then
            iCost = 835000
            if bNetwork_isGameInProgress and g_sMPTunables.iVC_SALE_PRICE_HELLION >= 0 then
                iCost = g_sMPTunables.iVC_SALE_PRICE_HELLION
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.DYNASTY then
            iCost = 450000
            if bNetwork_isGameInProgress and g_sMPTunables.iVC_SALE_PRICE_DYNASTY >= 0 then
                iCost = g_sMPTunables.iVC_SALE_PRICE_DYNASTY
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.RROCKET then
            iCost = 925000
            if bNetwork_isGameInProgress and g_sMPTunables.iVC_SALE_PRICE_RAMPANT_ROCKET >= 0 then
                iCost = g_sMPTunables.iVC_SALE_PRICE_RAMPANT_ROCKET
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.PEYOTE2 then
            iCost = 805000
            if bNetwork_isGameInProgress and g_sMPTunables.iVC_SALE_PRICE_GASSER >= 0 then
                iCost = g_sMPTunables.iVC_SALE_PRICE_GASSER
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.GAUNTLET4 then
            iCost = 745000
            if bNetwork_isGameInProgress and g_sMPTunables.iVC_SALE_PRICE_GAUNTLET >= 0 then
                iCost = g_sMPTunables.iVC_SALE_PRICE_GAUNTLET
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CARACARA2 then
            iCost = 875000
            if bNetwork_isGameInProgress and g_sMPTunables.iVC_SALE_PRICE_CARACARA_4X4 >= 0 then
                iCost = g_sMPTunables.iVC_SALE_PRICE_CARACARA_4X4
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.JUGULAR then
            if bAltVersion then
                iCost = 918750
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_JUGULAR >= 0 then
                        iCost = g_sMPTunables.iCH_TRADE_PRICE_JUGULAR
                    end
                end
            else
                iCost = 1225000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iVC_SALE_PRICE_JUGULAR >= 0 then
                        iCost = g_sMPTunables.iVC_SALE_PRICE_JUGULAR
                    end
                end
                iBasePrice = 918750
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_JUGULAR >= 0 then
                        iBasePrice = g_sMPTunables.iCH_TRADE_PRICE_JUGULAR
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.S80 then
            iCost = 2575000
            if bNetwork_isGameInProgress and g_sMPTunables.iVC_SALE_PRICE_S80RR >= 0 then
                iCost = g_sMPTunables.iVC_SALE_PRICE_S80RR
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.KRIEGER then
            iCost = 2875000
            if bNetwork_isGameInProgress and g_sMPTunables.iVC_SALE_PRICE_KRIEGER >= 0 then
                iCost = g_sMPTunables.iVC_SALE_PRICE_KRIEGER
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.EMERUS then
            iCost = 2750000
            if bNetwork_isGameInProgress and g_sMPTunables.iVC_SALE_PRICE_EMERUS >= 0 then
                iCost = g_sMPTunables.iVC_SALE_PRICE_EMERUS
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.NEO then
            iCost = 1875000
            if bNetwork_isGameInProgress and g_sMPTunables.iVC_SALE_PRICE_NEO >= 0 then
                iCost = g_sMPTunables.iVC_SALE_PRICE_NEO
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.PARAGON then
            iCost = 905000
            if bNetwork_isGameInProgress and g_sMPTunables.iVC_SALE_PRICE_PARAGON >= 0 then
                iCost = g_sMPTunables.iVC_SALE_PRICE_PARAGON
            end
        end
        
        -- Casino Heist pack
        if eVehicleModel == ExtendedM.VehicleHashes.ASBO then
            if bAltVersion then
                iCost = 306000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_ASBO >= 0 then
                        iCost = g_sMPTunables.iCH_TRADE_PRICE_ASBO
                    end
                end
            else
                iCost = 408000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_BIN_PRICE_ASBO >= 0 then
                        iCost = g_sMPTunables.iCH_BIN_PRICE_ASBO
                    end
                end
                iBasePrice = 306000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_ASBO >= 0 then
                        iBasePrice = g_sMPTunables.iCH_TRADE_PRICE_ASBO
                    end
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.KANJO then
            if bAltVersion then
                iCost = 435000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_KANJO >= 0 then
                        iCost = g_sMPTunables.iCH_TRADE_PRICE_KANJO
                    end
                end
            else
                iCost = 580000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_BIN_PRICE_KANJO >= 0 then
                        iCost = g_sMPTunables.iCH_BIN_PRICE_KANJO
                    end
                end
                iBasePrice = 435000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_KANJO >= 0 then
                        iBasePrice = g_sMPTunables.iCH_TRADE_PRICE_KANJO
                    end
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.EVERON then
            if bAltVersion then
                iCost = 1106250
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_EVERON >= 0 then
                        iCost = g_sMPTunables.iCH_TRADE_PRICE_EVERON
                    end
                end
            else
                iCost = 1475000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_BIN_PRICE_EVERON >= 0 then
                        iCost = g_sMPTunables.iCH_BIN_PRICE_EVERON
                    end
                end
                iBasePrice = 1106250
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_EVERON >= 0 then
                        iBasePrice = g_sMPTunables.iCH_TRADE_PRICE_EVERON
                    end
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.RETINUE2 then
            if bAltVersion then
                iCost = 1215000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_RETINUE2 >= 0 then
                        iCost = g_sMPTunables.iCH_TRADE_PRICE_RETINUE2
                    end
                end
            else
                iCost = 1620000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_BIN_PRICE_RETINUE2 >= 0 then
                        iCost = g_sMPTunables.iCH_BIN_PRICE_RETINUE2
                    end
                end
                iBasePrice = 1215000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_RETINUE2 >= 0 then
                        iBasePrice = g_sMPTunables.iCH_TRADE_PRICE_RETINUE2
                    end
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.YOSEMITE2 then
            if bAltVersion then
                iCost = 981000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_YOSEMITE2 >= 0 then
                        iCost = g_sMPTunables.iCH_TRADE_PRICE_YOSEMITE2
                    end
                end
            else
                iCost = 1308000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_BIN_PRICE_YOSEMITE2 >= 0 then
                        iCost = g_sMPTunables.iCH_BIN_PRICE_YOSEMITE2
                    end
                end
                iBasePrice = 981000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_YOSEMITE2 >= 0 then
                        iBasePrice = g_sMPTunables.iCH_TRADE_PRICE_YOSEMITE2
                    end
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.SUGOI then
            if bAltVersion then
                iCost = 918000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_SUGOI >= 0 then
                        iCost = g_sMPTunables.iCH_TRADE_PRICE_SUGOI
                    end
                end
            else
                iCost = 1224000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_BIN_PRICE_SUGOI >= 0 then
                        iCost = g_sMPTunables.iCH_BIN_PRICE_SUGOI
                    end
                end
                iBasePrice = 918000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_SUGOI >= 0 then
                        iBasePrice = g_sMPTunables.iCH_TRADE_PRICE_SUGOI
                    end
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.SULTAN2 then
            if bAltVersion then
                iCost = 1288500
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_SULTAN2 >= 0 then
                        iCost = g_sMPTunables.iCH_TRADE_PRICE_SULTAN2
                    end
                end
            else
                iCost = 1718000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_BIN_PRICE_SULTAN2 >= 0 then
                        iCost = g_sMPTunables.iCH_BIN_PRICE_SULTAN2
                    end
                end
                iBasePrice = 1288500
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_SULTAN2 >= 0 then
                        iBasePrice = g_sMPTunables.iCH_TRADE_PRICE_SULTAN2
                    end
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.OUTLAW then
            if bAltVersion then
                iCost = 951000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_OUTLAW >= 0 then
                        iCost = g_sMPTunables.iCH_TRADE_PRICE_OUTLAW
                    end
                end
            else
                iCost = 1268000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_BIN_PRICE_OUTLAW >= 0 then
                        iCost = g_sMPTunables.iCH_BIN_PRICE_OUTLAW
                    end
                end
                iBasePrice = 951000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_OUTLAW >= 0 then
                        iBasePrice = g_sMPTunables.iCH_TRADE_PRICE_OUTLAW
                    end
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.VAGRANT then
            if bAltVersion then
                iCost = 1660500
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_VAGRANT >= 0 then
                        iCost = g_sMPTunables.iCH_TRADE_PRICE_VAGRANT
                    end
                end
            else
                iCost = 2214000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_BIN_PRICE_VAGRANT >= 0 then
                        iCost = g_sMPTunables.iCH_BIN_PRICE_VAGRANT
                    end
                end
                iBasePrice = 1660500
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_VAGRANT >= 0 then
                        iBasePrice = g_sMPTunables.iCH_TRADE_PRICE_VAGRANT
                    end
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.KOMODA then
            if bAltVersion then
                iCost = 1275000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_KOMODA >= 0 then
                        iCost = g_sMPTunables.iCH_TRADE_PRICE_KOMODA
                    end
                end
            else
                iCost = 1700000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_BIN_PRICE_KOMODA >= 0 then
                        iCost = g_sMPTunables.iCH_BIN_PRICE_KOMODA
                    end
                end
                iBasePrice = 1275000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_KOMODA >= 0 then
                        iBasePrice = g_sMPTunables.iCH_TRADE_PRICE_KOMODA
                    end
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.STRYDER then
            if bAltVersion then
                iCost = 502500
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_STRYDER >= 0 then
                        iCost = g_sMPTunables.iCH_TRADE_PRICE_STRYDER
                    end
                end
            else
                iCost = 670000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_BIN_PRICE_STRYDER >= 0 then
                        iCost = g_sMPTunables.iCH_BIN_PRICE_STRYDER
                    end
                end
                iBasePrice = 502500
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_STRYDER >= 0 then
                        iBasePrice = g_sMPTunables.iCH_TRADE_PRICE_STRYDER
                    end
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.FURIA then
            if bAltVersion then
                iCost = 2055000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_FURIA >= 0 then
                        iCost = g_sMPTunables.iCH_TRADE_PRICE_FURIA
                    end
                end
            else
                iCost = 2740000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_BIN_PRICE_FURIA >= 0 then
                        iCost = g_sMPTunables.iCH_BIN_PRICE_FURIA
                    end
                end
                iBasePrice = 2055000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_FURIA >= 0 then
                        iBasePrice = g_sMPTunables.iCH_TRADE_PRICE_FURIA
                    end
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.ZHABA then
            if bAltVersion then
                iCost = 1800000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_ZHABA >= 0 then
                        iCost = g_sMPTunables.iCH_TRADE_PRICE_ZHABA
                    end
                end
            else
                iCost = 2400000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_BIN_PRICE_ZHABA >= 0 then
                        iCost = g_sMPTunables.iCH_BIN_PRICE_ZHABA
                    end
                end
                iBasePrice = 1800000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCH_TRADE_PRICE_ZHABA >= 0 then
                        iBasePrice = g_sMPTunables.iCH_TRADE_PRICE_ZHABA
                    end
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.JB7002 then
            iCost = 1470000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iCH_TRADE_PRICE_JB7002 >= 0 then
                    iCost = g_sMPTunables.iCH_TRADE_PRICE_JB7002
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.MINITANK then
            iCost = 2275000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iCH_SALE_PRICE_MINITANK >= 0 then
                    iCost = g_sMPTunables.iCH_SALE_PRICE_MINITANK
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.FORMULA then
            iCost = 3515000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iCH_TRADE_PRICE_FORMULA >= 0 then
                    iCost = g_sMPTunables.iCH_TRADE_PRICE_FORMULA
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.FORMULA2 then
            iCost = 3115000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iCH_TRADE_PRICE_FORMULA2 >= 0 then
                    iCost = g_sMPTunables.iCH_TRADE_PRICE_FORMULA2
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.IMORGON then
            iCost = 2165000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iCH_SALE_PRICE_IMORGEN >= 0 then
                    iCost = g_sMPTunables.iCH_SALE_PRICE_IMORGEN
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.REBLA then
            iCost = 1175000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iCH_SALE_PRICE_REBLA >= 0 then
                    iCost = g_sMPTunables.iCH_SALE_PRICE_REBLA
                end
            end
            
        elseif eVehicleModel == ExtendedM.VehicleHashes.VSTR then
            iCost = 1285000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iCH_SALE_PRICE_VSTR >= 0 then
                    iCost = g_sMPTunables.iCH_SALE_PRICE_VSTR
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_COPS_N_CROOKS == 1) and (eVehicleModel == ExtendedM.VehicleHashes.SURFER3) then
            if bAltVersion then
                iCost = 667500
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCNC_TRADE_PRICE_SURFER3 >= 0 then
                        iCost = g_sMPTunables.iCNC_TRADE_PRICE_SURFER3
                    end
                end
            else
                iCost = 890000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCNC_BIN_PRICE_SURFER3 >= 0 then
                        iCost = g_sMPTunables.iCNC_BIN_PRICE_SURFER3
                    end
                end
                iBasePrice = 667500
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iCNC_TRADE_PRICE_SURFER3 >= 0 then
                        iBasePrice = g_sMPTunables.iCNC_TRADE_PRICE_SURFER3
                    end
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TIGON then
            iCost = 2310000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iSUM_SALE_PRICE_TIGON >= 0 then
                    iCost = g_sMPTunables.iSUM_SALE_PRICE_TIGON
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.OPENWHEEL1 then
            iCost = 3400000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iSUM_SALE_PRICE_OPENWHEEL1 >= 0 then
                    iCost = g_sMPTunables.iSUM_SALE_PRICE_OPENWHEEL1
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.OPENWHEEL2 then
            iCost = 2997000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iSUM_SALE_PRICE_OPENWHEEL2 >= 0 then
                    iCost = g_sMPTunables.iSUM_SALE_PRICE_OPENWHEEL2
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.COQUETTE4 then
            iCost = 1510000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iSUM_SALE_PRICE_COQUETTE4 >= 0 then
                    iCost = g_sMPTunables.iSUM_SALE_PRICE_COQUETTE4
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.PEYOTE3 then
            iCost = 620000
            if bNetwork_isGameInProgress then
                iCost = g_sMPTunables.iSUM_SALE_PRICE_PEYOTE + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel)
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.YOSEMITE3 then
            iCost = 700000
            if bNetwork_isGameInProgress then
                iCost = g_sMPTunables.iH2_VEHICLES_PRICE_YOSEMITE + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel)
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.GAUNTLET5 then
            iCost = 815000
            if bNetwork_isGameInProgress then
                iCost = g_sMPTunables.iVC_SALE_PRICE_GAUNTLET_CLASSIC + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel)
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.LANDSTALKER2 then
            iCost = 1220000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iSUM_SALE_PRICE_LANDSTALKER2 >= 0 then
                    iCost = g_sMPTunables.iSUM_SALE_PRICE_LANDSTALKER2
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.GLENDALE2 then
            iCost = 520000
            if bNetwork_isGameInProgress then
                iCost = g_sMPTunables.iDLC_hipster_modifier_Benefactor_Glendale + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel)
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CLUB then
            iCost = 1280000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iSUM_SALE_PRICE_CLUB >= 0 then
                    iCost = g_sMPTunables.iSUM_SALE_PRICE_CLUB
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.DUKES3 then
            iCost = 378000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iSUM_SALE_PRICE_DUKES3 >= 0 then
                    iCost = g_sMPTunables.iSUM_SALE_PRICE_DUKES3
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.YOUGA3 then
            iCost = 1288000
            if bNetwork_isGameInProgress then
                iCost = g_sMPtunables.iWEBSITE_VAPID_YOUGA_CLASSIC + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel)
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.MANANA2 then
            iCost = 925000
            if bNetwork_isGameInProgress then
                iCost = g_sMPTunables.iSUM_SALE_PRICE_MANANA + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel)
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.PENUMBRA2 then
            iCost = 1380000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iSUM_SALE_PRICE_PENUMBRA2 >= 0 then
                    iCost = g_sMPTunables.iSUM_SALE_PRICE_PENUMBRA2
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.SEMINOLE2 then
            iCost = 678000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iSUM_SALE_PRICE_SEMINOLE2 >= 0 then
                    iCost = g_sMPTunables.iSUM_SALE_PRICE_SEMINOLE2
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.MANCHEZ2 then
            iCost = 225000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iIH_BIN_PRICE_MANCHEZ2 >= 0 then
                    iCost = g_sMPTunables.iIH_BIN_PRICE_MANCHEZ2
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.VERUS then
            iCost = 192000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iIH_BIN_PRICE_VERUS >= 0 then
                    iCost = g_sMPTunables.iIH_BIN_PRICE_VERUS
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.VETO then
            iCost = 895000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iIH_BIN_PRICE_VETO >= 0 then
                    iCost = g_sMPTunables.iIH_BIN_PRICE_VETO
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.VETO2 then
            iCost = 995000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iIH_BIN_PRICE_VETO2 >= 0 then
                    iCost = g_sMPTunables.iIH_BIN_PRICE_VETO2
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.SLAMTRUCK then
            iCost = 1310000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iIH_BIN_PRICE_SLAMTRUCK >= 0 then
                    iCost = g_sMPTunables.iIH_BIN_PRICE_SLAMTRUCK
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TOREADOR then
            iCost = 3660000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iIH_BIN_PRICE_TOREADOR >= 0 then
                    iCost = g_sMPTunables.iIH_BIN_PRICE_TOREADOR
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.DINGHY5 then
            iCost = 1850000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iIH_BIN_PRICE_DINGHY5 >= 0 then
                    iCost = g_sMPTunables.iIH_BIN_PRICE_DINGHY5
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.SQUADDIE then
            iCost = 1130000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iIH_BIN_PRICE_SQUADDIE >= 0 then
                    iCost = g_sMPTunables.iIH_BIN_PRICE_SQUADDIE
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.WINKY then
            iCost = 1100000
            if bNetwork_isGameInProgress and g_sMPTunables.iIH_BIN_PRICE_WINKY>= 0 then
                iCost = g_sMPTunables.iIH_BIN_PRICE_WINKY
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 825000
                if bNetwork_isGameInProgress and g_sMPTunables.iIH_TRADE_PRICE_WINKY >= 0 then
                    iCost = g_sMPTunables.iIH_TRADE_PRICE_WINKY
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ANNIHILATOR2 then
            iCost = 3870000
            if bNetwork_isGameInProgress and g_sMPTunables.iIH_BIN_PRICE_ANNIHILATOR2>= 0 then
                iCost = g_sMPTunables.iIH_BIN_PRICE_ANNIHILATOR2
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 2902500
                if bNetwork_isGameInProgress and g_sMPTunables.iIH_TRADE_PRICE_ANNIHILATOR2 >= 0 then
                    iCost = g_sMPTunables.iIH_TRADE_PRICE_ANNIHILATOR2
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ALKONOST then
            iCost = 4350000
            if bNetwork_isGameInProgress and g_sMPTunables.iIH_BIN_PRICE_ALKONOST>= 0 then
                iCost = g_sMPTunables.iIH_BIN_PRICE_ALKONOST
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 3262500
                if bNetwork_isGameInProgress and g_sMPTunables.iIH_TRADE_PRICE_ALKONOST >= 0 then
                    iCost = g_sMPTunables.iIH_TRADE_PRICE_ALKONOST
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.BRIOSO2 then
            iCost = 610000
            if bNetwork_isGameInProgress and g_sMPTunables.iIH_BIN_PRICE_BRIOSO2>= 0 then
                iCost = g_sMPTunables.iIH_BIN_PRICE_BRIOSO2
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 457500
                if bNetwork_isGameInProgress and g_sMPTunables.iIH_TRADE_PRICE_BRIOSO2 >= 0 then
                    iCost = g_sMPTunables.iIH_TRADE_PRICE_BRIOSO2
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.WEEVIL then
            iCost = 870000
            if bNetwork_isGameInProgress and g_sMPTunables.iIH_BIN_PRICE_WEEVIL>= 0 then
                iCost = g_sMPTunables.iIH_BIN_PRICE_WEEVIL
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 652500
                if bNetwork_isGameInProgress and g_sMPTunables.iIH_TRADE_PRICE_WEEVIL >= 0 then
                    iCost = g_sMPTunables.iIH_TRADE_PRICE_WEEVIL
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ITALIRSX then
            iCost = 3465000
            if bNetwork_isGameInProgress and g_sMPTunables.iIH_BIN_PRICE_ITALIRSX>= 0 then
                iCost = g_sMPTunables.iIH_BIN_PRICE_ITALIRSX
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 2598750
                if bNetwork_isGameInProgress and g_sMPTunables.iIH_TRADE_PRICE_ITALIRSX >= 0 then
                    iCost = g_sMPTunables.iIH_TRADE_PRICE_ITALIRSX
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.LONGFIN then
            iCost = 2125000
            if bNetwork_isGameInProgress and g_sMPTunables.iIH_BIN_PRICE_LONGFIN>= 0 then
                iCost = g_sMPTunables.iIH_BIN_PRICE_LONGFIN
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1593750
                if bNetwork_isGameInProgress and g_sMPTunables.iIH_TRADE_PRICE_LONGFIN >= 0 then
                    iCost = g_sMPTunables.iIH_TRADE_PRICE_LONGFIN
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.VETIR then
            iCost = 1630000
            if bNetwork_isGameInProgress and g_sMPTunables.iIH_BIN_PRICE_VETIR>= 0 then
                iCost = g_sMPTunables.iIH_BIN_PRICE_VETIR
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1222500
                if bNetwork_isGameInProgress and g_sMPTunables.iIH_TRADE_PRICE_VETIR >= 0 then
                    iCost = g_sMPTunables.iIH_TRADE_PRICE_VETIR
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.PATROLBOAT then
            iCost = 2955000
            if bNetwork_isGameInProgress and g_sMPTunables.iIH_BIN_PRICE_PATROLBOAT>= 0 then
                iCost = g_sMPTunables.iIH_BIN_PRICE_PATROLBOAT
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 2216250
                if bNetwork_isGameInProgress and g_sMPTunables.iIH_TRADE_PRICE_PATROLBOAT >= 0 then
                    iCost = g_sMPTunables.iIH_TRADE_PRICE_PATROLBOAT
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.KOSATKA then
            if not bAltVersion then
                iCost = 2200000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iIH_SUB_SALE_KOSATKA >= 0 then
                        iCost = g_sMPTunables.iIH_SUB_SALE_KOSATKA
                    end
                end
            else
                iCost = 2200000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iIH_SUB_BASE_KOSATKA >= 0 then
                        iCost = g_sMPTunables.iIH_SUB_BASE_KOSATKA
                    end
                end
                
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CALICO then
            iCost = 1995000
            if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_BIN_PRICE_CALICO>= 0 then
                iCost = g_sMPTunables.iTUNER_BIN_PRICE_CALICO
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1496250
                if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_TRADE_PRICE_CALICO >= 0 then
                    iCost = g_sMPTunables.iTUNER_TRADE_PRICE_CALICO
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.COMET6 then
            iCost = 1878000
            if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_BIN_PRICE_COMET6>= 0 then
                iCost = g_sMPTunables.iTUNER_BIN_PRICE_COMET6
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1408500
                if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_TRADE_PRICE_COMET6 >= 0 then
                    iCost = g_sMPTunables.iTUNER_TRADE_PRICE_COMET6
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CYPHER then
            iCost = 1550000
            if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_BIN_PRICE_CYPHER>= 0 then
                iCost = g_sMPTunables.iTUNER_BIN_PRICE_CYPHER
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1162500
                if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_TRADE_PRICE_CYPHER >= 0 then
                    iCost = g_sMPTunables.iTUNER_TRADE_PRICE_CYPHER
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.DOMINATOR7 then
            iCost = 1775000
            if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_BIN_PRICE_DOMINATOR7>= 0 then
                iCost = g_sMPTunables.iTUNER_BIN_PRICE_DOMINATOR7
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1331250
                if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_TRADE_PRICE_DOMINATOR7 >= 0 then
                    iCost = g_sMPTunables.iTUNER_TRADE_PRICE_DOMINATOR7
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.JESTER4 then
            iCost = 1970000
            if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_BIN_PRICE_JESTER4>= 0 then
                iCost = g_sMPTunables.iTUNER_BIN_PRICE_JESTER4
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1477500
                if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_TRADE_PRICE_JESTER4 >= 0 then
                    iCost = g_sMPTunables.iTUNER_TRADE_PRICE_JESTER4
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.REMUS then
            iCost = 1370000
            if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_BIN_PRICE_REMUS>= 0 then
                iCost = g_sMPTunables.iTUNER_BIN_PRICE_REMUS
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1027500
                if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_TRADE_PRICE_REMUS >= 0 then
                    iCost = g_sMPTunables.iTUNER_TRADE_PRICE_REMUS
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.VECTRE then
            iCost = 1785000
            if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_BIN_PRICE_VECTRE>= 0 then
                iCost = g_sMPTunables.iTUNER_BIN_PRICE_VECTRE
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1338750
                if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_TRADE_PRICE_VECTRE >= 0 then
                    iCost = g_sMPTunables.iTUNER_TRADE_PRICE_VECTRE
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.ZR350 then
            iCost = 1615000
            if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_BIN_PRICE_ZR350>= 0 then
                iCost = g_sMPTunables.iTUNER_BIN_PRICE_ZR350
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1211250
                if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_TRADE_PRICE_ZR350 >= 0 then
                    iCost = g_sMPTunables.iTUNER_TRADE_PRICE_ZR350
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.WARRENER2 then
            iCost = 1260000
            if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_BIN_PRICE_WARRENER2>= 0 then
                iCost = g_sMPTunables.iTUNER_BIN_PRICE_WARRENER2
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 945000
                if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_TRADE_PRICE_WARRENER2 >= 0 then
                    iCost = g_sMPTunables.iTUNER_TRADE_PRICE_WARRENER2
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.RT3000 then
            iCost = 1715000
            if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_BIN_PRICE_RT3000>= 0 then
                iCost = g_sMPTunables.iTUNER_BIN_PRICE_RT3000
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1286250
                if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_TRADE_PRICE_RT3000 >= 0 then
                    iCost = g_sMPTunables.iTUNER_TRADE_PRICE_RT3000
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.FUTO2 then
            iCost = 1590000
            if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_BIN_PRICE_FUTO2>= 0 then
                iCost = g_sMPTunables.iTUNER_BIN_PRICE_FUTO2
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1192500
                if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_TRADE_PRICE_FUTO2 >= 0 then
                    iCost = g_sMPTunables.iTUNER_TRADE_PRICE_FUTO2
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.TAILGATER2 then
            iCost = 1495000
            if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_BIN_PRICE_TAILGATER2>= 0 then
                iCost = g_sMPTunables.iTUNER_BIN_PRICE_TAILGATER2
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1121250
                if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_TRADE_PRICE_TAILGATER2 >= 0 then
                    iCost = g_sMPTunables.iTUNER_TRADE_PRICE_TAILGATER2
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.SULTAN3 then
            iCost = 1789000
            if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_BIN_PRICE_SULTAN3>= 0 then
                iCost = g_sMPTunables.iTUNER_BIN_PRICE_SULTAN3
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1341750
                if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_TRADE_PRICE_SULTAN3 >= 0 then
                    iCost = g_sMPTunables.iTUNER_TRADE_PRICE_SULTAN3
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.DOMINATOR8 then
            iCost = 1220000
            if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_BIN_PRICE_DOMINATOR8>= 0 then
                iCost = g_sMPTunables.iTUNER_BIN_PRICE_DOMINATOR8
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 915000
                if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_TRADE_PRICE_DOMINATOR8 >= 0 then
                    iCost = g_sMPTunables.iTUNER_TRADE_PRICE_DOMINATOR8
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.EUROS then
            iCost = 1800000
            if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_BIN_PRICE_EUROS>= 0 then
                iCost = g_sMPTunables.iTUNER_BIN_PRICE_EUROS
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1350000
                if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_TRADE_PRICE_EUROS >= 0 then
                    iCost = g_sMPTunables.iTUNER_TRADE_PRICE_EUROS
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.GROWLER then
            iCost = 1627000
            if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_BIN_PRICE_GROWLER>= 0 then
                iCost = g_sMPTunables.iTUNER_BIN_PRICE_GROWLER
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1220250
                if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_TRADE_PRICE_GROWLER >= 0 then
                    iCost = g_sMPTunables.iTUNER_TRADE_PRICE_GROWLER
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.PREVION then
            iCost = 1490000
            if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_BIN_PRICE_PREVION>= 0 then
                iCost = g_sMPTunables.iTUNER_BIN_PRICE_PREVION
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1117500
                if bNetwork_isGameInProgress and g_sMPTunables.iTUNER_TRADE_PRICE_PREVION >= 0 then
                    iCost = g_sMPTunables.iTUNER_TRADE_PRICE_PREVION
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_GEN9_EXCLUSIVE == 1) and (eVehicleModel == ExtendedM.VehicleHashes.S95) then
            iCost = 1995000
            if ((ExtendedM.Config.Features.FEATURE_GEN9_EXCLUSIVE == 1) == 1) and (bNetwork_isGameInProgress) then
                iCost = 1995000
                if g_sMPTunables.iGEN9_SALE_PRICE_S95 >= 0 then
                    iCost = g_sMPTunables.iGEN9_SALE_PRICE_S95
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_GEN9_EXCLUSIVE == 1) and (eVehicleModel == ExtendedM.VehicleHashes.ARBITERGT) then
            iCost = 1580000
            if bNetwork_isGameInProgress then
                iCost = 1580000
                if g_sMPTunables.iGEN9_SALE_PRICE_ARBITERGT >= 0 then
                    iCost = g_sMPTunables.iGEN9_SALE_PRICE_ARBITERGT
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_GEN9_EXCLUSIVE == 1) and (eVehicleModel == ExtendedM.VehicleHashes.ASTRON2) then
            iCost = 1720000
            if bNetwork_isGameInProgress then
                iCost = 1720000
                if g_sMPTunables.iGEN9_SALE_PRICE_ASTRON2 >= 0 then
                    iCost = g_sMPTunables.iGEN9_SALE_PRICE_ASTRON2
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_GEN9_EXCLUSIVE == 1) and (eVehicleModel == ExtendedM.VehicleHashes.CYCLONE2) then
            iCost = 2250000
            if bNetwork_isGameInProgress then
                iCost = 2250000
                if g_sMPTunables.iGEN9_SALE_PRICE_CYCLONE2 >= 0 then
                    iCost = g_sMPTunables.iGEN9_SALE_PRICE_CYCLONE2
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_GEN9_EXCLUSIVE == 1) and (eVehicleModel == ExtendedM.VehicleHashes.IGNUS2) then
            iCost = 3245000
            if bNetwork_isGameInProgress then
                iCost = 3245000
                if g_sMPTunables.iGEN9_SALE_PRICE_IGNUS2 >= 0 then
                    iCost = g_sMPTunables.iGEN9_SALE_PRICE_IGNUS2
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_FIXER == 1) and (eVehicleModel == ExtendedM.VehicleHashes.ASTRON) then
            iCost = 1580000
            if ((ExtendedM.Config.Features.FEATURE_FIXER == 1) == 1) and (bNetwork_isGameInProgress) then
                if g_sMPTunables.iFIXER_BIN_PRICE_ASTRON >= 0 then
                    iCost = g_sMPTunables.iFIXER_BIN_PRICE_ASTRON
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_FIXER == 1) and (eVehicleModel == ExtendedM.VehicleHashes.BALLER7) then
            iCost = 890000
            if bNetwork_isGameInProgress and g_sMPTunables.iFIXER_BIN_PRICE_BALLER7 >= 0 then
                iCost = g_sMPTunables.iFIXER_BIN_PRICE_BALLER7
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 667500
                if bNetwork_isGameInProgress and g_sMPTunables.iFIXER_TRADE_PRICE_BALLER7 >= 0 then
                    iCost = g_sMPTunables.iFIXER_TRADE_PRICE_BALLER7
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_FIXER == 1) and (eVehicleModel == ExtendedM.VehicleHashes.BUFFALO4) then
            iCost = 2150000
            if bNetwork_isGameInProgress and g_sMPTunables.iFIXER_BIN_PRICE_BUFFALO4 >= 0 then
                iCost = g_sMPTunables.iFIXER_BIN_PRICE_BUFFALO4
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1612500
                if bNetwork_isGameInProgress and g_sMPTunables.iFIXER_TRADE_PRICE_BUFFALO4 >= 0 then
                    iCost = g_sMPTunables.iFIXER_TRADE_PRICE_BUFFALO4
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_FIXER == 1) and (eVehicleModel == ExtendedM.VehicleHashes.COMET7) then
            iCost = 1797000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iFIXER_BIN_PRICE_COMET7 >= 0 then
                    iCost = g_sMPTunables.iFIXER_BIN_PRICE_COMET7
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_FIXER == 1) and (eVehicleModel == ExtendedM.VehicleHashes.CINQUEMILA) then
            iCost = 1740000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iFIXER_BIN_PRICE_CINQUEMILA >= 0 then
                    iCost = g_sMPTunables.iFIXER_BIN_PRICE_CINQUEMILA
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_FIXER == 1) and (eVehicleModel == ExtendedM.VehicleHashes.DEITY) then
            iCost = 1845000
            if bNetwork_isGameInProgress and g_sMPTunables.iFIXER_BIN_PRICE_DEITY >= 0 then
                iCost = g_sMPTunables.iFIXER_BIN_PRICE_DEITY
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1383750
                if bNetwork_isGameInProgress and g_sMPTunables.iFIXER_TRADE_PRICE_DEITY >= 0 then
                    iCost = g_sMPTunables.iFIXER_TRADE_PRICE_DEITY
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_FIXER == 1) and (eVehicleModel == ExtendedM.VehicleHashes.GRANGER2) then
            iCost = 1380000
            if bNetwork_isGameInProgress and g_sMPTunables.iFIXER_BIN_PRICE_GRANGER2 >= 0 then
                iCost = g_sMPTunables.iFIXER_BIN_PRICE_GRANGER2
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1035000
                if bNetwork_isGameInProgress and g_sMPTunables.iFIXER_TRADE_PRICE_GRANGER2 >= 0 then
                    iCost = g_sMPTunables.iFIXER_TRADE_PRICE_GRANGER2
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_FIXER == 1) and (eVehicleModel == ExtendedM.VehicleHashes.IGNUS) then
            iCost = 2765000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iFIXER_BIN_PRICE_IGNUS >= 0 then
                    iCost = g_sMPTunables.iFIXER_BIN_PRICE_IGNUS
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_FIXER == 1) and (eVehicleModel == ExtendedM.VehicleHashes.JUBILEE) then
            iCost = 1650000
            if bNetwork_isGameInProgress and g_sMPTunables.iFIXER_BIN_PRICE_JUBILEE >= 0 then
                iCost = g_sMPTunables.iFIXER_BIN_PRICE_JUBILEE
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1237500
                if bNetwork_isGameInProgress and g_sMPTunables.iFIXER_TRADE_PRICE_JUBILEE >= 0 then
                    iCost = g_sMPTunables.iFIXER_TRADE_PRICE_JUBILEE
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_FIXER == 1) and (eVehicleModel == ExtendedM.VehicleHashes.PATRIOT3) then
            iCost = 1710000
            if bNetwork_isGameInProgress and g_sMPTunables.iFIXER_BIN_PRICE_PATRIOT3 >= 0 then
                iCost = g_sMPTunables.iFIXER_BIN_PRICE_PATRIOT3
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1282500
                if bNetwork_isGameInProgress and g_sMPTunables.iFIXER_TRADE_PRICE_PATRIOT3 >= 0 then
                    iCost = g_sMPTunables.iFIXER_TRADE_PRICE_PATRIOT3
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_FIXER == 1) and (eVehicleModel == ExtendedM.VehicleHashes.CHAMPION) then
            iCost = 2995000
            if bNetwork_isGameInProgress and g_sMPTunables.iFIXER_BIN_PRICE_CHAMPION >= 0 then
                iCost = g_sMPTunables.iFIXER_BIN_PRICE_CHAMPION
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 2246250
                if bNetwork_isGameInProgress and g_sMPTunables.iFIXER_TRADE_PRICE_CHAMPION >= 0 then
                    iCost = g_sMPTunables.iFIXER_TRADE_PRICE_CHAMPION
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_FIXER == 1) and (eVehicleModel == ExtendedM.VehicleHashes.REEVER) then
            iCost = 1900000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iFIXER_BIN_PRICE_REEVER >= 0 then
                    iCost = g_sMPTunables.iFIXER_BIN_PRICE_REEVER
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_FIXER == 1) and (eVehicleModel == ExtendedM.VehicleHashes.SHINOBI) then
            iCost = 2480500
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iFIXER_BIN_PRICE_SHINOBI >= 0 then
                    iCost = g_sMPTunables.iFIXER_BIN_PRICE_SHINOBI
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_FIXER == 1) and (eVehicleModel == ExtendedM.VehicleHashes.ZENO) then
            iCost = 2820000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iFIXER_BIN_PRICE_ZENO >= 0 then
                    iCost = g_sMPTunables.iFIXER_BIN_PRICE_ZENO
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_DLC_1_2022 == 1) and (eVehicleModel == ExtendedM.VehicleHashes.CORSITA) then
            iCost = 1795000
            if ((ExtendedM.Config.Features.FEATURE_DLC_1_2022 == 1) == 1) and (bNetwork_isGameInProgress) and g_sMPTunables.iSU22_BIN_PRICE_CORSITA >= 0 then
                iCost = g_sMPTunables.iSU22_BIN_PRICE_CORSITA
            end
        elseif (ExtendedM.Config.Features.FEATURE_DLC_1_2022 == 1) and (eVehicleModel == ExtendedM.VehicleHashes.DRAUGUR) then
            iCost = 1870000
            if bNetwork_isGameInProgress and g_sMPTunables.iSU22_BIN_PRICE_DRAUGUR >= 0 then
                iCost = g_sMPTunables.iSU22_BIN_PRICE_DRAUGUR
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1402500
                if bNetwork_isGameInProgress and g_sMPTunables.iSU22_TRADE_PRICE_DRAUGUR >= 0 then
                    iCost = g_sMPTunables.iSU22_TRADE_PRICE_DRAUGUR
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_DLC_1_2022 == 1) and (eVehicleModel == ExtendedM.VehicleHashes.GREENWOOD) then
            iCost = 1465000
            if bNetwork_isGameInProgress and g_sMPTunables.iSU22_BIN_PRICE_GREENWOOD >= 0 then
                iCost = g_sMPTunables.iSU22_BIN_PRICE_GREENWOOD
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1098750
                if bNetwork_isGameInProgress and g_sMPTunables.iSU22_TRADE_PRICE_GREENWOOD >= 0 then
                    iCost = g_sMPTunables.iSU22_TRADE_PRICE_GREENWOOD
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_DLC_1_2022 == 1) and (eVehicleModel == ExtendedM.VehicleHashes.KANJOSJ) then
            iCost = 1370000
            if bNetwork_isGameInProgress and g_sMPTunables.iSU22_BIN_PRICE_KANJOSJ >= 0 then
                iCost = g_sMPTunables.iSU22_BIN_PRICE_KANJOSJ
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1027500
                if bNetwork_isGameInProgress and g_sMPTunables.iSU22_TRADE_PRICE_KANJOSJ >= 0 then
                    iCost = g_sMPTunables.iSU22_TRADE_PRICE_KANJOSJ
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_DLC_1_2022 == 1) and (eVehicleModel == ExtendedM.VehicleHashes.LM87) then
            iCost = 2915000
            if bNetwork_isGameInProgress and g_sMPTunables.iSU22_BIN_PRICE_LM87 >= 0 then
                iCost = g_sMPTunables.iSU22_BIN_PRICE_LM87
            end
        elseif (ExtendedM.Config.Features.FEATURE_DLC_1_2022 == 1) and (eVehicleModel == ExtendedM.VehicleHashes.POSTLUDE) then
            iCost = 1310000
            if bNetwork_isGameInProgress and g_sMPTunables.iSU22_BIN_PRICE_POSTLUDE >= 0 then
                iCost = g_sMPTunables.iSU22_BIN_PRICE_POSTLUDE
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 982500
                if bNetwork_isGameInProgress and g_sMPTunables.iSU22_TRADE_PRICE_POSTLUDE >= 0 then
                    iCost = g_sMPTunables.iSU22_TRADE_PRICE_POSTLUDE
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_DLC_1_2022 == 1) and (eVehicleModel == ExtendedM.VehicleHashes.RHINEHART) then
            iCost = 1598000
            if bNetwork_isGameInProgress and g_sMPTunables.iSU22_BIN_PRICE_RHINEHART >= 0 then
                iCost = g_sMPTunables.iSU22_BIN_PRICE_RHINEHART
            end
        elseif (ExtendedM.Config.Features.FEATURE_DLC_1_2022 == 1) and (eVehicleModel == ExtendedM.VehicleHashes.SM722) then
            iCost = 2115000
            if bNetwork_isGameInProgress and g_sMPTunables.iSU22_BIN_PRICE_SM722 >= 0 then
                iCost = g_sMPTunables.iSU22_BIN_PRICE_SM722
            end
        elseif (ExtendedM.Config.Features.FEATURE_DLC_1_2022 == 1) and (eVehicleModel == ExtendedM.VehicleHashes.TENF) then
            iCost = 1675000
            if bNetwork_isGameInProgress and g_sMPTunables.iSU22_BIN_PRICE_TENF >= 0 then
                iCost = g_sMPTunables.iSU22_BIN_PRICE_TENF
            end
        elseif (ExtendedM.Config.Features.FEATURE_DLC_1_2022 == 1) and (eVehicleModel == ExtendedM.VehicleHashes.TORERO2) then
            iCost = 2890000
            if bNetwork_isGameInProgress and g_sMPTunables.iSU22_BIN_PRICE_TORERO2 >= 0 then
                iCost = g_sMPTunables.iSU22_BIN_PRICE_TORERO2
            end
        elseif (ExtendedM.Config.Features.FEATURE_DLC_1_2022 == 1) and (eVehicleModel == ExtendedM.VehicleHashes.VIGERO2) then
            iCost = 1947000
            if bNetwork_isGameInProgress and g_sMPTunables.iSU22_BIN_PRICE_VIGERO2 >= 0 then
                iCost = g_sMPTunables.iSU22_BIN_PRICE_VIGERO2
            end
        elseif (ExtendedM.Config.Features.FEATURE_DLC_1_2022 == 1) and (eVehicleModel == ExtendedM.VehicleHashes.RUINER4) then
            iCost = 1320000
            if bNetwork_isGameInProgress and g_sMPTunables.iSU22_BIN_PRICE_RUINER4 >= 0 then
                iCost = g_sMPTunables.iSU22_BIN_PRICE_RUINER4
            end
        elseif (ExtendedM.Config.Features.FEATURE_DLC_1_2022 == 1) and (eVehicleModel == ExtendedM.VehicleHashes.CONADA) then
            iCost = 2450000
            if bNetwork_isGameInProgress and g_sMPTunables.iSU22_BIN_PRICE_CONADA >= 0 then
                iCost = g_sMPTunables.iSU22_BIN_PRICE_CONADA
            end
            if bAltVersion then
                iBasePrice = iCost
                iCost = 1837500
                if bNetwork_isGameInProgress and g_sMPTunables.iSU22_TRADE_PRICE_CONADA >= 0 then
                    iCost = g_sMPTunables.iSU22_TRADE_PRICE_CONADA
                end
            end
        elseif (ExtendedM.Config.Features.FEATURE_DLC_1_2022 == 1) and (eVehicleModel == ExtendedM.VehicleHashes.OMNISEGT) then
            iCost = 1795000
            if bNetwork_isGameInProgress and g_sMPTunables.iSU22_BIN_PRICE_OMNISEGT >= 0 then
                iCost = g_sMPTunables.iSU22_BIN_PRICE_OMNISEGT
            end
        elseif (ExtendedM.Config.Features.FEATURE_DLC_1_2022 == 1) and (eVehicleModel == ExtendedM.VehicleHashes.WEEVIL2) then
            iCost = (g_sMPTunables.iIH_TRADE_PRICE_WEEVIL + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
        elseif (ExtendedM.Config.Features.FEATURE_DLC_1_2022 == 1) and (eVehicleModel == ExtendedM.VehicleHashes.TENF2) then
            iCost = (g_sMPTunables.iSU22_BIN_PRICE_TENF + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
        elseif (ExtendedM.Config.Features.FEATURE_DLC_1_2022 == 1) and (eVehicleModel == ExtendedM.VehicleHashes.BRIOSO3) then
            iCost = (g_sMPTunables.iIH_TRADE_PRICE_BRIOSO2 + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
        elseif (ExtendedM.Config.Features.FEATURE_DLC_1_2022 == 1) and (eVehicleModel == ExtendedM.VehicleHashes.SENTINEL4) then
            iCost = (g_sMPTunables.iCH_TRADE_PRICE_SENTINAL3 + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
        end
        
        if ExtendedM.Config.Features.FEATURE_FIXER == 1 then
            if eVehicleModel == ExtendedM.VehicleHashes.IWAGEN then
                iCost = 1720000
                if bNetwork_isGameInProgress then
                    if g_sMPTunables.iFIXER_BIN_PRICE_IWAGEN >= 0 then
                        iCost = g_sMPTunables.iFIXER_BIN_PRICE_IWAGEN
                    end
                end
            end
        end
    end
    
    -- Beach Bum pack
    if eVehicleModel == ExtendedM.VehicleHashes.PARADISE then
        iCost = 50000
        -- Skipped #if ExtendedM.Config.USE_TU_CHANGES inside multi-line condition
        -- Skipped #ENDIF inside multi-line condition
        if bNetwork_isGameInProgress or iForceNetworkPrice == 1 then
            iCost = 25000
            if g_sMPTunables.iDLC_VEHICLE_Bravado_Paradise >= 0 and bNetwork_isGameInProgress then
                iCost = g_sMPTunables.iDLC_VEHICLE_Bravado_Paradise
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.BIFTA then
        iCost = 75000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iDLC_VEHICLE_BF_Bifta >= 0 then
                iCost = g_sMPTunables.iDLC_VEHICLE_BF_Bifta
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.KALAHARI then
        iCost = 40000
        -- Skipped #if ExtendedM.Config.USE_TU_CHANGES inside multi-line condition
        -- Skipped #ENDIF inside multi-line condition
        if bNetwork_isGameInProgress or iForceNetworkPrice == 1 then
            iCost = 40000
            if g_sMPTunables.iDLC_VEHICLE_Canis_Kalahari >= 0 and bNetwork_isGameInProgress then
                iCost = g_sMPTunables.iDLC_VEHICLE_Canis_Kalahari
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.SPEEDER then
        iCost = 325000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iDLC_VEHICLE_Pegassi_Speeder >= 0 then
                iCost = g_sMPTunables.iDLC_VEHICLE_Pegassi_Speeder
            end
        end
        
        -- Valentines pack
    elseif eVehicleModel == ExtendedM.VehicleHashes.BTYPE then
        iCost = 1150000
        -- Skipped #if ExtendedM.Config.USE_TU_CHANGES inside multi-line condition
        -- Skipped #ENDIF inside multi-line condition
        if bNetwork_isGameInProgress or iForceNetworkPrice == 1 then
            iCost = 750000
            if g_sMPTunables.ivalentine_modifier_caddy_sedan >= 0 and bNetwork_isGameInProgress then
                iCost = g_sMPTunables.ivalentine_modifier_caddy_sedan
            end
        end
        
        -- Business pack 1
    elseif eVehicleModel == ExtendedM.VehicleHashes.JESTER then
        iCost = 240000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.ibusiness_vehicles_Jester >= 0 then
                iCost = g_sMPTunables.ibusiness_vehicles_Jester
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.TURISMOR then
        if not bAltVersion then
            iCost = 500000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.ibusiness_vehicles_Turismor >= 0 then
                    iCost = g_sMPTunables.ibusiness_vehicles_Turismor
                end
            end
        else
            iCost = 0
            -- if bNetwork_isGameInProgress
            -- if g_sMPtunables.ibusiness_vehicles_Turismor_FREE >= 0
            -- iCost = g_sMPtunables.ibusiness_vehicles_Turismor_FREE
            -- ENDIF
            -- ENDIF
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.ALPHA then
        iCost = 150000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.ibusiness_vehicles_Alpha >= 0 then
                iCost = g_sMPTunables.ibusiness_vehicles_Alpha
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.VESTRA then
        iCost = 950000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.ibusinessvehiclesVestra >= 0 then
                iCost = g_sMPTunables.ibusinessvehiclesVestra
            end
        end
        
        -- Business pack 2
    elseif eVehicleModel == ExtendedM.VehicleHashes.MASSACRO then
        iCost = 275000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.ibusiness_vehicles_Massacro >= 0 then
                iCost = g_sMPTunables.ibusiness_vehicles_Massacro
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.ZENTORNO then
        iCost = 725000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.ibusiness_vehicles_Zentorno >= 0 then
                iCost = g_sMPTunables.ibusiness_vehicles_Zentorno
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.HUNTLEY then
        if not bAltVersion then
            iCost = 195000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.ibusiness_vehicles_Huntley >= 0 then
                    iCost = g_sMPTunables.ibusiness_vehicles_Huntley
                end
            end
        else
            iCost = 0
            -- if bNetwork_isGameInProgress
            -- if g_sMPtunables.ibusiness_vehicles_Huntley_FREE >= 0
            -- iCost = g_sMPtunables.ibusiness_vehicles_Huntley_FREE
            -- ENDIF
            -- ENDIF
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.THRUST then
        iCost = 75000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iDLC_VEHICLE_Dinka_Thrust >= 0 then
                iCost = g_sMPTunables.iDLC_VEHICLE_Dinka_Thrust
            end
        end
        
        -- Hipster pack
    elseif eVehicleModel == ExtendedM.VehicleHashes.BLADE then
        iCost = 160000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iDLC_hipster_modifier_Vapid_Blade >= 0 then
                iCost = g_sMPTunables.iDLC_hipster_modifier_Vapid_Blade
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.WARRENER then
        iCost = 125000
        -- Skipped #if ExtendedM.Config.USE_TU_CHANGES inside multi-line condition
        -- Skipped #ENDIF inside multi-line condition
        if bNetwork_isGameInProgress or iForceNetworkPrice == 1 then
            iCost = 120000
            if g_sMPTunables.iDLC_hipster_modifier_Vulcar_Warrener >= 0 and bNetwork_isGameInProgress then
                iCost = g_sMPTunables.iDLC_hipster_modifier_Vulcar_Warrener
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.GLENDALE then
        iCost = 200000
        if bNetwork_isGameInProgress and g_sMPTunables.iDLC_hipster_modifier_Benefactor_Glendale >= 0 then
            iCost = g_sMPTunables.iDLC_hipster_modifier_Benefactor_Glendale
        end
        if bAltVersion then
            iBasePrice = iCost
            iCost = math.floor((200000 * 1.0)*0.75 + 0.5)
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_TRADE_PRICE_GLENDALE >= 0 then
                iCost = g_sMPTunables.iAW_TRADE_PRICE_GLENDALE
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.RHAPSODY then
        iCost = 100000
        -- Skipped #if ExtendedM.Config.USE_TU_CHANGES inside multi-line condition
        -- Skipped #ENDIF inside multi-line condition
        if bNetwork_isGameInProgress or iForceNetworkPrice == 1 then
            iCost = 140000
            if g_sMPTunables.iDLC_hipster_modifier_Declasse_Rhapsody >= 0 and bNetwork_isGameInProgress then
                iCost = g_sMPTunables.iDLC_hipster_modifier_Declasse_Rhapsody
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.PANTO then
        iCost = 85000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iDLC_hipster_modifier_Benefactor_Panto >= 0 then
                iCost = g_sMPTunables.iDLC_hipster_modifier_Benefactor_Panto
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.DUBSTA3 then
        iCost = 249000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iDLC_hipster_modifier_Dubsta3 >= 0 then
                iCost = g_sMPTunables.iDLC_hipster_modifier_Dubsta3
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.PIGALLE then
        iCost = 400000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iDLC_hipster_modifier_Vulcar_Pigalle  >= 0 then
                iCost = g_sMPTunables.iDLC_hipster_modifier_Vulcar_Pigalle
            end
        end
        
        -- Pilot School pack
    elseif eVehicleModel == ExtendedM.VehicleHashes.BESRA then
        iCost = 658000
        -- Skipped #if ExtendedM.Config.USE_TU_CHANGES inside multi-line condition
        -- Skipped #ENDIF inside multi-line condition
        if bNetwork_isGameInProgress or iForceNetworkPrice == 1 then
            iCost = 1150000
            if g_sMPTunables.iPs_Western_Besra  >= 0 and bNetwork_isGameInProgress then
                iCost = g_sMPTunables.iPs_Western_Besra
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.MILJET then
        iCost = 1750000
        -- Skipped #if ExtendedM.Config.USE_TU_CHANGES inside multi-line condition
        -- Skipped #ENDIF inside multi-line condition
        if bNetwork_isGameInProgress or iForceNetworkPrice == 1 then
            iCost = 1700000
            if g_sMPTunables.iPs_Buckingham_MilJet  >= 0 and bNetwork_isGameInProgress then
                iCost = g_sMPTunables.iPs_Buckingham_MilJet
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.SWIFT then
        if not bAltVersion then --classic
            iCost = 1500000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iPs_Swift_Livery_1  >= 0 then
                    iCost = g_sMPTunables.iPs_Swift_Livery_1
                end
            end
            else -- flying bravo
            iCost = 1600000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iPs_Swift_Livery_2  >= 0 then
                    iCost = g_sMPTunables.iPs_Swift_Livery_2
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.COQUETTE2 then
        if bAltVersion then --top on
            iCost = 350000
            -- Skipped #if ExtendedM.Config.USE_TU_CHANGES inside multi-line condition
            -- Skipped #ENDIF inside multi-line condition
            if bNetwork_isGameInProgress or iForceNetworkPrice == 1 then
                iCost = 665000
                if g_sMPTunables.iPs_Inverto_Coquette_Classic >= 0 and bNetwork_isGameInProgress then
                    iCost = g_sMPTunables.iPs_Inverto_Coquette_Classic
                end
            end
            else -- topless
            iCost = 395000
            -- Skipped #if ExtendedM.Config.USE_TU_CHANGES inside multi-line condition
            -- Skipped #ENDIF inside multi-line condition
            if bNetwork_isGameInProgress or iForceNetworkPrice == 1 then
                iCost = 665000
                if g_sMPTunables.iPs_Inverto_Coquette_Classic_Topless >= 0 and bNetwork_isGameInProgress then
                    iCost = g_sMPTunables.iPs_Inverto_Coquette_Classic_Topless
                end
            end
        end
        -- this is for ^^#if ExtendedM.Config.Features.FEATURE_PILOT_SCHOOL ^^
        
        -- Independence pack
    elseif eVehicleModel == ExtendedM.VehicleHashes.SOVEREIGN then
        iCost = 120000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iVehicle_IndependenceDay_SOVEREIGN  >= 0 then
                iCost = g_sMPTunables.iVehicle_IndependenceDay_SOVEREIGN
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.MONSTER then
        iCost = 742000
        -- Skipped #if ExtendedM.Config.USE_TU_CHANGES inside multi-line condition
        -- Skipped #ENDIF inside multi-line condition
        if bNetwork_isGameInProgress or iForceNetworkPrice == 1 then
            iCost = 742014
            if g_sMPTunables.iVehicle_IndependenceDay_MONSTER  >= 0 and bNetwork_isGameInProgress then
                iCost = g_sMPTunables.iVehicle_IndependenceDay_MONSTER
            end
        end
        
        -- LTS pack
    elseif eVehicleModel == ExtendedM.VehicleHashes.INNOVATION then
        iCost = 92500
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iLTS_LCC_Innovation >= 0 then
                iCost = g_sMPTunables.iLTS_LCC_Innovation
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.HAKUCHOU then
        iCost = 82000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iLTS_Shitzu_Hakuchou >= 0 then
                iCost = g_sMPTunables.iLTS_Shitzu_Hakuchou
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.FUROREGT then
        iCost = 448000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iLTS_Lampadati_Furore_GT >= 0 then
                iCost = g_sMPTunables.iLTS_Lampadati_Furore_GT
            end
        end
        
        -- Heist pack
    elseif eVehicleModel == ExtendedM.VehicleHashes.BOXVILLE4 then
        if not bAltVersion then
            iCost = 45000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Brute_Boxville >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Brute_Boxville
                end
            end
        else
            iCost = 59850
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Brute_Boxville_BIN_PRICE >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Brute_Boxville_BIN_PRICE
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.CASCO then
        if not bAltVersion then
            iCost = 680000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Lampadati_Casco >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Lampadati_Casco
                end
            end
        else
            iCost = 904400
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Lampadati_Casco_BIN_PRICE >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Lampadati_Casco_BIN_PRICE
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.DINGHY3 then
        if not bAltVersion then
            iCost = 125000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Nagasaki_Dinghy >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Nagasaki_Dinghy
                end
            end
        else
            iCost = 166250
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Nagasaki_Dinghy_BIN_PRICE >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Nagasaki_Dinghy_BIN_PRICE
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.ENDURO then
        iCost = 48000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iVehicles_Heist_Dinka_Enduro >= 0 then
                iCost = g_sMPTunables.iVehicles_Heist_Dinka_Enduro
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.GBURRITO2 then
        if not bAltVersion then
            iCost = 65000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Declasse_Gang_Burrito >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Declasse_Gang_Burrito
                end
            end
        else
            iCost = 86450
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Declasse_Gang_Burrito_BIN_PRICE >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Declasse_Gang_Burrito_BIN_PRICE
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.GUARDIAN then
        iCost = 375000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iVehicles_Heist_Vapid_Guadian >= 0 then
                iCost = g_sMPTunables.iVehicles_Heist_Vapid_Guadian
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.HYDRA then
        if not bAltVersion then
            iCost = 3000000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Mammoth_Hydra >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Mammoth_Hydra
                end
            end
        else
            iCost = 3990000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Mammoth_Hydra_BIN_PRICE >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Mammoth_Hydra_BIN_PRICE
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.INSURGENT then
        if not bAltVersion then
            iCost = 1350000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_HVY_Insurgent_PickUp >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_HVY_Insurgent_PickUp
                end
            end
        else
            iCost = 1795500
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_HVY_Insurgent_PickUp_BIN_PRICE >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_HVY_Insurgent_PickUp_BIN_PRICE
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.INSURGENT2 then
        if not bAltVersion then
            iCost = 675000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_HVY_Insurgent >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_HVY_Insurgent
                end
            end
        else
            iCost = 897750
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_HVY_Insurgent_BIN_PRICE >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_HVY_Insurgent_BIN_PRICE
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.KURUMA then
        if not bAltVersion then
            iCost = 95000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Karin_Kuruma >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Karin_Kuruma
                end
            end
        else
            iCost = 126350
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Karin_Kuruma_BIN_PRICE >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Karin_Kuruma_BIN_PRICE
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.KURUMA2 then
        if not bAltVersion then
            iCost = 525000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Karin_Kuruma_Armored >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Karin_Kuruma_Armored
                end
            end
        else
            iCost = 698250
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Karin_Kuruma_Armored_BIN_PRICE >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Karin_Kuruma_Armored_BIN_PRICE
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.LECTRO then
        if not bAltVersion then
            iCost = 750000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Principe_Lectro >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Principe_Lectro
                end
            end
        else
            iCost = 997500
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Principe_Lectro_BIN_PRICE >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Principe_Lectro_BIN_PRICE
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.PBUS then
        if not bAltVersion then
            iCost = 550000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Pbus >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Pbus
                end
            end
        else
            iCost = 731500
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Pbus_BIN_PRICE >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Pbus_BIN_PRICE
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.MULE3 then
        if not bAltVersion then
            iCost = 32500
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Maibatsu_Mule >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Maibatsu_Mule
                end
            end
        else
            iCost = 43225
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Maibatsu_Mule_BIN_PRICE >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Maibatsu_Mule_BIN_PRICE
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.SAVAGE then
        if not bAltVersion then
            iCost = 1950000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Savage >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Savage
                end
            end
        else
            iCost = 2593500
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Savage_BIN_PRICE >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Savage_BIN_PRICE
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.VALKYRIE then
        if not bAltVersion then
            iCost = 2850000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Buckingham_Valkyrie >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Buckingham_Valkyrie
                end
            end
        else
            iCost = 3790500
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Buckingham_Valkyrie_BIN_PRICE >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Buckingham_Valkyrie_BIN_PRICE
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.TECHNICAL then
        if not bAltVersion then
            iCost = 950000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Karin_Technical >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Karin_Technical
                end
            end
        else
            iCost = 1263500
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Karin_Technical_BIN_PRICE >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Karin_Technical_BIN_PRICE
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.VELUM2 then
        if not bAltVersion then
            iCost = 995000
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Velum >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Velum
                end
            end
        else
            iCost = 1323350
            if bNetwork_isGameInProgress then
                if g_sMPTunables.iVehicles_Heist_Velum_BIN_PRICE >= 0 then
                    iCost = g_sMPTunables.iVehicles_Heist_Velum_BIN_PRICE
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.DODO then
        iCost = 500000
        if bNetwork_isGameInProgress then
            if not bAltVersion then
                if g_sMPTunables.iCGtoNG_Dodo >= 0 then
                    iCost = g_sMPTunables.iCGtoNG_Dodo
                end
            else
                iCost = g_sMPTunables.iRETURNING_PRICE_DODO
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.MARSHALL then
        iCost = 250000
        -- Skipped #if ExtendedM.Config.USE_TU_CHANGES inside multi-line condition
        -- Skipped #ENDIF inside multi-line condition
        if bNetwork_isGameInProgress or iForceNetworkPrice == 1 then
            if not bAltVersion then
                iCost = 500000
                if g_sMPTunables.iCGtoNG_Cheval_Marshall >= 0 and bNetwork_isGameInProgress then
                    iCost = g_sMPTunables.iCGtoNG_Cheval_Marshall
                end
            else
                iCost = g_sMPTunables.iRETURNING_PRICE_MARSHALL
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.SUBMERSIBLE2 then
        iCost = 1325000
        if bNetwork_isGameInProgress then
            if not bAltVersion then
                if g_sMPTunables.iCGtoNG_Submersible >= 0 then
                    iCost = g_sMPTunables.iCGtoNG_Submersible
                end
            else
                iCost = g_sMPTunables.iRETURNING_PRICE_KRAKEN
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.BLISTA2 then
        iCost = 42000
        if bNetwork_isGameInProgress then
            if not bAltVersion then
                if g_sMPTunables.iCGtoNG_Dinka_Blista_Compact >= 0 then
                    iCost = g_sMPTunables.iCGtoNG_Dinka_Blista_Compact
                end
            else
                iCost = g_sMPTunables.iRETURNING_PRICE_BLISTA
            end
            
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.STALION then
        iCost = 71000
        if bNetwork_isGameInProgress then
            if not bAltVersion then
                if g_sMPTunables.iCGtoNG_Declasse_Stallion >= 0 then
                    iCost = g_sMPTunables.iCGtoNG_Declasse_Stallion
                end
            else
                iCost = g_sMPTunables.iRETURNING_PRICE_STALLION
            end
            
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.DUKES then
        iCost = 62000
        if bNetwork_isGameInProgress then
            if not bAltVersion then
                iCost = 62000
                if g_sMPTunables.iCGtoNG_Imponte_Dukes >= 0 then
                    iCost = g_sMPTunables.iCGtoNG_Imponte_Dukes
                end
            else
                iCost = g_sMPTunables.iRETURNING_PRICE_DUKES
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.DUKES2 then
        iCost = 279000
        -- Skipped #if ExtendedM.Config.USE_TU_CHANGES inside multi-line condition
        -- Skipped #ENDIF inside multi-line condition
        if bNetwork_isGameInProgress or iForceNetworkPrice == 1 then
            if not bAltVersion then
                iCost = 665000
                if g_sMPTunables.iCGtoNG_Imponte_Duke_O_Death >= 0 and bNetwork_isGameInProgress then
                    iCost = g_sMPTunables.iCGtoNG_Imponte_Duke_O_Death
                end
            else
                iCost = g_sMPTunables.iRETURNING_PRICE_DUKEODEATH
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.STALION2 then
        iCost = 277000
        if bNetwork_isGameInProgress then
            if g_sMPtunables.iSTUNT_Declasse_Burger_Shot_Stallion  >= 0 then
                iCost = g_sMPtunables.iSTUNT_Declasse_Burger_Shot_Stallion
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.DOMINATOR2 then
        iCost = 315000
        if bNetwork_isGameInProgress and g_sMPtunables.iSTUNT_Vapid_Pisswasser_Dominator >= 0 then
            iCost = g_sMPtunables.iSTUNT_Vapid_Pisswasser_Dominator
        end
        if bAltVersion then
            iBasePrice = iCost
            iCost = math.floor((315000 * 1.0)*0.75 + 0.5)
            -- if bNetwork_isGameInProgress
            -- and g_sMPtunables.iSTUNT_Vapid_Pisswasser_Dominator >= 0
            -- iCost = g_sMPtunables.iSTUNT_Vapid_Pisswasser_Dominator
            -- ENDIF
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.GAUNTLET2 then
        iCost = 230000
        if bNetwork_isGameInProgress then
            if g_sMPtunables.iSTUNT_Bravado_Redwood_Gauntlet    >= 0 then
                iCost = g_sMPtunables.iSTUNT_Bravado_Redwood_Gauntlet
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.BUFFALO3 then
        iCost = 535000
        if bNetwork_isGameInProgress then
            if g_sMPtunables.iSTUNT_Bravado_Sprunk_Buffalo   >= 0 then
                iCost = g_sMPtunables.iSTUNT_Bravado_Sprunk_Buffalo
            end
        end
        
        -- Christmas2 pack
    elseif eVehicleModel == ExtendedM.VehicleHashes.SLAMVAN then
        iCost = 49500
        if bNetwork_isGameInProgress and g_sMPTunables.iVehicle_xmas14_Slamvan >= 0 then
            iCost = g_sMPTunables.iVehicle_xmas14_Slamvan
        end
        if bAltVersion then
            iBasePrice = iCost
            iCost = math.floor((49500 * 1.0)*0.75 + 0.5)
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_TRADE_PRICE_SLAMVAN >= 0 then
                iCost = g_sMPTunables.iAW_TRADE_PRICE_SLAMVAN
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.RATLOADER2 then
        iCost = 37500
        if bNetwork_isGameInProgress and g_sMPTunables.iVehicle_xmas14_Rat_Truck >= 0 then
            iCost = g_sMPTunables.iVehicle_xmas14_Rat_Truck
        end
        if bAltVersion then
            iBasePrice = iCost
            iCost = math.floor((37500 * 1.0)*0.75 + 0.5)
            if bNetwork_isGameInProgress and g_sMPTunables.iAW_TRADE_PRICE_RATLOADER >= 0 then
                iCost = g_sMPtunables.iAW_TRADE_PRICE_RATLOADER
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.JESTER2 then
        iCost = 350000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iVehicle_xmas14_Dinka_Jester_Racecar >= 0 then
                iCost = g_sMPTunables.iVehicle_xmas14_Dinka_Jester_Racecar
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.MASSACRO2 then
        iCost = 385000
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iVehicle_xmas14_Dewbauchee_Massacro_Racecar >= 0 then
                iCost = g_sMPTunables.iVehicle_xmas14_Dewbauchee_Massacro_Racecar
            end
        end
        
        -- Luxe pack
    elseif eVehicleModel == ExtendedM.VehicleHashes.FELTZER3 then
        iCost = 975000
        if ExtendedM.Config.USE_TU_CHANGES == 1 then
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iluxe1_website_benefactor_stirling_gt >= 0 then
                    iCost = g_sMPtunables.iluxe1_website_benefactor_stirling_gt
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.LUXOR2 then
        iCost = 10000000
        if ExtendedM.Config.USE_TU_CHANGES == 1 then
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iluxe1_website_buckingham_luxor_deluxe >= 0 then
                    iCost = g_sMPtunables.iluxe1_website_buckingham_luxor_deluxe
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.OSIRIS then
        iCost = 1950000
        if ExtendedM.Config.USE_TU_CHANGES == 1 then
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iluxe1_website_pegassi_osiris >= 0 then
                    iCost = g_sMPtunables.iluxe1_website_pegassi_osiris
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.SWIFT2 then
        iCost = 5150000
        if ExtendedM.Config.USE_TU_CHANGES == 1 then
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iluxe1_website_buckingham_swift_deluxe >= 0 then
                    iCost = g_sMPtunables.iluxe1_website_buckingham_swift_deluxe
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.VIRGO then
        iCost = 195000
        if ExtendedM.Config.USE_TU_CHANGES == 1 then
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iluxe1_website_albany_virgo >= 0 then
                    iCost = g_sMPtunables.iluxe1_website_albany_virgo
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.WINDSOR then
        if not bAltVersion then
            iCost = 845000
            if bNetwork_isGameInProgress then
                if g_sMPtunables.iluxe1_website_enus_windsor >= 0 then
                    iCost = g_sMPtunables.iluxe1_website_enus_windsor
                end
            end
        else
            iCost = 0
            -- if bNetwork_isGameInProgress
            -- if g_sMPtunables.iluxe1_website_enus_windsor_FREE >= 0
            -- iCost = g_sMPtunables.iluxe1_website_enus_windsor_FREE
            -- ENDIF
            -- ENDIF
        end
        
        -- Luxe2 pack
    elseif eVehicleModel == ExtendedM.VehicleHashes.BRAWLER then
        iCost = 715000
        if ExtendedM.Config.USE_TU_CHANGES == 1 then
            if bNetwork_isGameInProgress then
                if g_smpTunables.iLuxe2_Coil_Brawler >= 0 then
                    iCost = g_smpTunables.iLuxe2_Coil_Brawler
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.CHINO then
        iCost = 225000
        if ExtendedM.Config.USE_TU_CHANGES == 1 then
            if bNetwork_isGameInProgress then
                if g_smpTunables.iLuxe2_Vapid_Chino >= 0 then
                    iCost = g_smpTunables.iLuxe2_Vapid_Chino
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.COQUETTE3 then
        iCost = 695000
        if ExtendedM.Config.USE_TU_CHANGES == 1 then
            if bNetwork_isGameInProgress then
                if g_smpTunables.iLuxe2_Invetero_Coquette_BlackFin >= 0 then
                    iCost = g_smpTunables.iLuxe2_Invetero_Coquette_BlackFin
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.T20 then
        iCost = 2200000
        if ExtendedM.Config.USE_TU_CHANGES == 1 then
            if bNetwork_isGameInProgress then
                if g_smpTunables.iLuxe2_Progen_T20 >= 0 then
                    iCost = g_smpTunables.iLuxe2_Progen_T20
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.TORO then
        iCost = 1750000
        if ExtendedM.Config.USE_TU_CHANGES == 1 then
            if bNetwork_isGameInProgress then
                if g_smpTunables.iLuxe2_Lampadati_Toro >= 0 then
                    iCost = g_smpTunables.iLuxe2_Lampadati_Toro
                end
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.VINDICATOR then
        iCost = 630000
        if ExtendedM.Config.USE_TU_CHANGES == 1 then
            if bNetwork_isGameInProgress then
                if g_smpTunables.iLuxe2_Dinka_Vindicator >= 0 then
                    iCost = g_smpTunables.iLuxe2_Dinka_Vindicator
                end
            end
        end
        
        -- Lowrider pack
    elseif eVehicleModel == ExtendedM.VehicleHashes.CHINO2 then
        iCost = 225000
        iCost = (g_sMPTunables.iWebsite_Vapid_Chino__Bennys_Website_ + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
    elseif eVehicleModel == ExtendedM.VehicleHashes.PRIMO2 then
        iCost = 100000
        if bNetwork_isGameInProgress and g_sMPTunables.iWebsite_Albany_Primo >= 0 then
            iCost = (g_sMPTunables.iWebsite_Albany_Primo + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.MOONBEAM then
        iCost = 32500
        if bNetwork_isGameInProgress and g_sMPTunables.iWebsite_Declasse_Moonbeam >= 0 then
            iCost = g_sMPTunables.iWebsite_Declasse_Moonbeam
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.MOONBEAM2 then
        iCost = (g_sMPTunables.iWebsite_Declasse_Moonbeam + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
    elseif eVehicleModel == ExtendedM.VehicleHashes.FACTION then
        iCost = 36000
        if bNetwork_isGameInProgress and g_sMPTunables.iWebsite_Willard_Faction >= 0 then
            iCost = g_sMPTunables.iWebsite_Willard_Faction
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.FACTION2 then
        iCost = 95000
        iCost = (g_sMPTunables.iWebsite_Willard_Faction + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
    elseif eVehicleModel == ExtendedM.VehicleHashes.BUCCANEER then
        iCost = 29000
        if bNetwork_isGameInProgress and g_sMPTunables.iWebsite_Albany_Buccaneer >= 0 then
            iCost = g_sMPTunables.iWebsite_Albany_Buccaneer
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.BUCCANEER2 then
        iCost = 85000
        iCost = (g_sMPTunables.iWebsite_Albany_Buccaneer + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
    elseif eVehicleModel == ExtendedM.VehicleHashes.VOODOO2 then
        iCost = 5500
        if bNetwork_isGameInProgress and g_sMPTunables.iWebsite_Declasse_Voodoo >= 0 then
            iCost = g_sMPTunables.iWebsite_Declasse_Voodoo
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.VOODOO then
        iCost = 105000
        iCost = (g_sMPTunables.iWebsite_Declasse_Voodoo + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
    elseif eVehicleModel == ExtendedM.VehicleHashes.DOMINATOR4 or eVehicleModel == ExtendedM.VehicleHashes.DOMINATOR5 or eVehicleModel == ExtendedM.VehicleHashes.DOMINATOR6 then
        iCost = (g_sMPTunables.iAW_TRADE_PRICE_DOMINATOR + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
    elseif eVehicleModel == ExtendedM.VehicleHashes.SLAMVAN4 or eVehicleModel == ExtendedM.VehicleHashes.SLAMVAN5 or eVehicleModel == ExtendedM.VehicleHashes.SLAMVAN6 then
        iCost = (g_sMPTunables.iVehicle_xmas14_Slamvan + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
    elseif eVehicleModel == ExtendedM.VehicleHashes.ISSI4 or eVehicleModel == ExtendedM.VehicleHashes.ISSI5 or eVehicleModel == ExtendedM.VehicleHashes.ISSI6 then
        iCost = (g_sMPTunables.iASSAULT_VEHICLES_WEENY_ISSI_CLASSIC + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
    elseif eVehicleModel == ExtendedM.VehicleHashes.IMPALER2 or eVehicleModel == ExtendedM.VehicleHashes.IMPALER3 or eVehicleModel == ExtendedM.VehicleHashes.IMPALER4 then
        iCost = (g_sMPTunables.iAW_TRADE_PRICE_IMPALER + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
    elseif eVehicleModel == ExtendedM.VehicleHashes.DEATHBIKE or eVehicleModel == ExtendedM.VehicleHashes.DEATHBIKE2 or eVehicleModel == ExtendedM.VehicleHashes.DEATHBIKE3 then
        iCost = (g_sMPtunables.iAW_TRADE_PRICE_GARGOYLE  + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
    elseif eVehicleModel == ExtendedM.VehicleHashes.MONSTER3 or eVehicleModel == ExtendedM.VehicleHashes.MONSTER4 or eVehicleModel == ExtendedM.VehicleHashes.MONSTER5 then
        iCost = (g_sMPtunables.iAW_TRADE_PRICE_RATLOADER + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
    elseif eVehicleModel == ExtendedM.VehicleHashes.BRUISER or eVehicleModel == ExtendedM.VehicleHashes.BRUISER2 or eVehicleModel == ExtendedM.VehicleHashes.BRUISER3 then
        iCost = (g_sMPTunables.iAW_TRADE_PRICE_GLENDALE  + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
        
        -- Halloween pack
    elseif eVehicleModel == ExtendedM.VehicleHashes.BTYPE2 then
        iCost = 550000
        if bNetwork_isGameInProgress and g_sMPTunables.iHalloween_2015_Albany_Franken_Stange >= 0 then
            iCost = g_sMPTunables.iHalloween_2015_Albany_Franken_Stange
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.LURCHER then
        iCost = 650000
        if bNetwork_isGameInProgress and g_sMPTunables.iHalloween_2015_Chariot_LURCHER >= 0 then
            iCost = g_sMPTunables.iHalloween_2015_Chariot_LURCHER
        end
        
        -- Apartment pack
    elseif eVehicleModel == ExtendedM.VehicleHashes.BALLER3 then
        iCost = 149000
        if bNetwork_isGameInProgress and g_sMPTunables.iApartment_Website_Gallivanter_Baller_LE >= 0 then
            iCost = g_sMPTunables.iApartment_Website_Gallivanter_Baller_LE
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.BALLER5 then
        iCost = 374000
        if bNetwork_isGameInProgress and g_sMPTunables.iApartment_Website_Gallivanter_Baller_LE_Armored >= 0 then
            iCost = g_sMPTunables.iApartment_Website_Gallivanter_Baller_LE_Armored
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.BALLER4 then
        iCost = 247000
        if bNetwork_isGameInProgress and g_sMPTunables.iApartment_Website_Gallivanter_Baller_LE_LWB >= 0 then
            iCost = g_sMPTunables.iApartment_Website_Gallivanter_Baller_LE_LWB
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.BALLER6 then
        iCost = 513000
        if bNetwork_isGameInProgress and g_sMPTunables.iApartment_Website_Gallivanter_Baller_LWB_Armored >= 0 then
            iCost = g_sMPTunables.iApartment_Website_Gallivanter_Baller_LWB_Armored
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.COG55 then
        iCost = 154000
        if bNetwork_isGameInProgress and g_sMPTunables.iApartment_Website_Enus_Cognoscenti_55 >= 0 then
            iCost = g_sMPTunables.iApartment_Website_Enus_Cognoscenti_55
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.COG552 then
        iCost = 396000
        if bNetwork_isGameInProgress and g_sMPTunables.iApartment_Website_Enus_Cognoscenti_55_Armored >= 0 then
            iCost = g_sMPTunables.iApartment_Website_Enus_Cognoscenti_55_Armored
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.COGNOSCENTI then
        iCost = 254000
        if bNetwork_isGameInProgress and g_sMPTunables.iApartment_Website_Enus_Cognoscenti >= 0 then
            iCost = g_sMPTunables.iApartment_Website_Enus_Cognoscenti
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.COGNOSCENTI2 then
        iCost = 558000
        if bNetwork_isGameInProgress and g_sMPTunables.iApartment_Website_Enus_Cognoscenti_Armored >= 0 then
            iCost = g_sMPTunables.iApartment_Website_Enus_Cognoscenti_Armored
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.LIMO2 then
        iCost = 1650000
        if bNetwork_isGameInProgress and g_sMPTunables.iApartment_Website_Benefactor_Schafter_Turreted_Limo >= 0 then
            iCost = g_sMPTunables.iApartment_Website_Benefactor_Schafter_Turreted_Limo
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.MAMBA then
        iCost = 995000
        if bNetwork_isGameInProgress and g_sMPTunables.iApartment_Website_Declasse_Mamba >= 0 then
            iCost = g_sMPTunables.iApartment_Website_Declasse_Mamba
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.NIGHTSHADE then
        iCost = 585000
        if bNetwork_isGameInProgress and g_sMPTunables.iApartment_Website_Imponte_Night_Shade >= 0 then
            iCost = g_sMPTunables.iApartment_Website_Imponte_Night_Shade
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.SCHAFTER3 then
        iCost = 116000
        if bNetwork_isGameInProgress and g_sMPTunables.iApartment_Website_Benefactor_Schafter_V12 >= 0 then
            iCost = g_sMPTunables.iApartment_Website_Benefactor_Schafter_V12
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.SCHAFTER5 then
        iCost = 325000
        if bNetwork_isGameInProgress and g_sMPTunables.iApartment_Website_Benefactor_Schafter_V12_Armored >= 0 then
            iCost = g_sMPTunables.iApartment_Website_Benefactor_Schafter_V12_Armored
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.SCHAFTER4 then
        iCost = 208000
        if bNetwork_isGameInProgress and g_sMPTunables.iApartment_Website_Benefactor_Schafter_LWB >= 0 then
            iCost = g_sMPTunables.iApartment_Website_Benefactor_Schafter_LWB
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.SCHAFTER6 then
        iCost = 438000
        if bNetwork_isGameInProgress and g_sMPTunables.iApartment_Website_Benefactor_Schafter_LWB_Armored >= 0 then
            iCost = g_sMPTunables.iApartment_Website_Benefactor_Schafter_LWB_Armored
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.VERLIERER2 then
        iCost = 695000
        if bNetwork_isGameInProgress and g_sMPTunables.iApartment_Website_Bravado_Verlierer >= 0 then
            iCost = g_sMPTunables.iApartment_Website_Bravado_Verlierer
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.SUPERVOLITO then
        iCost = 2113000
        if bNetwork_isGameInProgress and g_sMPTunables.iApartment_Website_Buckingham_SuperVolito >= 0 then
            iCost = g_sMPTunables.iApartment_Website_Buckingham_SuperVolito
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.SUPERVOLITO2 then
        iCost = 3330000
        if bNetwork_isGameInProgress and g_sMPTunables.iApartment_Website_Buckingham_SuperVolito_Carbon >= 0 then
            iCost = g_sMPTunables.iApartment_Website_Buckingham_SuperVolito_Carbon
        end
        
    elseif eVehicleModel == ExtendedM.VehicleHashes.TAMPA then
        iCost = 375000
        if bNetwork_isGameInProgress and g_sMPTunables.iXmas2015_Declasse_Tampa >= 0 then
            iCost = g_smpTunables.iXmas2015_Declasse_Tampa
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.SULTAN then
        if bNetwork_isGameInProgress and g_sMPTunables.iBennysWebsite_Karin_Sultan_Bennys >= 0 then
            iCost = g_smpTunables.iBennysWebsite_Karin_Sultan_Bennys
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.SULTANRS then
        iCost = (g_sMPTunables.iBennysWebsite_Karin_Sultan_Bennys + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
    elseif eVehicleModel == ExtendedM.VehicleHashes.BANSHEE then
        if bNetwork_isGameInProgress and g_sMPTunables.iUpgrade_Bravado_Banshee_Bennys >= 0 then
            iCost = g_smpTunables.iUpgrade_Bravado_Banshee_Bennys
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.BANSHEE2 then
        iCost = (g_sMPTunables.iUpgrade_Bravado_Banshee_Bennys + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel))
    elseif eVehicleModel == ExtendedM.VehicleHashes.BTYPE3 then
        iCost = 982000
        if bNetwork_isGameInProgress and g_smpTunables.iWebsite_Valentines2016_Albany_Roosevelt_Valor >= 0 then
            iCost = g_smpTunables.iWebsite_Valentines2016_Albany_Roosevelt_Valor
        end
        
        -- Lowrider2 pack
    elseif eVehicleModel == ExtendedM.VehicleHashes.FACTION3 then
        iCost = g_sMPTunables.iWebsite_Willard_Faction + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel)
    elseif eVehicleModel == ExtendedM.VehicleHashes.MINIVAN2 then
        iCost = g_sMPTunables.ibusiness_vehicles_Minivan + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel)
    elseif eVehicleModel == ExtendedM.VehicleHashes.SABREGT2 then
        iCost = g_sMPTunables.iWebsite_Bennys_Declasse_Sabre_Turbo + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel)
    elseif eVehicleModel == ExtendedM.VehicleHashes.SLAMVAN3 then
        iCost = g_sMPTunables.iVehicle_xmas14_Slamvan + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel)
    elseif eVehicleModel == ExtendedM.VehicleHashes.TORNADO5 then
        iCost = g_sMPTunables.iWebsite_Bennys_Declasse_Tornado + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel)
    elseif eVehicleModel == ExtendedM.VehicleHashes.VIRGO3 then
        iCost = g_sMPTunables.iWebsite_Bennys_Dundreary_Virgo_Classic
        -- if bNetwork_isGameInProgress
        -- and g_smpTunables.iWebsite_Lowrider2_VIRGO3 >= 0
        -- iCost = g_smpTunables.iWebsite_Lowrider2_VIRGO3
        -- ENDIF
    elseif eVehicleModel == ExtendedM.VehicleHashes.VIRGO2 then
        iCost = g_sMPTunables.iWebsite_Bennys_Dundreary_Virgo_Classic + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel)
        
        
    elseif eVehicleModel == ExtendedM.VehicleHashes.TECHNICAL3 then
        iCost = 950000 + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel)
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iVehicles_Heist_Karin_Technical >= 0 then
                iCost = g_sMPTunables.iVehicles_Heist_Karin_Technical + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel)
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.INSURGENT3 then
        iCost = 1350000 + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel)
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iVehicles_Heist_HVY_Insurgent_PickUp >= 0 then
                iCost = g_sMPTunables.iVehicles_Heist_HVY_Insurgent_PickUp + ExtendedM.Vehicles.GET_SUPERMOD_UPGRADE_COST(eVehicleModel)
            end
        end
    end
    
    -- Revised vehicle values for High Life release
    if eVehicleModel == ExtendedM.VehicleHashes.F620 then
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iDLC_VEHICLE_Ocelot_F620 >= 0 then
                iCost = g_sMPTunables.iDLC_VEHICLE_Ocelot_F620
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.FUSILADE then
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iDLC_VEHICLE_Schyster_Fusilade >= 0 then
                iCost = g_sMPTunables.iDLC_VEHICLE_Schyster_Fusilade
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.PENUMBRA then
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iDLC_VEHICLE_Maibatsu_Penumbra >= 0 then
                iCost = g_sMPTunables.iDLC_VEHICLE_Maibatsu_Penumbra
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.SENTINEL then
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iDLC_VEHICLE_Ubermacht_Sentinel_XS >= 0 then
                iCost = g_sMPTunables.iDLC_VEHICLE_Ubermacht_Sentinel_XS
            end
        end
    elseif eVehicleModel == ExtendedM.VehicleHashes.SENTINEL2 then
        if bNetwork_isGameInProgress then
            if g_sMPTunables.iDLC_VEHICLE_Ubermacht_Sentinel >= 0 then
                iCost = g_sMPTunables.iDLC_VEHICLE_Ubermacht_Sentinel
            end
        end
    end
    
    -- Tuneable discounts for free Collectors Edition vehicles
    if bNetwork_isGameInProgress then
        if eVehicleModel == ExtendedM.VehicleHashes.ELEGY2 then
            if bAltVersion then
                if g_sMPTunables.iELEGY2_expenditure_modifier >= 0 then
                    iCost = g_sMPTunables.iELEGY2_expenditure_modifier
                end
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.KHAMELION then
            if g_sMPTunables.iKHAMELION_expenditure_modifier >= 0 then
                iCost = g_sMPTunables.iKHAMELION_expenditure_modifier
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.HOTKNIFE then
            if g_sMPTunables.iHOTKNIFE_expenditure_modifier >= 0 then
                iCost = g_sMPTunables.iHOTKNIFE_expenditure_modifier
            end
        elseif eVehicleModel == ExtendedM.VehicleHashes.CARBONRS then
            if g_sMPTunables.icarbonrs_expenditure_modifier >= 0 then
                iCost = g_sMPTunables.icarbonrs_expenditure_modifier
            end
        end
    end
    
    -- Vehicles with alt setup
    -- Skipped #if ExtendedM.Config.USE_TU_CHANGES inside multi-line condition
    -- Skipped #ENDIF inside multi-line condition
    if bNetwork_isGameInProgress or iForceNetworkPrice == 1 then
        if bAltVersion then
            if eVehicleModel == ExtendedM.VehicleHashes.COQUETTE then -- Topless
                iCost = 138000
                if g_sMPTunables.iDLC_VEHICLE_Inverto_Coquette_Topless >= 0 and bNetwork_isGameInProgress then
                    iCost = g_sMPTunables.iDLC_VEHICLE_Inverto_Coquette_Topless
                end
            elseif eVehicleModel == ExtendedM.VehicleHashes.BANSHEE then -- Topless
                iCost = 126000
                if g_sMPTunables.iDLC_VEHICLE_Bravado_Banshee_Topless >= 0 and bNetwork_isGameInProgress then
                    iCost = g_sMPTunables.iDLC_VEHICLE_Bravado_Banshee_Topless
                end
            elseif eVehicleModel == ExtendedM.VehicleHashes.STINGER then -- Topless
                iCost = 850000
                if g_sMPTunables.iDLC_VEHICLE_Grotti_Stinger_Topless >= 0 and bNetwork_isGameInProgress then
                    iCost = g_sMPTunables.iDLC_VEHICLE_Grotti_Stinger_Topless
                end
            elseif eVehicleModel == ExtendedM.VehicleHashes.VOLTIC then -- Hardtop
                iCost = 150000
                if g_sMPTunables.ivoltic_expenditure_modifier  >= 0 and bNetwork_isGameInProgress then
                    iCost = g_sMPTunables.ivoltic_expenditure_modifier
                end
            elseif eVehicleModel == ExtendedM.VehicleHashes.CHINO then
                iCost = 225000
                if g_sMPTunables.iWebsite_Vapid_Chino__Bennys_Website_ >= 0 and bNetwork_isGameInProgress then
                    iCost = g_sMPTunables.iWebsite_Vapid_Chino__Bennys_Website_
                end
            elseif eVehicleModel == ExtendedM.VehicleHashes.KALAHARI then -- Topless
                iCost = 40000
                if g_sMPTunables.iLTS_Canis_Kalahari_Topless >= 0 and bNetwork_isGameInProgress then
                    iCost = g_sMPTunables.iLTS_Canis_Kalahari_Topless
                end
            elseif eVehicleModel == ExtendedM.VehicleHashes.SLAMVAN then
                iCost = 49500
                if g_sMPTunables.iWEBSITE_BENNYS_VAPID_SLAMVAN >= 0 and bNetwork_isGameInProgress then
                    iCost = g_sMPTunables.iWEBSITE_BENNYS_VAPID_SLAMVAN
                end
                if bAltVersion then
                    iBasePrice = iCost
                    iCost = math.floor((iCost * 1.0)*0.75 + 0.5)
                    if bNetwork_isGameInProgress and g_sMPTunables.iAW_TRADE_PRICE_SLAMVAN >= 0 then
                        iCost = g_sMPTunables.iAW_TRADE_PRICE_SLAMVAN
                    end
                end
            elseif eVehicleModel == ExtendedM.VehicleHashes.MINIVAN then
                iCost = 30000
                if g_sMPTunables.iWEBSITE_BENNYS_VAPID_MINIVAN >= 0 and bNetwork_isGameInProgress then
                    iCost = g_sMPTunables.iWEBSITE_BENNYS_VAPID_MINIVAN
                end
                
            end
        else
            if eVehicleModel == ExtendedM.VehicleHashes.VOLTIC then -- Topless
                if g_sMPTunables.iDLC_VEHICLE_Coil_Voltic_Topless >= 0 and bNetwork_isGameInProgress then
                    iCost = g_sMPTunables.iDLC_VEHICLE_Coil_Voltic_Topless
                end
                
            elseif eVehicleModel == ExtendedM.VehicleHashes.BANSHEE then -- Topless
                if g_sMPTunables.iUpgrade_Bravado_Banshee_Bennys  >= 0 and bNetwork_isGameInProgress then
                    iCost = g_sMPTunables.iUpgrade_Bravado_Banshee_Bennys
                end
                
            end
        end
    end
    
    if iCost == -1 then
        warn("GET_VEHICLE_VALUE: " .. "iCost for ", GetDisplayNameFromVehicleModel(eVehicleModel), " is minus one??")
        return false
    end
    if iBasePrice == -1 then --instead of the higher BUY IT NOW price
        iBasePrice = iCost
    end
    
    sData.iStandardPrice 	= iCost
    sData.iSellValue		= math.floor(math.floor(iCost*0.50)*0.10)
    sData.iCostToRemoveVIN  = math.floor(math.floor(iCost*0.50)*0.25)
    sData.iStreetPrice 		= math.floor(iCost*0.50)
    
    if not ExtendedM.Vehicles.SHOULD_USE_WEAPONISED_VEHICLE_INSURANCE_CAP(eVehicleModel) then
        sData.iInsurance 		= math.floor(math.floor(iBasePrice*0.50)*0.25)
        sData.iInsurancePremium = math.floor(sData.iInsurance *0.10)
        
        if (sData.iInsurancePremium > g_sMPTunables.iVEHICLE_INSURANCE_PREMIUM_CAP_LOWER) and (sData.iInsurancePremium <= g_sMPTunables.iVEHICLE_INSURANCE_PREMIUM_CAP_UPPER) then
            sData.iInsurancePremium = g_sMPTunables.iVEHICLE_INSURANCE_PREMIUM_CAP_LOWER
        end
    else
        sData.iInsurance 		= math.floor(iBasePrice*0.06)
        sData.iInsurancePremium = math.floor(sData.iInsurance *0.10)
        
        if sData.iInsurancePremium > g_sMPTunables.iWeaponisedVehicleInsuranceCap then
            sData.iInsurancePremium = g_sMPTunables.iWeaponisedVehicleInsuranceCap
        end
    end
    
    if ExtendedM.Config.USE_TU_CHANGES == 1 then
        if bNetwork_isGameInProgress then
            sData.iSellValue = math.floor(sData.iStreetPrice*0.20)
        end
    end
    
    return true
end