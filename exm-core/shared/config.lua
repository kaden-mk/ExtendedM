ExtendedM.Config = {
    Time = {
        Default = 480, -- 8:00
        MsPerMinute = 2000, -- 2 seconds = 1 in-game minute
        Freeze = false
    },
    Weather = {
        Default = "CLEAR",
        Dynamic = true, -- toggle between dynamic and static weather
        Transition = 30.0, -- seconds
        Cycle = {2, 15}, -- min & max minutes
        Types = {
            EXTRASUNNY = {
                CLEAR = 55,
                CLOUDS = 25,
                SMOG = 10,
                OVERCAST = 8,
                FOGGY = 2
            },
            CLEAR = {
                EXTRASUNNY = 35,
                CLOUDS = 30,
                OVERCAST = 15,
                SMOG = 10,
                FOGGY = 10
            },
            CLOUDS = {
                CLEAR = 35,
                OVERCAST = 25,
                FOGGY = 15,
                SMOG = 10,
                RAIN = 10,
                EXTRASUNNY = 5
            },
            SMOG = {
                CLEAR = 40,
                CLOUDS = 30,
                OVERCAST = 15,
                EXTRASUNNY = 10,
                FOGGY = 5
            },
            FOGGY = {
                CLEAR = 45,
                CLOUDS = 30,
                OVERCAST = 15,
                SMOG = 5,
                RAIN = 5
            },
            OVERCAST = {
                CLOUDS = 30,
                RAIN = 30,
                CLEAR = 20,
                FOGGY = 10,
                THUNDER = 5,
                SMOG = 5
            },
            THUNDER = {
                CLEARING = 100
            },
            RAIN = {
                CLEARING = 100
            },
            CLEARING = {
                CLOUDS = 100
            }
        }
    },
    HUD = {
        ToggleKey = "Z"
    },
    Blips = {
        {
            coords = vector3(243.18, -45.01, 69.9),
            icon = ExtendedM.Enum.BLIP_ICON.GUN_SHOP,
            name = "Ammu-Nation"
        }
    },
    ATMs = {
        Models = {
            -1126237515,
            -1364697528,
            506770882,
        }
    },
    VehicleModPrices = {
        Brakes = {
            SPECIAL = {1000, 20000, 27000, 35000, 60000},
            SPORT = {650, 13000, 17550, 22750, 60000},
            SUV = {500, 10000, 13500, 17500, 60000},
            STANDARD = {200, 4000, 5400, 7000, 60000},
            BIKE = {200, 4000, 5400, 7000, 60000},
        }
    },
    Features = {
        FEATURE_DLC_1_2022 = 1,
        FEATURE_DLC_2_2022 = 0,
        FEATURE_FIXER = 1,
        FEATURE_GEN9_EXCLUSIVE = 0,
        FEATURE_HEIST_ISLAND = 1,
        FEATURE_SUMMER_2020 = 1,
        FEATURE_TUNER = 1,
    },
    WeaponLabels = {
        WEAPON_ACIDPACKAGE = {
            name = "WT_ACIDPACKAGE",
            desc = "WTD_ACIDPACKAGE"
        },
        WEAPON_ADVANCEDRIFLE = {
            name = "WT_RIFLE_ADV",
            desc = "WTD_RIFLE_ADV"
        },
        WEAPON_APPISTOL = {
            name = "WT_PIST_AP",
            desc = "WTD_PIST_AP"
        },
        WEAPON_ASSAULTRIFLE = {
            name = "WT_RIFLE_ASL",
            desc = "WTD_RIFLE_ASL"
        },
        WEAPON_ASSAULTRIFLE_MK2 = {
            name = "WT_RIFLE_ASL2",
            desc = "WTD_RIFLE_ASL2"
        },
        WEAPON_ASSAULTSHOTGUN = {
            name = "WT_SG_ASL",
            desc = "WTD_SG_ASL"
        },
        WEAPON_ASSAULTSMG = {
            name = "WT_SMG_ASL",
            desc = "WTD_SMG_ASL"
        },
        WEAPON_AUTOSHOTGUN = {
            name = "WT_AUTOSHGN",
            desc = "WTD_AUTOSHGN"
        },
        WEAPON_BALL = {
            name = "WT_BALL",
            desc = "WTD_BALL"
        },
        WEAPON_BAT = {
            name = "WT_BAT",
            desc = "WTD_BAT"
        },
        WEAPON_BATTLEAXE = {
            name = "WT_BATTLEAXE",
            desc = "WTD_BATTLEAXE"
        },
        WEAPON_BATTLERIFLE = {
            name = "WT_BATTLERIFLE",
            desc = "WTD_BATTLERIFLE"
        },
        WEAPON_BOTTLE = {
            name = "WT_BOTTLE",
            desc = "WTD_BOTTLE"
        },
        WEAPON_BULLPUPRIFLE = {
            name = "WT_BULLRIFLE",
            desc = "WTD_BULLRIFLE"
        },
        WEAPON_BULLPUPRIFLE_MK2 = {
            name = "WT_BULLRIFLE2",
            desc = "WTD_BULLRIFLE2"
        },
        WEAPON_BULLPUPSHOTGUN = {
            name = "WT_SG_BLP",
            desc = "WTD_SG_BLP"
        },
        WEAPON_BZGAS = {
            name = "WT_BZGAS",
            desc = "WTD_BZGAS"
        },
        WEAPON_CANDYCANE = {
            name = "WT_CANDYCANE",
            desc = "WTD_CANDYCANE"
        },
        WEAPON_CARBINERIFLE = {
            name = "WT_RIFLE_CBN",
            desc = "WTD_RIFLE_CBN"
        },
        WEAPON_CARBINERIFLE_MK2 = {
            name = "WT_RIFLE_CBN2",
            desc = "WTD_RIFLE_CBN2"
        },
        WEAPON_CERAMICPISTOL = {
            name = "WT_CERPST",
            desc = "WTD_CERPST"
        },
        WEAPON_COMBATMG = {
            name = "WT_MG_CBT",
            desc = "WTD_MG_CBT"
        },
        WEAPON_COMBATMG_MK2 = {
            name = "WT_MG_CBT2",
            desc = "WTD_MG_CBT2"
        },
        WEAPON_COMBATPDW = {
            name = "WT_COMBATPDW",
            desc = "WTD_COMBATPDW"
        },
        WEAPON_COMBATPISTOL = {
            name = "WT_PIST_CBT",
            desc = "WTD_PIST_CBT"
        },
        WEAPON_COMBATSHOTGUN = {
            name = "WT_CMBSHGN",
            desc = "WTD_CMBSHGN"
        },
        WEAPON_COMPACTLAUNCHER = {
            name = "WT_CMPGL",
            desc = "WTD_CMPGL"
        },
        WEAPON_COMPACTRIFLE = {
            name = "WT_CMPRIFLE",
            desc = "WTD_CMPRIFLE"
        },
        WEAPON_CROWBAR = {
            name = "WT_CROWBAR",
            desc = "WTD_CROWBAR"
        },
        WEAPON_DAGGER = {
            name = "WT_DAGGER",
            desc = "WTD_DAGGER"
        },
        WEAPON_DBSHOTGUN = {
            name = "WT_DBSHGN",
            desc = "WTD_DBSHGN"
        },
        WEAPON_DOUBLEACTION = {
            name = "WT_REV_DA",
            desc = "WTD_REV_DA"
        },
        WEAPON_EMPLAUNCHER = {
            name = "WT_EMPL",
            desc = "WTD_EMPL"
        },
        WEAPON_FERTILIZERCAN = {
            name = "WT_FERTILIZERCAN",
            desc = "WTD_FERTILIZERCAN"
        },
        WEAPON_FIREEXTINGUISHER = {
            name = "WT_FIRE",
            desc = "WTD_FIRE"
        },
        WEAPON_FIREWORK = {
            name = "WT_FIREWRK",
            desc = "WTD_FIREWRK"
        },
        WEAPON_FLARE = {
            name = "WT_FLARE",
            desc = "WTD_FLARE"
        },
        WEAPON_FLAREGUN = {
            name = "WT_FLAREGUN",
            desc = "WTD_FLAREGUN"
        },
        WEAPON_FLASHLIGHT = {
            name = "WT_FLASHLIGHT",
            desc = "WTD_FLASHLIGHT"
        },
        WEAPON_GADGETPISTOL = {
            name = "WT_GDGTPST",
            desc = "WTD_GDGTPST"
        },
        WEAPON_GOLFCLUB = {
            name = "WT_GOLFCLUB",
            desc = "WTD_GOLFCLUB"
        },
        WEAPON_GRENADE = {
            name = "WT_GNADE",
            desc = "WTD_GNADE"
        },
        WEAPON_GRENADELAUNCHER = {
            name = "WT_GL",
            desc = "WTD_GL"
        },
        WEAPON_GRENADELAUNCHER_SMOKE = {
            name = "WT_GL_SMOKE",
            desc = "WTD_GL_SMOKE"
        },
        WEAPON_GUSENBERG = {
            name = "WT_GUSNBRG",
            desc = "WTD_GUSNBRG"
        },
        WEAPON_HACKINGDEVICE = {
            name = "WT_HACKDEVICE",
            desc = "WTD_HACKDEVICE"
        },
        WEAPON_HAMMER = {
            name = "WT_HAMMER",
            desc = "WTD_HAMMER"
        },
        WEAPON_HATCHET = {
            name = "WT_HATCHET",
            desc = "WTD_HATCHET"
        },
        WEAPON_HAZARDCAN = {
            name = "WT_HAZARDCAN",
            desc = "WTD_HAZARDCAN"
        },
        WEAPON_HEAVYPISTOL = {
            name = "WT_HVYPISTOL",
            desc = "WTD_HVYPISTOL"
        },
        WEAPON_HEAVYRIFLE = {
            name = "WT_HEAVYRIFLE",
            desc = "WTD_HEAVYRIFLE"
        },
        WEAPON_HEAVYSHOTGUN = {
            name = "WT_HVYSHGN",
            desc = "WTD_HVYSHGN"
        },
        WEAPON_HEAVYSNIPER = {
            name = "WT_SNIP_HVY",
            desc = "WTD_SNIP_HVY"
        },
        WEAPON_HEAVYSNIPER_MK2 = {
            name = "WT_SNIP_HVY2",
            desc = "WTD_SNIP_HVY2"
        },
        WEAPON_HOMINGLAUNCHER = {
            name = "WT_HOMLNCH",
            desc = "WTD_HOMLNCH"
        },
        WEAPON_KNIFE = {
            name = "WT_KNIFE",
            desc = "WTD_KNIFE"
        },
        WEAPON_KNUCKLE = {
            name = "WT_KNUCKLE",
            desc = "WTD_KNUCKLE"
        },
        WEAPON_MACHETE = {
            name = "WT_MACHETE",
            desc = "WTD_MACHETE"
        },
        WEAPON_MACHINEPISTOL = {
            name = "WT_MCHPIST",
            desc = "WTD_MCHPIST"
        },
        WEAPON_MARKSMANPISTOL = {
            name = "WT_MKPISTOL",
            desc = "WTD_MKPISTOL"
        },
        WEAPON_MARKSMANRIFLE = {
            name = "WT_MKRIFLE",
            desc = "WTD_MKRIFLE"
        },
        WEAPON_MARKSMANRIFLE_MK2 = {
            name = "WT_MKRIFLE2",
            desc = "WTD_MKRIFLE2"
        },
        WEAPON_METALDETECTOR = {
            name = "WT_METALDETECT",
            desc = "WTD_METALDETECT"
        },
        WEAPON_MG = {
            name = "WT_MG",
            desc = "WTD_MG"
        },
        WEAPON_MICROSMG = {
            name = "WT_SMG_MCR",
            desc = "WTD_SMG_MCR"
        },
        WEAPON_MILITARYRIFLE = {
            name = "WT_MLTRYRFL",
            desc = "WTD_MLTRYRFL"
        },
        WEAPON_MINIGUN = {
            name = "WT_MINIGUN",
            desc = "WTD_MINIGUN"
        },
        WEAPON_MINISMG = {
            name = "WT_MINISMG",
            desc = "WTD_MINISMG"
        },
        WEAPON_MOLOTOV = {
            name = "WT_MOLOTOV",
            desc = "WTD_MOLOTOV"
        },
        WEAPON_MUSKET = {
            name = "WT_MUSKET",
            desc = "WTD_MUSKET"
        },
        WEAPON_NAVYREVOLVER = {
            name = "WT_REV_NV",
            desc = "WTD_REV_NV"
        },
        WEAPON_NEWSPAPER = {
            name = "WT_NEWSPAPER",
            desc = "WTD_NEWSPAPER"
        },
        WEAPON_NIGHTSTICK = {
            name = "WT_NGTSTK",
            desc = "WTD_NGTSTK"
        },
        WEAPON_PETROLCAN = {
            name = "WT_PETROL",
            desc = "WTD_PETROL"
        },
        WEAPON_PIPEBOMB = {
            name = "WT_PIPEBOMB",
            desc = "WTD_PIPEBOMB"
        },
        WEAPON_PISTOL = {
            name = "WT_PIST",
            desc = "WT_PIST_DESC"
        },
        WEAPON_PISTOL50 = {
            name = "WT_PIST_50",
            desc = "WTD_PIST_50"
        },
        WEAPON_PISTOLXM3 = {
            name = "WT_PISTOLXM3",
            desc = "WTD_PISTOLXM3"
        },
        WEAPON_PISTOL_MK2 = {
            name = "WT_PIST2",
            desc = "WTD_PIST2"
        },
        WEAPON_POOLCUE = {
            name = "WT_POOLCUE",
            desc = "WTD_POOLCUE"
        },
        WEAPON_PRECISIONRIFLE = {
            name = "WT_PRCSRIFLE",
            desc = "WTD_PRCSRIFLE"
        },
        WEAPON_PROXMINE = {
            name = "WT_PRXMINE",
            desc = "WTD_PRXMINE"
        },
        WEAPON_PUMPSHOTGUN = {
            name = "WT_SG_PMP",
            desc = "WTD_SG_PMP"
        },
        WEAPON_PUMPSHOTGUN_MK2 = {
            name = "WT_SG_PMP2",
            desc = "WTD_SG_PMP2"
        },
        WEAPON_RAILGUN = {
            name = "WT_RAILGUN",
            desc = "WTD_RAILGUN"
        },
        WEAPON_RAILGUNXM3 = {
            name = "WT_RAILGUNXM3",
            desc = "WTD_RAILGUNXM3"
        },
        WEAPON_RAYCARBINE = {
            name = "WT_RAYCARBINE",
            desc = "WTD_RAYCARBINE"
        },
        WEAPON_RAYMINIGUN = {
            name = "WT_RAYMINIGUN",
            desc = "WTD_RAYMINIGUN"
        },
        WEAPON_RAYPISTOL = {
            name = "WT_RAYPISTOL",
            desc = "WTD_RAYPISTOL"
        },
        WEAPON_REVOLVER = {
            name = "WT_REVOLVER",
            desc = "WTD_REVOLVER"
        },
        WEAPON_REVOLVER_MK2 = {
            name = "WT_REVOLVER2",
            desc = "WTD_REVOLVER2"
        },
        WEAPON_RPG = {
            name = "WT_RPG",
            desc = "WTD_RPG"
        },
        WEAPON_SAWNOFFSHOTGUN = {
            name = "WT_SG_SOF",
            desc = "WTD_SG_SOF"
        },
        WEAPON_SMG = {
            name = "WT_SMG",
            desc = "WTD_SMG"
        },
        WEAPON_SMG_MK2 = {
            name = "WT_SMG2",
            desc = "WTD_SMG2"
        },
        WEAPON_SMOKEGRENADE = {
            name = "WT_GNADE_SMK",
            desc = "WTD_GNADE_SMK"
        },
        WEAPON_SNIPERRIFLE = {
            name = "WT_SNIP_RIF",
            desc = "WTD_SNIP_RIF"
        },
        WEAPON_SNOWBALL = {
            name = "WT_SNWBALL",
            desc = "WTD_SNWBALL"
        },
        WEAPON_SNOWLAUNCHER = {
            name = "WT_SNOWLNCHR",
            desc = "WTD_SNOWLNCHR"
        },
        WEAPON_SNSPISTOL = {
            name = "WT_SNSPISTOL",
            desc = "WTD_SNSPISTOL"
        },
        WEAPON_SNSPISTOL_MK2 = {
            name = "WT_SNSPISTOL2",
            desc = "WTD_SNSPISTOL2"
        },
        WEAPON_SPECIALCARBINE = {
            name = "WT_SPCARBINE",
            desc = "WTD_SPCARBINE"
        },
        WEAPON_SPECIALCARBINE_MK2 = {
            name = "WT_SPCARBINE2",
            desc = "WTD_SPCARBINE2"
        },
        WEAPON_STICKYBOMB = {
            name = "WT_GNADE_STK",
            desc = "WTD_GNADE_STK"
        },
        WEAPON_STONE_HATCHET = {
            name = "WT_SHATCHET",
            desc = "WTD_SHATCHET"
        },
        WEAPON_STUNGUN = {
            name = "WT_STUN",
            desc = "WTD_STUN"
        },
        WEAPON_STUNGUN_MP = {
            name = "WT_STNGUNMP",
            desc = "WTD_STNGUNMP"
        },
        WEAPON_STUNROD = {
            name = "WT_STUNROD",
            desc = "WTD_STUNROD"
        },
        WEAPON_SWITCHBLADE = {
            name = "WT_SWBLADE",
            desc = "WTD_SWBLADE"
        },
        WEAPON_TACTICALRIFLE = {
            name = "WT_TACRIFLE",
            desc = "WTD_TACRIFLE"
        },
        WEAPON_TECPISTOL = {
            name = "WT_TECPISTOL",
            desc = "WTD_TECPISTOL"
        },
        WEAPON_UNARMED = {
            name = "WT_UNARMED",
            desc = "WTD_UNARMED"
        },
        WEAPON_VINTAGEPISTOL = {
            name = "WT_VPISTOL",
            desc = "WTD_VPISTOL"
        },
        WEAPON_WRENCH = {
            name = "WT_WRENCH",
            desc = "WTD_WRENCH"
        },
    }
}