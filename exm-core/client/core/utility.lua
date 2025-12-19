ExtendedM.Utility = {}

---Easily creates a blip on the map.
---@param blipType string
---@param settings any
---@return Blip
function ExtendedM.Utility.CreateBlip(blipType, settings)
    local blip = nil

    if blipType == "coord" then
        if not settings.coords then return end

        blip = AddBlipForCoord(settings.coords[1], settings.coords[2], settings.coords[3])
    elseif blipType == "entity" then
        if not settings.entity then return end

        blip = AddBlipForEntity(settings.entity)
    end

    SetBlipSprite(blip, settings.icon or 1)
    SetBlipAsShortRange(blip, settings.shortRange or true)
    SetBlipScale(blip, settings.scale or 1.0)
    SetBlipColour(blip, settings.color or 0)
    SetBlipDisplay(blip, settings.display or 2)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(settings.name)
    EndTextCommandSetBlipName(blip)

    return blip
end

---Loads a scaleform movie.
---@param name string
---@return integer
function ExtendedM.Utility.LoadScaleformMovie(name)
    local scaleform = RequestScaleformMovie(name)

    while not HasScaleformMovieLoaded(scaleform) do
        Citizen.Wait(0)
    end

    return scaleform
end

---Easily calls a scaleform's method in 1 line.
---@param scaleform integer
---@param method string
---@param ... any
function ExtendedM.Utility.CallScaleformMethod(scaleform, method, ...)
    local args = {...}

    BeginScaleformMovieMethod(scaleform, method)

    for _, arg in pairs(args) do
        if type(arg) == "number" then
            if(math.type(arg) == 'float') then
				PushScaleformMovieMethodParameterFloat(arg)
			else
				PushScaleformMovieMethodParameterInt(arg)
			end
        elseif (type(arg) == 'string') then
			PushScaleformMovieMethodParameterString(arg)
		elseif (type(arg) == 'bool') then
			PushScaleformMovieMethodParameterBool(arg)
        end
    end

    EndScaleformMovieMethod()
end

---Plays an animation on the player.
---@param dict string
---@param name string
---@param duration number
---@param lead_in number
---@param flag number
function ExtendedM.Utility.PlayAnimation(dict, name, duration, lead_in, flag)
    while(not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(0)
	end

	TaskPlayAnim(PlayerPedId(), dict, name, lead_in, 8.0, duration, flag, 0, false, false, true)
end

function ExtendedM.Utility.Comma(num)
    if type(num) == 'number' then
		num = tostring(num)
	end

    return #num % 3 == 0 and num:reverse():gsub('(%d%d%d)', '%1,'):reverse():sub(2) or num:reverse():gsub('(%d%d%d)', '%1,'):reverse()
end