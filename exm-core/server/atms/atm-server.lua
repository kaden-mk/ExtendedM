RegisterNetEvent("ExtendedM:ATM:Transaction")
AddEventHandler("ExtendedM:ATM:Transaction", function(amount, withdrawal)
    local source = source

    if not ExtendedM.DataManager.Get(source) then
        TriggerClientEvent("ExtendedM:ATM:TransactionError", source, "An error occured while trying to process the Transaction.")
        return
    end

    local bank = ExtendedM.DataManager.GetKey(source, "bank")
    local cash = ExtendedM.DataManager.GetKey(source, "cash")

    if (withdrawal and bank < amount) or (not withdrawal and cash < amount) then
        TriggerClientEvent("ExtendedM:ATM:TransactionError", source, "An error occured while trying to process the Transaction.")
        return
    end

    ExtendedM.DataManager.SetKey(source, "bank", bank + ((withdrawal and -amount) or amount))
    ExtendedM.DataManager.SetKey(source, "cash", cash + ((withdrawal and amount) or -amount))
    
    ExtendedM.DataManager.SyncData(source)
    TriggerClientEvent("ExtendedM:Client:UpdateNativeData", source)

    Wait(1000)
    TriggerClientEvent("ExtendedM:ATM:TransactionSuccess", source)
end)