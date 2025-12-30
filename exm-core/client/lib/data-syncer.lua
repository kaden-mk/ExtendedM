local DataSyncer = {}

---@class PlayerData
---@field cash integer
---@field bank integer
---@field weapons table

---@type PlayerData
---@diagnostic disable-next-line: missing-fields
DataSyncer.Data = {}

local yield = true

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

RegisterNetEvent("ExtendedM:DataSyncer:SyncData")
AddEventHandler("ExtendedM:DataSyncer:SyncData", function(synced_data)
    DataSyncer.Data = synced_data
    yield = false
end)

ExtendedM.DataSyncer = DataSyncer