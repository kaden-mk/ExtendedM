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
        Wait(0)
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
		Wait(0)
	end

	TaskPlayAnim(PlayerPedId(), dict, name, lead_in, 8.0, duration, flag, 0, false, false, true)
end

---Converts a number to a string & adds commas inbetween.
---@param num number
---@return string
function ExtendedM.Utility.Comma(num)
    if type(num) == 'number' then
        ---@diagnostic disable-next-line: cast-local-type
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
    return weapon_group_hashes[hash] or "NULL"
end

local mouse_last_position = {x = 0, y = 0}
local mouse_initialized = false

---Gets the current mouse position as normalized coordinates (0-1)
---@return table {x: number, y: number}
function ExtendedM.Utility.GetMousePosition()
    local x = GetDisabledControlNormal(0, ExtendedM.Enum.CONTROL.MOUSE_X)
    local y = GetDisabledControlNormal(0, ExtendedM.Enum.CONTROL.MOUSE_Y)
    
    return {x = x, y = y}
end

---Gets the mouse movement delta since the last call
---@return table {x: number, y: number}
function ExtendedM.Utility.GetMouseDelta()
    local current = ExtendedM.Utility.GetMousePosition()
    
    if not mouse_initialized then
        mouse_last_position.x = current.x
        mouse_last_position.y = current.y
        mouse_initialized = true
        return {x = 0, y = 0}
    end
    
    local delta = {
        x = current.x - mouse_last_position.x,
        y = current.y - mouse_last_position.y
    }
    
    mouse_last_position.x = current.x
    mouse_last_position.y = current.y
    
    return delta
end

local is_input_blocked = false

---Blocks the user's keyboard input
---@param bool boolean Whether or not to block
function ExtendedM.Utility.SetBlockInput(bool)
    is_input_blocked = bool
end

---Makes the on screen keyboard appear
---@param text_entry string The text on top of the black square
---@param example_text string The text that'll be inside the black box when nothing is inputted
---@param max_string_length integer The maximum amount of characters that can be entered
---@return string | nil
function ExtendedM.Utility.OnScreenKeyboardInput(text_entry, example_text, max_string_length)
    AddTextEntry('FMMC_KEY_TIP1', text_entry) 
	DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", example_text, "", "", "", max_string_length)

    ExtendedM.Utility.SetBlockInput(true)

    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do 
		Wait(0)
	end

    ExtendedM.Utility.SetBlockInput(false)

    return GetOnscreenKeyboardResult()
end

---Spawns a vehicle and teleports the player inside
---@param model_name string The vehicle to spawn using the model name
---@param replace_current_vehicle boolean? If the player is already in a vehicle it'll get replaced if its true
---@return boolean boolean Returns if it successfully found the vehicle
function ExtendedM.Utility.SpawnVehicleForPlayer(model_name, replace_current_vehicle)
    local model_hash = GetHashKey(model_name)

    if not IsModelInCdimage(model_hash) or not IsModelAVehicle(model_hash) then
        return false
    end

    RequestModel(model_hash)
    while not HasModelLoaded(model_hash) do
        Wait(0)
    end

    local player_ped = PlayerPedId()
    local player_coords = GetEntityCoords(player_ped)
    local player_heading = GetEntityHeading(player_ped)

    if replace_current_vehicle and IsPedInAnyVehicle(player_ped, false) then
        local ped_vehicle = GetVehiclePedIsIn(player_ped, false)
        SetEntityAsMissionEntity(ped_vehicle, false, false)
        DeleteVehicle(ped_vehicle)
    end

    local vehicle = CreateVehicle(model_hash, player_coords.x, player_coords.y, player_coords.z, player_heading, true, false)

    SetPedIntoVehicle(player_ped, vehicle, -1)
    SetModelAsNoLongerNeeded(model_hash)

    return true
end

---Replaces a player's ped model
---@param model_name string The new model to replace the old one with
---@return boolean boolean Returns if it successfully found the model
function ExtendedM.Utility.ReplacePlayerPed(model_name)
    local model_hash = GetHashKey(model_name)

    if not IsModelInCdimage(model_hash) or not IsModelAPed(model_hash) then
        return false
    end

    RequestModel(model_hash)
    while not HasModelLoaded(model_hash) do
        Wait(0)
    end

    SetPlayerModel(PlayerId(), model_hash)
    SetModelAsNoLongerNeeded(model_hash)

    return true
end

---Dynamically generate ~INPUT_xyz~ text from custom key mappings
---@param command string
function ExtendedM.Utility.HashString(command)
    return ('~INPUT_%x~'):format(joaat(command) % 2^32):upper()
end

---Creates a sequential numeric array from min to max
---@param min integer The starting value of the range
---@param max integer The ending value of the range
---@return table<integer> range A numerically indexed table containing all values from min to max
function ExtendedM.Utility.MakeRange(min, max)
    local t = {}

    for i = min, max do
        t[#t + 1] = i
    end

    return t
end

---Teleports the player to their set waypoint
function ExtendedM.Utility.TeleportToWaypoint()
    local entity = PlayerPedId()
    if IsPedInAnyVehicle(entity, false) then
        entity = GetVehiclePedIsIn(entity, false)
    end

    local blip = GetFirstBlipInfoId(8)

    if DoesBlipExist(blip) then
        local coord = GetBlipInfoIdCoord(blip)
        local path = false
        local z

        for i = 1, 1000 do
            SetEntityCoordsNoOffset(entity, coord.x, coord.y, i + 0.0, false, false, false)
            RequestCollisionAtCoord(coord.x, coord.y, i + 0.0)
            Wait(0)
            
            path, z = GetGroundZFor_3dCoord(coord.x, coord.y, i + 0.0, false)
            if path then
                SetEntityCoordsNoOffset(entity, coord.x, coord.y, z + 2.0, false, false, false)
                break
            end
        end
        
        if not path then
             SetEntityCoordsNoOffset(entity, coord.x, coord.y, 50.0, false, false, false)
        end
    end
end

CreateThread(function()
    while true do
        if is_input_blocked then
            DisableAllControlActions(0)
            DisableAllControlActions(1)
            DisableAllControlActions(2)
            Wait(0)
        else
            Wait(1000)
        end
    end
end)