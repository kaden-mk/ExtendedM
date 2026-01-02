local Weather = ExtendedM.Config.Weather
local Time = ExtendedM.Config.Time

local last_weather_change = 0
local current_weather
local cycle = 0
local total_minutes = Time.Default

local function ChangeWeather(name)
    current_weather = name or ExtendedM.Math.Weighted(Weather.Types[current_weather])

    last_weather_change = GetGameTimer()
    cycle = math.random(Weather.Cycle[1], Weather.Cycle[2])

    TriggerClientEvent("ExtendedM:Client:SyncWeather", -1, current_weather)
end

local function ConvertToHours()
    local hour = total_minutes // 60
    local minute = total_minutes % 60

    return hour, minute
end

CreateThread(function()
    ChangeWeather(Weather.Default)

    while true do      
        if Weather.Dynamic then
            if GetGameTimer() - last_weather_change > (cycle * 60 * 1000) then
                ChangeWeather()
            end 
        end

        Wait(5000)
    end
end)

CreateThread(function()
    while true do
        if not Time.Freeze then
            total_minutes = total_minutes + 1

            if total_minutes > 1439 then
                total_minutes = 0
            end

            TriggerClientEvent("ExtendedM:Client:SyncTime", -1, ConvertToHours())
        end

        Wait(Time.MsPerMinute)
    end
end)

AddEventHandler("playerJoining", function ()
    TriggerClientEvent("ExtendedM:Client:SyncWeather", source, current_weather, true)
    TriggerClientEvent("ExtendedM:Client:SyncTime", source, ConvertToHours())
end)