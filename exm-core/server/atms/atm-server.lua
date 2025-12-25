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

    local function update_cash(value)
        TriggerClientEvent('ExtendedM:Client:UpdateCash', source, value)
    end

    local function update_bank(value)
        TriggerClientEvent('ExtendedM:Client:UpdateBank', source, value)
    end

    if withdrawal then
        ExtendedM.DataManager.SetKey(source, "bank", bank - amount, update_bank)
        ExtendedM.DataManager.SetKey(source, "cash", cash + amount, update_cash)
    else
        ExtendedM.DataManager.SetKey(source, "bank", bank + amount, update_bank)
        ExtendedM.DataManager.SetKey(source, "cash", cash - amount, update_cash)
    end

    ExtendedM.DataManager.Save(source)

    Citizen.Wait(1000)
    TriggerClientEvent("ExtendedM:ATM:TransactionSuccess", source)
end)