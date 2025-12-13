local ATM_HASHES = {
    -1126237515,
	-1364697528,
	506770882
}

local PROMPT_DISTANCE = 1.5

Citizen.CreateThread(function()
    while true do
        local wait = 500

        local position = GetEntityCoords(GetPlayerPed(PlayerId()))
        for _, hash in pairs(ATM_HASHES) do
            local nearest_atm = GetClosestObjectOfType(position.x, position.y, position.z, PROMPT_DISTANCE, hash, false, false, false)
            
            if nearest_atm ~= 0 then
                wait = 0

                local coords = GetEntityCoords(nearest_atm)
                local distance = GetDistanceBetweenCoords(position, coords.x, coords.y, coords.z, true)

                if distance < PROMPT_DISTANCE then
                    BeginTextCommandDisplayHelp("STRING")
                    AddTextComponentSubstringPlayerName("Press ~INPUT_CONTEXT~ to access the ATM.")
                    EndTextCommandDisplayHelp(0, false, true, -1)
                end
            end
        end 

        Citizen.Wait(wait)
    end
end)