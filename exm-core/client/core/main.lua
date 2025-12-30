local HUD_COMPONENT_CASH = 3
local HUD_COMPONENT_BANK = 4

local function UpdateNativeData()
    local data = ExtendedM.DataSyncer.Data
    StatSetInt("MP0_WALLET_BALANCE", data.cash, true)
    StatSetInt("BANK_BALANCE", data.bank, true)
end

RegisterNetEvent("ExtendedM:Client:UpdateNativeData")
AddEventHandler("ExtendedM:Client:UpdateNativeData", UpdateNativeData)

local hud_visible = true

RegisterCommand("toggle_hud", function()
    hud_visible = not hud_visible
end, false)

RegisterKeyMapping("toggle_hud", "Toggle HUD", "keyboard", ExtendedM.Config.HUD.ToggleKey)

CreateThread(function()
    ExtendedM.DataSyncer:SyncData()
    ExtendedM.DataSyncer:Wait()
    UpdateNativeData()

    while true do
        Wait(0)
        
        if hud_visible then
             ShowHudComponentThisFrame(HUD_COMPONENT_CASH)
             ShowHudComponentThisFrame(HUD_COMPONENT_BANK)
        else
             HideHudComponentThisFrame(HUD_COMPONENT_CASH)
             HideHudComponentThisFrame(HUD_COMPONENT_BANK)
        end
    end
end)