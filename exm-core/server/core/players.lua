local Players = {}

local function getIdentifiers(source)
    local identifiers = GetPlayerIdentifiers(source) 

    if identifiers then
        for _, id in ipairs(identifiers) do
            if id:sub(1, 5) == 'steam' then
                return id
            end

            if id:sub(1, 7) == 'license' then
                return id
            end
        end
    end

    return nil
end

--- Saves a player's data.
--- @param source number The player's server ID.
--- @return boolean True if successful, otherwise false.
function ExtendedM.PlayerData.SavePlayerData(source)
    local player_data = Players[source]
    if not player_data then return false end

    local kvp_key = "player:" .. player_data.identifier
    local data = json.encode(player_data)

    SetResourceKvp(kvp_key, data)

    return true 
end

--- Returns a player's data object.
--- @param source number The player's server ID.
--- @return table|nil The player data table or nil if not loaded.
function ExtendedM.PlayerData.GetPlayerData(source)
    return Players[source]
end

--- Retrieve a player's cash.
--- @param source number The player's server ID.
--- @return number The player's cash amount.
function ExtendedM.PlayerData.GetPlayerCash(source)
    local data = Players[source]

    return data.cash and data.cash or 0
end

--- Set a player's cash.
--- @param source number The player's server ID.
--- @param amount number The amount to set.
--- @return boolean True if successful, false otherwise.
function ExtendedM.PlayerData.SetPlayerCash(source, amount)
    local data = Players[source]

    if not data then return false end 

    data.cash = amount
    TriggerClientEvent('ExtendedM:Client:UpdateCash', source, amount)
    
    return true
end

--- Set a player's bank.
--- @param source number The player's server ID.
--- @param amount number The amount to set.
--- @return boolean True if successful, false otherwise.
function ExtendedM.PlayerData.SetPlayerBank(source, amount)
    local data = Players[source]

    if not data then return false end

    data.bank = amount
    TriggerClientEvent('ExtendedM:Client:UpdateBank', source, amount)

    return true 
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

    TriggerClientEvent('ExtendedM:Client:SetInitialData', source, player_data)
    
    deferrals.done()
end)

AddEventHandler('playerDropped', function()
    local source = source

    ExtendedM.PlayerData.SavePlayerData(source) 
    Players[source] = nil
end)