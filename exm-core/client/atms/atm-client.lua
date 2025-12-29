local ATM_HASHES = {
    -1126237515,
    -1364697528,
    506770882,
}

local SCREENS = {
    MAIN = 0,
    WITHDRAW = 1,
    DEPOSIT = 2,
    CONFIRM = 3,
    TRANSACTION_PENDING = 4,
    TRANSACTION_COMPLETE = 5,
    ATM_ERROR = 5,
}

local PROMPT_DISTANCE = 1.2

local atm_buttons = {}
local current_screen = SCREENS.MAIN
local nearest_atm = 0
local last_transaction_amount = 0
local atm_scaleform = nil
local last_transaction_was_withdrawal = false

-- Finding nearest ATM
CreateThread(function()
    while true do
        nearest_atm = 0

        local position = GetEntityCoords(GetPlayerPed(PlayerId()))
        for _, hash in pairs(ATM_HASHES) do
            nearest_atm = GetClosestObjectOfType(position.x, position.y, position.z, PROMPT_DISTANCE, hash, false, false, false)

            if nearest_atm ~= 0 then
                break
            end
        end

        Wait(500)
    end
end)

-- Prompt check
CreateThread(function()
    while true do
        if nearest_atm ~= 0 then
            BeginTextCommandDisplayHelp("STRING")
            AddTextComponentSubstringPlayerName("Press ~INPUT_CONTEXT~ to access the ATM.")
            EndTextCommandDisplayHelp(0, false, true, -1)
        end

        Wait(0)
    end
end)

local function UpdateBankBalance()
    if not atm_scaleform then return end

    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, 'DISPLAY_BALANCE', GetPlayerName(PlayerId()),
        'Account balance', ExtendedM.PlayerData.bank)
end

local function OpenMainMenu()
    if not atm_scaleform then return end

    current_screen = SCREENS.MAIN

    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, 'SET_DATA_SLOT_EMPTY')
    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, 'SET_DATA_SLOT', 0, 'Choose a service.')
    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, 'SET_DATA_SLOT', 1, 'Withdraw')
    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, 'SET_DATA_SLOT', 2, 'Deposit')
    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, 'SET_DATA_SLOT', 3, 'Transaction Log')
    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, 'SET_DATA_SLOT', 4, 'Exit')

    UpdateBankBalance()

    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, 'DISPLAY_MENU')
end

local function StartATMScaleform()
    SetFrontendActive(false)
    atm_scaleform = ExtendedM.Utility.LoadScaleformMovie("ATM")
    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, 'SET_INPUT_SELECT')
    OpenMainMenu()
end

local function CloseMenu()
    if not atm_scaleform then return end

    SetScaleformMovieAsNoLongerNeeded(atm_scaleform)
    atm_scaleform = nil

    ClearPedTasks(PlayerPedId())
end

CreateThread(function()
    while true do
        if IsControlJustReleased(0, 51) and nearest_atm ~= 0 and not atm_scaleform then
            atm_scaleform = nil

            local player = PlayerPedId()
            local player_position = GetEntityCoords(player)
            local atm_position = GetEntityCoords(nearest_atm)
            local atm_heading = GetEntityHeading(nearest_atm)
            local atm_forward_vector = GetEntityForwardVector(nearest_atm)

            ClearPedTasks(player)
            TaskGoStraightToCoord(player, atm_position.x - atm_forward_vector.x / 1.75,
                atm_position.y - atm_forward_vector.y / 1.75, player_position.z, 0.75, 3000, atm_heading, 1);

            Wait(200)

            while GetScriptTaskStatus(PlayerPedId(), 0x7d8f4411) ~= 7 do
                Wait(10)
            end

            ExtendedM.Utility.PlayAnimation('amb@prop_human_atm@male@idle_a', 'idle_b', -1, 8.0, 1)

            Wait(10)
            StartATMScaleform()
        end

        Wait(0)
    end
end)

local function DisplayATMError(err)
    if not atm_scaleform then return end

    current_screen = SCREENS.ATM_ERROR

    UpdateBankBalance()

    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "SET_DATA_SLOT_EMPTY")
    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "SET_DATA_SLOT", 0, err)
    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "SET_DATA_SLOT", 1, "Back")
    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "DISPLAY_MESSAGE")
end

local function SetupATMMoneyButtons(amount)
    if not atm_scaleform then return end

    atm_buttons = {}

    local presets = {
        50,
        500,
        2500,
        10000,
        100000
    }

    local slot = 0

    for _, value in ipairs(presets) do
        if amount >= value then
            slot = slot + 1
            if slot == 4 then
                slot = 5
            end

            atm_buttons[slot] = value
            ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "SET_DATA_SLOT", slot, "$" .. ExtendedM.Utility.Comma(value))
        end
    end

    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "SET_DATA_SLOT", 4, "Back")

    slot = slot + 1
    if slot == 4 then
        slot = 5
    end

    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "SET_DATA_SLOT", slot, "$" .. ExtendedM.Utility.Comma(amount))
    atm_buttons[slot] = amount
end

local function OpenWithDepositScreens(screen)
    if not atm_scaleform then return end
    if screen ~= SCREENS.DEPOSIT and screen ~= SCREENS.WITHDRAW then return end

    current_screen = screen

    last_transaction_was_withdrawal = current_screen == SCREENS.WITHDRAW and true or false

    UpdateBankBalance()

    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "SET_DATA_SLOT_EMPTY")
    local text = current_screen == SCREENS.WITHDRAW and "Select the amount you wish to withdraw from this account." or "Select the amount you wish to deposit into this account."
    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "SET_DATA_SLOT", 0, text)

    SetupATMMoneyButtons(current_screen == SCREENS.WITHDRAW and ExtendedM.PlayerData.bank or ExtendedM.PlayerData.cash)
    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "DISPLAY_CASH_OPTIONS")
