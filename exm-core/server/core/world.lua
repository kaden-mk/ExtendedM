local last_weather_change = 0
local current_weather
local cycle = math.random(ExtendedM.Config.Weather.Cycle[1], ExtendedM.Config.Weather.Cycle[2])
local total_minutes = ExtendedM.Config.Time.Default

local function ChangeWeather()
    if current_weather == "THUNDER" or current_weather == "RAIN" then
        current_weather = "CLEARING"
    elseif current_weather == "CLEARING" then
        current_weather = "CLOUDS"
    else
        math.randomseed(os.time())
        local randomized = ExtendedM.Config.Weather.Types[math.random(1, #ExtendedM.Config.Weather.Types)]

        while randomized == current_weather do
            randomized = ExtendedM.Config.Weather.Types[math.random(1, #ExtendedM.Config.Weather.Types)]
        end

        current_weather = randomized
    end

    last_weather_change = GetGameTimer()
    cycle = math.random(ExtendedM.Config.Weather.Cycle[1], ExtendedM.Config.Weather.Cycle[2])

    TriggerClientEvent("ExtendedM:Client:SyncWeather", -1, current_weather)
end

local function ConvertToHours()
    local hour = total_minutes // 60
    local minute = total_minutes % 60

    return hour, minute
end

CreateThread(function()
    ChangeWeather()

    while true do      
        if ExtendedM.Config.Weather.Dynamic then
            if GetGameTimer() - last_weather_change > (cycle * 60 * 1000) then
                ChangeWeather()
            end 
        end

        Wait(5000)
    end
end)

CreateThread(function()
    while true do
        if not ExtendedM.Config.Time.Freeze then
            total_minutes = total_minutes + 1

            if total_minutes > 1439 then
                total_minutes = 0
            end

            TriggerClientEvent("ExtendedM:Client:SyncTime", -1, ConvertToHours())
        end

        Wait(ExtendedM.Config.Time.MsPerMinute)
    end
end)

AddEventHandler("playerJoining", function ()
    TriggerClientEvent("ExtendedM:Client:SyncWeather", source, current_weather, true)
    TriggerClientEvent("ExtendedM:Client:SyncTime", source, ConvertToHours())
end)