local PlayerData = {
    cash = 0,
    bank = 0
}

local DISPLAY_KEY = 20 -- Z

local function SetNativeMoney(cash_amount, bank_amount)
    StatSetInt('MP0_WALLET_BALANCE', cash_amount, true)
    StatSetInt('MP0_BANK_BALANCE', bank_amount, true)
    
    PlayerData.cash = cash_amount
    PlayerData.bank = bank_amount
end

RegisterNetEvent('ExtendedM:Client:SetInitialData')
AddEventHandler('ExtendedM:Client:SetInitialData', function(data)
    SetNativeMoney(data.cash, data.bank)
end)

RegisterNetEvent('ExtendedM:Client:UpdateCash')
AddEventHandler('ExtendedM:Client:UpdateCash', function(cash)
    SetNativeMoney(cash, PlayerData.bank) 
    
    ShowHudComponentThisFrame(3)
end)

RegisterNetEvent('ExtendedM:Client:UpdateBank')
AddEventHandler('ExtendedM:Client:UpdateBank', function(bank)
    SetNativeMoney(PlayerData.cash, bank) 
    
    ShowHudComponentThisFrame(4)
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if IsControlJustPressed(0, DISPLAY_KEY) then 
            ShowHudComponentThisFrame(3)
            ShowHudComponentThisFrame(4)
        end
    end
end)