local current_weather

RegisterNetEvent("ExtendedM:Client:SyncWeather")
AddEventHandler("ExtendedM:Client:SyncWeather", function (weather, now)
    if current_weather ~= weather then
        if not now then
            SetWeatherTypeOvertimePersist(weather, ExtendedM.Config.Weather.Transition)
        else
            SetWeatherTypeNowPersist(weather)
        end

        current_weather = weather
    end
end)

RegisterNetEvent("ExtendedM:Client:SyncTime")
AddEventHandler("ExtendedM:Client:SyncTime", function (hour, minute)
    NetworkOverrideClockTime(hour, minute, 0)
end)