Config = {
    Time = {
        Default = 480, -- 8:00
        MsPerMinute = 2000, -- 2 secs = 1 in-game minute
        Freeze = false
    },
    Weather = {
        Dynamic = true,
        Transition = 30.0,
        Cycle = math.random(120, 900),
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
    }
}