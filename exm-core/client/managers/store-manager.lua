local StoreManager = ExtendedM.StoreManager or {}
local InteractionAreas = {}

---@type NativeUI
local Interface = exports["exm-interface"]:EXMInterface().Native

---@param coords vector3
---@param range number
---@param callback function
---@param text string?
function StoreManager.CreateInteractionArea(coords, range, callback, text)
    table.insert(InteractionAreas, { coords = coords, range = range, callback = callback, text = text })
end

ExtendedM.StoreManager = StoreManager

CreateThread(function()
    local is_any_menu_visible = false
    local last_check_time = 0

    while true do
        local sleep = 1000
        local player_ped = PlayerPedId()
        local player_position = GetEntityCoords(player_ped)
        
        for _, interaction_data in pairs(InteractionAreas) do
            local distance = #(player_position - interaction_data.coords)

            if distance <= (interaction_data.range) then
                sleep = 0
                
                local current_time = GetGameTimer()
                if current_time - last_check_time > 200 then
                    is_any_menu_visible = Interface.IsAnyMenuVisible()
                    last_check_time = current_time
                end

                if distance <= interaction_data.range and not is_any_menu_visible then
                    BeginTextCommandDisplayHelp("STRING")
                    AddTextComponentSubstringPlayerName("Press ~INPUT_CONTEXT~ to " .. (interaction_data.text or "access this interaction."))
                    EndTextCommandDisplayHelp(0, false, true, -1)
                
                    if IsControlJustReleased(0, ExtendedM.Enum.KEYBINDS.E) then
                        interaction_data.callback()
                    end
                end
            end
        end

        Wait(sleep)
    end
end)