end

local function OpenConfirmationScreen(amount)
    if not atm_scaleform then return end

    local withdrawal = current_screen == SCREENS.WITHDRAW
    
    current_screen = SCREENS.CONFIRM

    UpdateBankBalance()

    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "SET_DATA_SLOT_EMPTY")
    local comma_amount = ExtendedM.Utility.Comma(amount)
    local text = withdrawal and "Do you wish to withdraw $" .. comma_amount .. " from your account?" or "Do you wish to deposit $" .. comma_amount .. " into your account?"

    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "SET_DATA_SLOT", 0, text)

    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "SET_DATA_SLOT", 1, "Yes")
    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "SET_DATA_SLOT", 2, "No")
    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "DISPLAY_MESSAGE")
end

-- These 2 should probably be 1 function
local function OpenTransactionPending()
    if not atm_scaleform then return end 

    current_screen = SCREENS.TRANSACTION_PENDING

    UpdateBankBalance()

    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "SET_DATA_SLOT_EMPTY")
    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "SET_DATA_SLOT", 0, "Transaction Pending...")
    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "DISPLAY_MESSAGE")
end 

local function OpenTransactionComplete()
    if not atm_scaleform then return end

    current_screen = SCREENS.TRANSACTION_COMPLETE

    UpdateBankBalance()

    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "SET_DATA_SLOT_EMPTY")
    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "SET_DATA_SLOT", 0, "Transaction Complete")
    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "SET_DATA_SLOT", 1, "Back")
    ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "DISPLAY_MESSAGE")
end

local function DepositWithdrawal(amount)
    if current_screen == SCREENS.WITHDRAW or current_screen == SCREENS.DEPOSIT then
        OpenConfirmationScreen(amount)
        last_transaction_amount = amount
    elseif current_screen == SCREENS.TRANSACTION_COMPLETE then
        OpenMainMenu()
    end
end

local function HandleInput(selection)
    if current_screen == SCREENS.MAIN then
        if selection == 1 then -- withdrawal screen
            if ExtendedM.PlayerData.bank > 0 then
                OpenWithDepositScreens(SCREENS.WITHDRAW)
            else
                DisplayATMError("You have insufficient funds to make a withdrawal.")
            end
        elseif selection == 2 then
            if ExtendedM.PlayerData.cash > 0 then
                OpenWithDepositScreens(SCREENS.DEPOSIT)
            else
                DisplayATMError("You have insufficient cash to make a deposit.")
            end
        elseif selection == 3 then
            DisplayATMError("No transaction logs found.")
        elseif selection == 4 then
            CloseMenu()
        else
            OpenMainMenu()
        end
    elseif current_screen == SCREENS.WITHDRAW or current_screen == SCREENS.DEPOSIT then
        if selection == 4 then
            OpenMainMenu()
        else
            DepositWithdrawal(atm_buttons[selection])
        end
    elseif current_screen == SCREENS.CONFIRM then
        if selection == 1 then
            OpenTransactionPending()
            TriggerServerEvent("ExtendedM:ATM:Transaction", last_transaction_amount, last_transaction_was_withdrawal)
        else
            if last_transaction_was_withdrawal then
                OpenWithDepositScreens(SCREENS.WITHDRAW)
            else
                OpenWithDepositScreens(SCREENS.DEPOSIT)
            end
        end
    elseif current_screen == SCREENS.TRANSACTION_COMPLETE then
        OpenMainMenu()
    end
end

-- Scaleform handler
local current_selection = 0

CreateThread(function()
    while true do
        if atm_scaleform then
            ---@diagnostic disable-next-line: missing-parameter
            if IsPedDeadOrDying(PlayerPedId()) then
                atm_scaleform = nil
                return
            end

            DisableAllControlActions(0)
            DisableFrontendThisFrame()
            ---@diagnostic disable-next-line: param-type-mismatch
            StopCinematicShot(true)

            if GetLastInputMethod(0) then
                SetMouseCursorThisFrame()
                ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "SET_MOUSE_INPUT", GetDisabledControlNormal(0, 239),
                    GetDisabledControlNormal(0, 240))
            else
                ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "setCursorInvisible")
                ExtendedM.Utility.CallScaleformMethod(atm_scaleform, "SET_MOUSE_INPUT", 0, 0)
            end

            if IsDisabledControlJustPressed(0, 201) or IsDisabledControlJustPressed(0, 237) then
                BeginScaleformMovieMethod(atm_scaleform, "GET_CURRENT_SELECTION")
                current_selection = EndScaleformMovieMethodReturnValue()
                
                if IsScaleformMovieMethodReturnValueReady(current_selection) then
                    HandleInput(GetScaleformMovieMethodReturnValueInt(current_selection))
                end
            end

            if IsDisabledControlJustPressed(0, 322) then
                CloseMenu()
            end

            if IsScaleformMovieMethodReturnValueReady(current_selection) then
                HandleInput(GetScaleformMovieMethodReturnValueInt(current_selection))
            end

            DrawScaleformMovieFullscreen(atm_scaleform, 255, 255, 255, 255, 0)
        end

        Wait(0)
    end
end)

RegisterNetEvent("ExtendedM:ATM:TransactionSuccess")
AddEventHandler("ExtendedM:ATM:TransactionSuccess", function()
    if atm_scaleform then
        OpenTransactionComplete()
    end
end)

RegisterNetEvent("ExtendedM:ATM:TransactionError")
AddEventHandler("ExtendedM:ATM:TransactionError", function(err)
    if atm_scaleform then
        DisplayATMError(err)
    end
end)