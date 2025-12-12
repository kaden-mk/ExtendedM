local Players = {}

local function getIdentifiers(source)
    local identifiers = GetPlayerIdentifiers(source) 

    if identifiers then
        for _, id in ipairs(identifiers) do
            if id:sub(1, 5) == 'steam' then
                return id
            end
        end
    end

    return nil
end

AddEventHandler('playerConnecting', function(name, setKickReason, deferrals)
    local source = source 
    local identifier = getIdentifiers(source) 
    
    if not identifier then
        setKickReason("Failed to retrieve a unique Steam/License identifier.")
        deferrals.done()
        return
    end

    local kvp_key = "player:" .. identifier 

    deferrals.defer()
    deferrals.update("Loading player data from KVP storage...")

    local raw_data = GetResourceKvpString(kvp_key)
    local player_data

    if raw_data and raw_data ~= "" then
        player_data = json.decode(raw_data)
    else
        player_data = {
            cash = 100,
            bank = 0,
            identifier = identifier
        }
    end

    Players[source] = player_data 
    
    deferrals.done()
end)

function SavePlayerData(source)
    local player_data = Players[source]
    if not player_data then return false end

    local kvp_key = "player:" .. player_data.identifier
    local data = json.encode(player_data)

    SetResourceKvp(kvp_key, data)

    return true 
end