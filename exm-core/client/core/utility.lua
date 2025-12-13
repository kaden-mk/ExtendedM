ExtendedM.Utility = {}

--- Easily creates a blip on the map.
---@param settings any
---@return Blip
function ExtendedM.Utility.CreateBlip(settings)
    local blip = AddBlipForCoord(settings.coords)
    SetBlipSprite(blip, settings.icon)
    SetBlipAsShortRange(blip, settings.shortRange)
    SetBlipScale(blip, settings.scale)
    SetBlipColour(blip, settings.color)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(settings.name)
    EndTextCommandSetBlipName(blip)

    return blip
end