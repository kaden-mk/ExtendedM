EXMInterface = EXMInterface or {}
EXMInterface.Core = {}

local Core = EXMInterface.Core
local Render = EXMInterface.Render
local Input = EXMInterface.Input

Core.visible = false
Core.current_menu_id = 0
Core.menus = {}

Core.current_y = 0
Core.current_x = 0
Core.item_count = 0
Core.selections = {}
Core.total_items = {}
Core.current_description = nil

local menu_counter = 0

---Registers a new menu.
---@param id any | nil The menu ID
---@param callback function | nil  The callback function
---@return any The menu ID
function Core.RegisterMenu(id, callback)
    if id == nil then
        menu_counter = menu_counter + 1
        id = menu_counter
    end

    Core.menus[id] = callback
    Core.selections[id] = 1
    Core.total_items[id] = 0
    return id
end

---Sets the current menu ID.
---@param id any
function Core.SetCurrentMenu(id)
    Core.current_menu_id = id
end

---Sets the visibility state of a menu.
---@param id any
---@param visible boolean
function Core.SetVisible(id, visible)
    if visible then
        Core.current_menu_id = id
        Core.visible = true
    else
        Core.visible = false
    end
end

---Processes keyboard navigation for the current menu.
---@param max_items number
function Core.ProcessNavigation(max_items)
    local id = Core.current_menu_id
    if not Core.selections[id] then Core.selections[id] = 1 end

    if Input.IsJustPressed(Input.controls.up) then
        Core.selections[id] = Core.selections[id] - 1
        if Core.selections[id] < 1 then Core.selections[id] = max_items end
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    elseif Input.IsJustPressed(Input.controls.down) then
        Core.selections[id] = Core.selections[id] + 1
        if Core.selections[id] > max_items then Core.selections[id] = 1 end
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    elseif Input.IsJustPressed(Input.controls.back) then
        Core.visible = false
        PlaySoundFrontend(-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end
end

Citizen.CreateThread(function()
    while true do
        local wait = 0
        if Core.visible and Core.menus[Core.current_menu_id] then
            Input.DisableControls()
            Core.current_x = Render.sizes.x
            Core.current_y = Render.sizes.y
            Core.item_count = 0
            Core.current_description = nil
            local menu_function = Core.menus[Core.current_menu_id]

            if menu_function then
                menu_function()
            end

            Core.total_items[Core.current_menu_id] = Core.item_count

            if Core.current_description then
                Render.Description(Core.current_description, Core.current_x, Core.current_y + Render.sizes.padding)
            end

            Core.ProcessNavigation(Core.item_count)
        else
            wait = 100
        end

        Citizen.Wait(wait)
    end
end)
