---@diagnostic disable: param-type-mismatch

DataManager = {}

local template_data = {
    cash = 100,
    bank = 0 
}

local players = {}
local temp_data = {}

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

---Loads a player's data
---@param source number Player's server ID
---@return table | string data
function DataManager.Load(source)
    local identifier = GetPlayerIdentifierByType(tostring(source), "license")

    if not identifier then return "Failed to retrieve a unique License identifier" end

    identifier = string.gsub(identifier, ":", "", 1)

    local raw_data = LoadResourceFile(GetCurrentResourceName(), "data/" .. identifier .. ".json")
    local player_data

    if raw_data and raw_data ~= "" then
        player_data = {
            identifier = identifier,
            save_data = json.decode(raw_data)
        }
        print("[DATA] Loaded data for " .. identifier)
    else
        player_data = {
            identifier = identifier,
            save_data = template_data      
        }
        print("[DATA] Created data for " .. identifier)
    end

    return player_data
end

---Gets a specified key from a player's data
---@param source number Player's server ID
---@param name string Name of the key
---@return any key
function DataManager.GetKey(source, name)
    local player_data = players[source]

    if not player_data then return end

    return player_data.save_data[name] or nil
end

---Sets a specified key's value in a player's data
---@param source number Player's server ID
---@param name string Name of the key
---@param value any New value of the key
---@param callback? function Callback function
---@return boolean success
function DataManager.SetKey(source, name, value, callback)
    local player_data = players[source]

    if not player_data then return false end

    player_data.save_data[name] = value

    if callback then
        callback(value)
    end

    return true
end

AddEventHandler('playerConnecting', function(_, set_kick_reason, deferrals)
    deferrals.defer()
    deferrals.update("Loading player's JSON data...")

    local player_data = DataManager.Load(source)

    if type(player_data) == "string" then
        set_kick_reason(player_data)
        deferrals.done()
        return
    end

    temp_data[source] = player_data
    
    deferrals.done()
end)

AddEventHandler('playerJoining', function(old_source)
    old_source = tonumber(old_source)

    if not old_source then return end

    local data = temp_data[old_source]
    if not data then return end

    players[source] = data
    temp_data[old_source] = nil

    TriggerClientEvent('ExtendedM:Client:SetInitialData', source, data.save_data)
end)

AddEventHandler('onResourceStart', function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end

    local playerList = GetPlayers()

    for _, playerIdStr in ipairs(playerList) do
        local playerId = tonumber(playerIdStr)

        if playerId then
            local player_data = DataManager.Load(playerId)
            
            if player_data then
                players[playerId] = player_data
                TriggerClientEvent('ExtendedM:Client:SetInitialData', playerId, player_data.save_data)
            else
                print("[DATA] Could not load data for " .. playerId .. " on resource start")
            end
        end
    end
end)

AddEventHandler('playerDropped', function()
    DataManager.Save(source) 
    players[source] = nil
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
    
    local cash_success = DataManager.SetKey(target, "cash", cash, function(value)
        TriggerClientEvent('ExtendedM:Client:UpdateBank', source, value)
    end)
    local bank_success = DataManager.SetKey(target, "bank", bank, function(value)
        TriggerClientEvent('ExtendedM:Client:UpdateCash', source, value)
    end)
    
    if cash_success and bank_success then
        local msg = string.format("Set Player %s's money: Cash $%d | Bank $%d", GetPlayerName(target), cash, bank)
        TriggerClientEvent('chat:addMessage', source, { args = { '^2SUCCESS: ' .. msg } })
    else
        TriggerClientEvent('chat:addMessage', source, { args = { '^1ERROR: Failed to update player data.' } })
    end
end, false)

ExtendedM.DataManager = DataManager