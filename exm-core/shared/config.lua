ExtendedM.Config = {
    Time = {
        Default = 480, -- 8:00
        MsPerMinute = 2000, -- 2 seconds = 1 in-game minute
        Freeze = false
    },
    Weather = {
        Dynamic = true, -- toggle between dynamic and static weather
        Transition = 30.0, -- seconds
        Cycle = {2, 15}, -- min & max minutes
        Types = {
            "EXTRASUNNY",
            "CLEAR",
            "CLOUDS",
            "SMOG",
            "FOGGY",
            "OVERCAST",
            "RAIN",
            "THUNDER",
            "CLEARING"
        }
    },
    HUD = {
        ToggleKey = "Z"
    },
    Blips = {
        {
            coords = vector3(243.18, -45.01, 69.9),
            icon = ExtendedM.Enum.BLIP_ICONS.GUN_SHOP,
            name = "Ammu-Nation"
        }
    },
    ATMs = {
        Models = {
            -1126237515,
            -1364697528,
            506770882,
        }
    }
}