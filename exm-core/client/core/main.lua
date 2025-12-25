ExtendedM.PlayerData = {
    cash = 0,
    bank = 0
}

function ExtendedM.GetPlayerData()
    local _, cash = StatGetInt(GetHashKey('MP0_WALLET_BALANCE'), -1)
    local _, bank = StatGetInt(GetHashKey('BANK_BALANCE'), -1)
    ExtendedM.PlayerData.cash = cash
    ExtendedM.PlayerData.bank = bank

    return ExtendedM.PlayerData
end

local DISPLAY_KEY = 20 -- Z
local HUD_COMPONENT_CASH = 3
local HUD_COMPONENT_BANK = 4

local function SetNativeMoney(cash_amount, bank_amount)
    if cash_amount then
        StatSetInt('MP0_WALLET_BALANCE', cash_amount, true)
        ExtendedM.PlayerData.cash = cash_amount
    end

    if bank_amount then
        StatSetInt('BANK_BALANCE', bank_amount, true)
        ExtendedM.PlayerData.bank = bank_amount
    end
end

RegisterNetEvent('ExtendedM:Client:SetInitialData')
AddEventHandler('ExtendedM:Client:SetInitialData', function(data)
    SetNativeMoney(data.cash, data.bank)
    print("CLIENT DEBUG: Initial data received. Cash: " .. data.cash and data.cash or "0" .. " Bank: " .. data.bank and data.bank or "0")
end)

RegisterNetEvent('ExtendedM:Client:UpdateCash')
AddEventHandler('ExtendedM:Client:UpdateCash', function(cash)
    SetNativeMoney(cash, nil) 
    
    if not IsHudComponentActive(HUD_COMPONENT_CASH) then
        ShowHudComponentThisFrame(HUD_COMPONENT_CASH)
    end
end)

RegisterNetEvent('ExtendedM:Client:UpdateBank')
AddEventHandler('ExtendedM:Client:UpdateBank', function(bank)
    SetNativeMoney(nil, bank) 
    
    if not IsHudComponentActive(HUD_COMPONENT_BANK) then
        ShowHudComponentThisFrame(HUD_COMPONENT_BANK)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if IsControlJustPressed(0, DISPLAY_KEY) then 
            if IsHudComponentActive(HUD_COMPONENT_CASH) then
                HideHudComponentThisFrame(HUD_COMPONENT_CASH)
            else
                ShowHudComponentThisFrame(HUD_COMPONENT_CASH)
            end

            if IsHudComponentActive(HUD_COMPONENT_BANK) then
                HideHudComponentThisFrame(HUD_COMPONENT_BANK)
            else
                ShowHudComponentThisFrame(HUD_COMPONENT_BANK)
            end 
        end
    end
end)