ExtendedM.Utility = {}

---Easily creates a blip on the map.
---@param blipType string
---@param settings any
---@return integer | nil
function ExtendedM.Utility.CreateBlip(blipType, settings)
    local blip = nil

    if blipType == "coord" then
        if not settings.coords then return end

        blip = AddBlipForCoord(settings.coords[1], settings.coords[2], settings.coords[3])
    elseif blipType == "entity" then
        if not settings.entity then return end

        blip = AddBlipForEntity(settings.entity)
    end

    if not blip then return end

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

---Converts a number to a string & adds commas inbetween.
---@param num number
---@return string
function ExtendedM.Utility.Comma(num)
    if type(num) == 'number' then
		num = tostring(num)
	end

    return #num % 3 == 0 and num:reverse():gsub('(%d%d%d)', '%1,'):reverse():sub(2) or num:reverse():gsub('(%d%d%d)', '%1,'):reverse()
end

local weapon_group_hashes = {
    [2685387236] = "Unarmed",
    [3566412244] = "Melee",
    [416676503]  = "Pistols",
    [-957766203] = "Submachine Guns",
    [970310034]  = "Assault Rifles",
    [1159398588] = "Light Machine Guns",
    [860033945]  = "Shotguns",
    [3082541095] = "Sniper Rifles",
    [2725924767] = "Heavy Weapons",
    [1548507267] = "Thrown Weapons",
    [690389602]  = "Stun Gun",
    [1595662460] = "Petrol Can",
    [431593103]  = "Parachute",
    [3493187224] = "Night Vision",
    [4257178988] = "Fire Extinguisher",
    [1175761940] = "Hacking Device",
    [3759491383] = "Metal Detector",
    [3539449195] = "Digiscanner",
    [75159441]   = "Tranquilizer"
}

---Takes a weapon group's hash from a list and returns the string literal used for it.
---@param hash integer
---@return string
function ExtendedM.Utility.GetWeaponGroupNameFromHash(hash)
    return weapon_group_hashes[hash] and weapon_group_hashes[hash] or "NULL"
end