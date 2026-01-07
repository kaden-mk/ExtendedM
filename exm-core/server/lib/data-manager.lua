---@diagnostic disable: param-type-mismatch

local DataManager = {}

local registered_keys = {
    cash = 100,
    bank = 0,
    weapons = {}
}

local players = {}

---Sets up a player in the cache
function DataManager.Setup(source, data)
    players[source] = data
end

---Removes a player from the cache
function DataManager.Remove(source)
    players[source] = nil
end

---Registers a new key for player data.
---@param key string The key name.
---@param default_value any The default value for the key.
function DataManager.RegisterKey(key, default_value)
    registered_keys[key] = default_value
    print("[DATA] Registered key: " .. key)
end

---Saves a player's data
---@param source number Player's server ID
---@return boolean success
function DataManager.Save(source)
    local player_data = players[source]

    if not player_data then
        print("[DATA] Couldn't find data for " .. source)
        return false
    end

    local saved_file = SaveResourceFile(GetCurrentResourceName(), ("data/" .. player_data.identifier ..  ".json"), json.encode(player_data.save_data), -1)

    if not saved_file then
        print("[DATA] Failed saving data for " .. player_data.identifier .. "...Retrying in 1s")
        Wait(1000)
        DataManager.Save(source)
        return false
    end

    print("[DATA] Saved data for " .. player_data.identifier)

    return true
end

--- Returns a player's cached data.
--- @param source number Player's server ID.
--- @return table | nil data
function DataManager.Get(source)
    return players[source]
end

local function ReconcileData(saved, template)
    local reconciled = {}

    for key, default_value in pairs(template) do
        local saved_value = saved and saved[key]

        if type(default_value) == "table" then
            reconciled[key] = ReconcileData(
                type(saved_value) == "table" and saved_value or {},
                default_value
            )
        else
            reconciled[key] = saved_value ~= nil and saved_value or default_value
        end
    end

    if saved then
        for key, value in pairs(saved) do
            if reconciled[key] == nil then
                reconciled[key] = value
            end
        end
    end

    return reconciled
end

---Loads a player's data
---@param source number Player's server ID
---@return table | string data
function DataManager.Load(source)
    local identifier = GetPlayerIdentifierByType(tostring(source), "license")
    if not identifier then return "Failed to retrieve a unique License identifier" end

    identifier = string.gsub(identifier, ":", "", 1)

    local raw_data = LoadResourceFile(GetCurrentResourceName(), "data/" .. identifier .. ".json")
    local save_data

    if raw_data and raw_data ~= "" then
        local decoded = json.decode(raw_data)
        save_data = ReconcileData(decoded, registered_keys)
        print("[DATA] Loaded & reconciled data for " .. identifier)
    else
        save_data = ReconcileData(nil, registered_keys)
        print("[DATA] Created new data for " .. identifier)
    end

    return {
        identifier = identifier,
        save_data = save_data
    }
end

---Gets a specified key from a player's data
---@param source number Player's server ID
---@param name string Name of the key
---@return any key
function DataManager.GetKey(source, name)
    local player_data = DataManager.Get(source)
    if not player_data then return end

    return player_data.save_data[name] or nil
end

---Sets a specified key's value in a player's data AND syncs it to client
---@param source number Player's server ID
---@param name string Name of the key
---@param value any New value of the key
---@param callback? function Callback function
---@return boolean success
function DataManager.SetKey(source, name, value, callback)
    local player_data = DataManager.Get(source)
    if not player_data then return false end

    player_data.save_data[name] = value

    TriggerClientEvent("ExtendedM:DataSyncer:UpdateKey", source, name, value)

    if callback then
        callback(value)
    end

    return true
end

---Syncs a client's data with the server.
---@param source number Player's server ID
function DataManager.SyncData(source)
    local player_data = DataManager.Get(source)
    if not player_data then return end

    TriggerClientEvent("ExtendedM:DataSyncer:SyncData", source, player_data.save_data)
end

---Syncs a client's data key with the server.
---@param source number Player's server ID
---@param key string The key to sync
function DataManager.SyncKey(source, key)
    local player_data = DataManager.Get(source)
    if not player_data then return end

    TriggerClientEvent("ExtendedM:DataSyncer:UpdateKey", source, key, player_data.save_data[key])
end

RegisterNetEvent("ExtendedM:DataManager:SyncData")
AddEventHandler("ExtendedM:DataManager:SyncData", function()
    DataManager.SyncData(source)
end)

RegisterCommand('setmoney', function(source, args)
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
    
    local cash_success = DataManager.SetKey(target, "cash", cash)
    local bank_success = DataManager.SetKey(target, "bank", bank)

    TriggerClientEvent("ExtendedM:Client:UpdateNativeData", target)
    
    if cash_success and bank_success then
        local msg = string.format("Set Player %s's money: Cash $%d | Bank $%d", GetPlayerName(target), cash, bank)
        TriggerClientEvent('chat:addMessage', source, { args = { '^2SUCCESS: ' .. msg } })
    else
        TriggerClientEvent('chat:addMessage', source, { args = { '^1ERROR: Failed to update player data.' } })
    end
end, false)

ExtendedM.DataManager = DataManager