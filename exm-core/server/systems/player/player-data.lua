local Player = {}

local temp_data = {}

ExtendedM.Hook.Register("player_registered")
ExtendedM.Hook.Register("player_leave")

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

    ExtendedM.Hook.Fire("player_registered", source)
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
                ExtendedM.Hook.Fire("player_registered", playerId)
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

    ExtendedM.Hook.Fire("player_leave", source)
end)

AddEventHandler('onResourceStop', function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end

    print("[DATA] Resource stopping - saving all player data...")
    
    local playerList = GetPlayers()
    local saved_count = 0

    for _, playerIdStr in ipairs(playerList) do
        local playerId = tonumber(playerIdStr)
        
        if playerId then
            local success = ExtendedM.DataManager.Save(playerId)
            if success then
                saved_count = saved_count + 1
            end
        end
    end

    print(string.format("[DATA] Saved data for %d/%d players", saved_count, #playerList))
end)

ExtendedM.Player = Player