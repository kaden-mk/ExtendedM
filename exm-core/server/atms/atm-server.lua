ExtendedM.PlayerData = ExtendedM.PlayerData or {}

RegisterNetEvent("ExtendedM:ATM:Transaction")
AddEventHandler("ExtendedM:ATM:Transaction", function(amount, withdrawal)
    local source = source

    if not ExtendedM.PlayerData.GetPlayerData(source) then
        TriggerClientEvent("ExtendedM:ATM:TransactionError", source, "An error occured while trying to process the Transaction.")
        return
    end

    local bank = ExtendedM.PlayerData.GetPlayerBank(source)
    local cash = ExtendedM.PlayerData.GetPlayerCash(source)

    if (withdrawal and bank < amount) or (not withdrawal and cash < amount) then
        TriggerClientEvent("ExtendedM:ATM:TransactionError", source, "An error occured while trying to process the Transaction.")
        return
    end

    if withdrawal then
        ExtendedM.PlayerData.SetPlayerBank(source, bank - amount)
        ExtendedM.PlayerData.SetPlayerCash(source, cash + amount)
    else
        ExtendedM.PlayerData.SetPlayerBank(source, bank + amount)
        ExtendedM.PlayerData.SetPlayerCash(source, cash - amount)
    end

    ExtendedM.PlayerData.SavePlayerData(source)

    Citizen.Wait(1000)
    TriggerClientEvent("ExtendedM:ATM:TransactionSuccess", source)
end)