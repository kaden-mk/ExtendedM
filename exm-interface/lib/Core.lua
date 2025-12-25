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
Core.last_selections = {}
Core.total_items = {}
Core.current_description = nil
Core.menu_stack = {}
Core.went_back_from = nil
Core.pagination = {}
Core.pending_subtitle = nil
Core.is_exiting = false
Core.mouse_active = false
Core.last_click = { time = 0, item = 0 }

local MAX_VISIBLE_ITEMS = 7
local menu_counter = 0
local key_held = nil
local key_hold_time = 0
local repeat_delay = 400
local repeat_rate = 80

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
    Core.last_selections[id] = 1
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
        Core.menu_stack = {}
        Core.current_menu_id = id
        Core.last_selections[id] = 0
        Core.visible = true
    else
        if Core.visible then
            Core.TriggerExit()
        end
        
        Core.visible = false
    end
end

---Navigates to a submenu, pushing the current menu onto the stack.
---@param submenu_id any
function Core.GoToSubmenu(submenu_id)
    table.insert(Core.menu_stack, Core.current_menu_id)
    Core.current_menu_id = submenu_id
end

---Navigates back to the parent menu.
---@return boolean True if returned to a parent, false if no parent (will close)
function Core.GoBack()
    if #Core.menu_stack > 0 then
        Core.went_back_from = Core.current_menu_id
        Core.current_menu_id = table.remove(Core.menu_stack)
        return true
    end

    return false
end

---Checks if the user just navigated back from a specific menu.
---@param id any The menu ID to check
---@return boolean True if the user just went back from this menu
function Core.WentBack(id)
    if Core.went_back_from == id then
        Core.went_back_from = nil
        return true
    end

    return false
end

---Resets the selection (cursor position) for a menu to the first item.
---@param id any The menu ID to reset
function Core.ResetSelection(id)
    Core.selections[id] = 1
    Core.pagination[id] = {min = 1, max = MAX_VISIBLE_ITEMS}
end

---Returns the pagination bounds for a menu.
---@param id any
---@return table {min, max}
function Core.GetPagination(id)
    if not Core.pagination[id] then
        Core.pagination[id] = {min = 1, max = MAX_VISIBLE_ITEMS}
    end

    return Core.pagination[id]
end

---Checks if an item at the given index should be rendered.
---@param index number The item index (1-based)
---@return boolean
function Core.ShouldRenderItem(index)
    local id = Core.current_menu_id
    local pag = Core.GetPagination(id)

    return index >= pag.min and index <= pag.max
end

---Updates pagination based on current selection.
---@param id any
---@param selection number
---@param total number
function Core.UpdatePagination(id, selection, total)
    local pag = Core.GetPagination(id)
    
    if total <= MAX_VISIBLE_ITEMS then
        pag.min = 1
        pag.max = MAX_VISIBLE_ITEMS
        return
    end
    
    if selection < pag.min then
        pag.min = selection
        pag.max = selection + MAX_VISIBLE_ITEMS - 1
    elseif selection > pag.max then
        pag.max = selection
        pag.min = selection - MAX_VISIBLE_ITEMS + 1
    end
end

---Checks if the menu is currently exiting.
---@return boolean
function Core.IsExiting()
    return Core.is_exiting
end

---Triggers the exit frame for the current menu.
function Core.TriggerExit()
    local id = Core.current_menu_id
    if not id or not Core.menus[id] then return end

    Core.is_exiting = true
    
    local old_x = Core.current_x
    local old_y = Core.current_y
    local old_count = Core.item_count
    
    Core.current_x = Render.sizes.x
    Core.current_y = Render.sizes.y
    Core.item_count = 0
    Core.current_description = nil

    if Core.menus[id] then
        Core.menus[id]()
    end

    Core.current_x = old_x
    Core.current_y = old_y
    Core.item_count = old_count
    
    Core.is_exiting = false
end

---Checks if the mouse cursor is within the specified bounds.
---@param x number
---@param y number
---@param w number
---@param h number
---@return boolean
function Core.IsMouseInBounds(x, y, w, h)
    if not x or not y or not w or not h then return false end

    local mx = GetControlNormal(0, 239)
    local my = GetControlNormal(0, 240)
    
    return mx >= x and mx <= x + w and my >= y and my <= y + h
end

---Processes keyboard navigation for the current menu.
---@param max_items number
function Core.ProcessNavigation(max_items)
    local id = Core.current_menu_id
    if not Core.selections[id] then Core.selections[id] = 1 end
    
    Core.last_selections[id] = Core.selections[id]

    local current_time = GetGameTimer()
    local up_pressed = Input.IsPressed(Input.controls.up)
    local down_pressed = Input.IsPressed(Input.controls.down)
    local up_just = Input.IsJustPressed(Input.controls.up)
    local down_just = Input.IsJustPressed(Input.controls.down)

    local function move_up()
        Core.selections[id] = Core.selections[id] - 1
        if Core.selections[id] < 1 then Core.selections[id] = max_items end
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end

    local function move_down()
        Core.selections[id] = Core.selections[id] + 1
        if Core.selections[id] > max_items then Core.selections[id] = 1 end
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end

    if IsControlJustPressed(0, 241) then
        move_up()
    elseif IsControlJustPressed(0, 242) then 
        move_down()
    end

    if up_just then
        move_up()
        key_held = "up"
        key_hold_time = current_time + repeat_delay
    elseif down_just then
        move_down()
        key_held = "down"
        key_hold_time = current_time + repeat_delay
    elseif key_held == "up" and up_pressed then
        if current_time >= key_hold_time then
            move_up()
            key_hold_time = current_time + repeat_rate
        end
    elseif key_held == "down" and down_pressed then
        if current_time >= key_hold_time then
            move_down()
            key_hold_time = current_time + repeat_rate
        end
    else
        key_held = nil
    end

    if Input.IsJustPressed(Input.controls.back) then
        if not Core.GoBack() then
            Core.TriggerExit()
            Core.visible = false
        end
        
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
            local id = Core.current_menu_id
            local menu_function = Core.menus[id]

            Core.UpdatePagination(id, Core.selections[id] or 1, Core.total_items[id] or 0)

            if menu_function then
                menu_function()
            end

            Core.total_items[id] = Core.item_count

            if Core.pending_subtitle then
               Render.SubtitleBar(Core.pending_subtitle.text, Core.selections[id] or 1, Core.item_count, Core.pending_subtitle.x, Core.pending_subtitle.y)
            end

            if Core.current_menu_id == id then
                if Core.item_count > MAX_VISIBLE_ITEMS then
                    local scroll_height = Render.ScrollIndicator(Core.current_x, Core.current_y)
                    Core.current_y = Core.current_y + scroll_height
                end

                if Core.current_description then
                    Render.Description(Core.current_description, Core.current_x, Core.current_y + Render.sizes.padding)
                end

                Render.ControlHints()

                Core.ProcessNavigation(Core.item_count)
            else
                Core.last_selections[Core.current_menu_id] = 0
            end
        else
            wait = 100
        end

        Citizen.Wait(wait)
    end
end)
