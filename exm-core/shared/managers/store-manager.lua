ExtendedM = ExtendedM or {}

local InteractionAreas = {}
local StoreManager = {}
StoreManager.StoreTypes = {}

-- Creates a store type for later stores to use as as template.
---@param type_name string
---@param data { callback: function }
function StoreManager.CreateStoreType(type_name, data)
    assert(StoreManager.StoreTypes[type_name] == nil, "[STOREMANAGER]: StoreType: " .. type_name .. " already exists!")

    StoreManager.StoreTypes[type_name] = data
end

-- Generates a store using a type as a template.
---@param type_name string
---@param ... any
function StoreManager.GenerateStore(type_name, ...)
    local store_data = StoreManager.StoreTypes[type_name]
    assert(store_data, "[STOREMANAGER]: StoreType: " .. type_name .. " doesn't exist!")

    store_data.callback(...)
end

-- [CLIENT ONLY] Creates an interaction area & runs a callback when InputContext is hit. Currently there is no way to remove one once created.
---@param coords vector3
---@param range number
---@param callback function
---@param text string?
function StoreManager.CreateInteractionArea(coords, range, callback, text)
    if IsDuplicityVersion() then return end

    table.insert(InteractionAreas, { coords = coords, range = range, callback = callback, text = text })
end

ExtendedM.StoreManager = StoreManager

CreateThread(function()
    if IsDuplicityVersion() then return end

    ---@type NativeUI
    local Interface = exports["exm-interface"]:EXMInterface().Native

    local is_any_menu_visible = false
    local last_check_time = 0

    while true do
        -- this is so stupid because a function shouldnt fucking take 0.3ms
        local current_time = GetGameTimer()
        if current_time - last_check_time > 100 then
            is_any_menu_visible = Interface.IsAnyMenuVisible()
            last_check_time = current_time
        end

        local player_position = GetEntityCoords(GetPlayerPed(PlayerId()))
        for _, interaction_data in pairs(InteractionAreas) do
            local distance = #(player_position - interaction_data.coords)

            if distance <= interaction_data.range and not is_any_menu_visible then
                BeginTextCommandDisplayHelp("STRING")
                AddTextComponentSubstringPlayerName("Press ~INPUT_CONTEXT~ to " .. (interaction_data.text or "access this interaction."))
                EndTextCommandDisplayHelp(0, false, true, -1)
            
                if IsControlJustReleased(0, ExtendedM.Enum.KEYBINDS.E) then
                    interaction_data.callback()
                end
            end
        end

        Wait(0)
    end
end)