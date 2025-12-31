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