local DataSyncer = {}

---@class PlayerData
---@field cash integer
---@field bank integer
---@field weapons table
---@field inventory table

---@type PlayerData
---@diagnostic disable-next-line: missing-fields
DataSyncer.Data = {}

local yield = true
local listeners = {}

---Fires an event to sync data between the client & server.
function DataSyncer:SyncData()
    yield = true
    TriggerServerEvent("ExtendedM:DataManager:SyncData")
end

---Yields until the data has been received by the client.
function DataSyncer:Wait()
    while yield do
        Wait(0)
    end
end

---Registers a callback for when a specific data key changes.
---@param key string The key to listen for.
---@param callback function The function to call when the key updates.
function DataSyncer:On(key, callback)
    if not listeners[key] then
        listeners[key] = {}
    end
    
    table.insert(listeners[key], callback)
end

RegisterNetEvent("ExtendedM:DataSyncer:SyncData")
AddEventHandler("ExtendedM:DataSyncer:SyncData", function(synced_data)
    local old_data = DataSyncer.Data

    DataSyncer.Data = synced_data
    yield = false

    for key, new_value in pairs(DataSyncer.Data) do
        if old_data[key] ~= new_value and listeners[key] then
            for _, cb in ipairs(listeners[key]) do
                cb(new_value)
            end
        end
    end
end)

RegisterNetEvent("ExtendedM:DataSyncer:UpdateKey")
AddEventHandler("ExtendedM:DataSyncer:UpdateKey", function(key, value)
    DataSyncer.Data[key] = value
    
    if listeners[key] then
        for _, cb in ipairs(listeners[key]) do
            cb(value)
        end
    end
end)

ExtendedM.DataSyncer = DataSyncer