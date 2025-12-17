ExtendedM.PlayerData = {}

local TEMPLATE_PLAYER_DATA = {
    save_data = {
        cash = 100,
        bank = 0,
        identifier = nil
    },
}

local Players = {}
local TemporaryData = {}

local function GetIdentifiers(source)
    local identifiers = GetPlayerIdentifiers(source) 
    local license = nil

    if identifiers then
        for _, id in ipairs(identifiers) do
            if id:sub(1, 5) == 'steam' then
                return id
            end

            if id:sub(1, 7) == 'license' then
                license = id
            end
        end
    end

    return license
end

--- Saves a player's data.
--- @param source number The player's server ID.
--- @return boolean True if successful, otherwise false.
function ExtendedM.PlayerData.SavePlayerData(source)
    local player_data = Players[source]
    if not player_data then
        print(string.format("[DEBUG] SavePlayerData called for unloaded player: %d", source))
        return false
    end

    local kvp_key = "player:" .. player_data.save_data.identifier
    local data = json.encode(player_data.save_data)

    SetResourceKvp(kvp_key, data)
    print(string.format("[INFO] Saved KVP data for %s", player_data.save_data.identifier))

    return true 
end

--- Returns a player's data object.
--- @param source number The player's server ID.
--- @return table|nil The player data table or nil if not loaded.
function ExtendedM.PlayerData.GetPlayerData(source)
    return Players[source]
end

--- Deletes a player's data from the KVP store using the identifier.
--- @param identifier string
--- @return boolean True if successful, false otherwise.
function ExtendedM.PlayerData.DeletePlayerKVPDataWithIdentifier(identifier)
    if not identifier or identifier == "" then
        return false
    end

    local kvp_key = "player:" .. identifier

    DeleteResourceKvp(kvp_key)

    print(string.format("[INFO] Deleted KVP data for %s", identifier))
    return true
end

--- Retrieve a player's cash.
--- @param source number The player's server ID.
--- @return number The player's cash amount.
function ExtendedM.PlayerData.GetPlayerCash(source)
    local data = Players[source]
    if not data then return 0 end

    return data.save_data.cash and data.save_data.cash or 0
end

--- Retrieve a player's bank.
--- @param source number The player's server ID.
--- @return number The player's bank amount.
function ExtendedM.PlayerData.GetPlayerBank(source)
    local data = Players[source]
    if not data then return 0 end

    return data.save_data.bank and data.save_data.bank or 0
end

--- Set a player's cash.
--- @param source number The player's server ID.
--- @param amount number The amount to set.
--- @return boolean True if successful, false otherwise.
function ExtendedM.PlayerData.SetPlayerCash(source, amount)
    local data = Players[source]

    if not data then return false end 

    data.save_data.cash = amount
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

    data.save_data.bank = amount
    TriggerClientEvent('ExtendedM:Client:UpdateBank', source, amount)

    return true 
end

local function LoadPlayerData(source)
    local identifier = GetIdentifiers(source)
    if not identifier then
        return nil, "Failed to retrieve a unique Steam/License identifier."
    end

    local kvp_key = "player:" .. identifier
    local raw_data = GetResourceKvpString(kvp_key)
    local player_data

    if raw_data and raw_data ~= "" then
        player_data = {}
        player_data.save_data = json.decode(raw_data)
        print(string.format("[INFO] Loaded data for %s", identifier))
    else
        player_data = {}
        player_data.save_data = {
            cash = 100,
            bank = 0,
            identifier = identifier
        }
        print(string.format("[INFO] Created new data for %s", identifier))
    end

    return player_data
end

AddEventHandler('playerConnecting', function(name, set_kick_reason, deferrals)
    local source = source
    
    deferrals.defer()
    deferrals.update("Loading player data from KVP storage...")

    local player_data, err = LoadPlayerData(source)
    if not player_data then
        set_kick_reason(err)
        deferrals.done()
        return
    end

    TemporaryData[source] = player_data
    
    deferrals.done()
end)

AddEventHandler('playerJoining', function(old_source)
    old_source = tonumber(old_source)

    local source = source

    local data = TemporaryData[old_source]
    if not data then return end

    Players[source] = data
    TemporaryData[old_source] = nil

    TriggerClientEvent('ExtendedM:Client:SetInitialData', source, data)
end)

AddEventHandler('onResourceStart', function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end

    local players = GetPlayers()

    for _, playerIdStr in ipairs(players) do
        local playerId = tonumber(playerIdStr)

        if playerId then
            local player_data = LoadPlayerData(playerId)
            
            if player_data then
                Players[playerId] = player_data
                TriggerClientEvent('ExtendedM:Client:SetInitialData', playerId, player_data)
            else
                print(string.format("[WARN] Could not load data for player %d on resource start", playerId))
            end
        end
    end
end)

AddEventHandler('playerDropped', function()
    local source = source

    ExtendedM.PlayerData.SavePlayerData(source) 
    Players[source] = nil
end)

RegisterCommand('setmoney', function(source, args, rawCommand)
    if source ~= 0 and not IsPlayerAceAllowed(source, 'command.setmoney') then
        TriggerClientEvent('chat:addMessage', source, { args = { '^1ERROR: You do not have permission to use this command.' } })
        return
    end

    if #args < 3 then
        TriggerClientEvent('chat:addMessage', source, { args = { '^1Usage: /setmoney [playerId] [cash] [bank]' } })
        return
    end

    local target = tonumber(args[1])     
    local cash = math.ceil(tonumber(args[2]))  
    local bank = math.ceil(tonumber(args[3]))  

    if not target or not GetPlayerName(target) then
        TriggerClientEvent('chat:addMessage', source, { args = { '^1ERROR: Invalid target Player ID.' } })
        return
    end
    
    local cash_success = ExtendedM.PlayerData.SetPlayerCash(target, cash)
    local bank_success = ExtendedM.PlayerData.SetPlayerBank(target, bank)
    
    if cash_success and bank_success then
        local msg = string.format("Set Player %s's money: Cash $%d | Bank $%d", GetPlayerName(target), cash, bank)
        print(msg) 
        TriggerClientEvent('chat:addMessage', source, { args = { '^2SUCCESS: ' .. msg } })
    else
        TriggerClientEvent('chat:addMessage', source, { args = { '^1ERROR: Failed to update player data.' } })
    end
end, false)

RegisterCommand('delete_player_data', function(source, args)
      if source ~= 0 then
        print("[ERROR] delete_player_data can only be used from the server console.")
        return
    end

    local identifier = args[1]
    if not identifier then
        print("[USAGE] delete_player_data <license>")
        return
    end

    local success = ExtendedM.PlayerData.DeletePlayerKVPDataWithIdentifier(identifier)

    if success then
        print(string.format("[INFO] Player data wiped for %s", identifier))
    else
        print(string.format("[ERROR] Failed to wipe player data for %s", identifier))
    end
end, true)