local HUD_COMPONENT_CASH = 3
local HUD_COMPONENT_BANK = 4

local function UpdateNativeData()
    local data = ExtendedM.DataSyncer.Data
    StatSetInt("MP0_WALLET_BALANCE", data.cash, true)
    StatSetInt("BANK_BALANCE", data.bank, true)
end

RegisterNetEvent("ExtendedM:Client:UpdateNativeData")
AddEventHandler("ExtendedM:Client:UpdateNativeData", UpdateNativeData)

RegisterCommand("toggle_hud", function()
    ShowHudComponentThisFrame(HUD_COMPONENT_CASH)
    ShowHudComponentThisFrame(HUD_COMPONENT_BANK)
    SetBigmapActive(not IsBigmapActive(), false)
end, false)

RegisterKeyMapping("toggle_hud", "Toggle HUD", "keyboard", ExtendedM.Config.HUD.ToggleKey)

CreateThread(function()
    ExtendedM.DataSyncer:SyncData()
    ExtendedM.DataSyncer:Wait()
    UpdateNativeData()
end)