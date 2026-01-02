local Player = {}

local temp_data = {}

AddEventHandler('playerConnecting', function(_, set_kick_reason, deferrals)
    deferrals.defer()
    deferrals.update("Loading player's JSON data...")

    local source = source
    local player_data = ExtendedM.DataManager.Load(source)

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
    
    ExtendedM.DataManager.Setup(source, data)
    temp_data[old_source] = nil
end)

AddEventHandler('onResourceStart', function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end

    local playerList = GetPlayers()

    for _, playerIdStr in ipairs(playerList) do
        local playerId = tonumber(playerIdStr)

        if playerId then
            local player_data = ExtendedM.DataManager.Load(playerId)
            
            if player_data then
                ExtendedM.DataManager.Setup(playerId, player_data)
            else
                print("[DATA] Could not load data for " .. playerId .. " on resource start")
            end
        end
    end
end)

AddEventHandler('playerDropped', function()
    local source = source
    ExtendedM.DataManager.Save(source)
    ExtendedM.DataManager.Remove(source)
end)

ExtendedM.Player = Player