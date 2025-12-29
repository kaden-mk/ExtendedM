---@diagnostic disable: undefined-global

Core = {}

local MAX_VISIBLE_ITEMS = 7
local menu_counter = 0
local key_held = nil
local key_hold_time = 0
local repeat_delay = 400
local repeat_rate = 80

---Registers a new menu.
---@param id any | nil
---@param callback function | nil
---@return any menu_id
function Core.RegisterMenu(id, callback)
    if id == nil then
        menu_counter = menu_counter + 1
        id = menu_counter
    end
    
    State.menus[id] = callback
    State.selections[id] = 1
    State.last_selections[id] = 1
    State.total_items[id] = 0
    return id
end

---Sets the current menu ID.
---@param id any
function Core.SetCurrentMenu(id)
    State.current_menu_id = id
end

---Sets the visibility state of a menu.
---@param id any
---@param visible boolean
function Core.SetVisible(id, visible)
    if visible then
        State.menu_stack = {}
        State.current_menu_id = id
        State.last_selections[id] = 0
        State.visible = true
    else
        if State.visible then
            Core.TriggerExit()
        end

        State.visible = false
    end
end


---Sets the disabled controls for a specific menu.
---@param id any
---@param controls table
function Core.SetDisabledControls(id, controls)
    State.disabled_controls[id] = controls
end

---Navigates to a submenu.
---@param submenu_id any
function Core.GoToSubmenu(submenu_id)
    State.menu_stack[#State.menu_stack + 1] = State.current_menu_id
    State.current_menu_id = submenu_id
end

---Navigates back to the parent menu.
---@return boolean success
function Core.GoBack()
    if #State.menu_stack > 0 then
        State.went_back_from = State.current_menu_id
        State.current_menu_id = table.remove(State.menu_stack)

        return true
    end

    return false
end

---Checks if the user just navigated back from a specific menu.
---@param id any
---@return boolean
function Core.WentBack(id)
    if State.went_back_from == id then
        State.went_back_from = nil
        return true
    end

    return false
end

---Resets the selection for a menu.
---@param id any
function Core.ResetSelection(id)
    State.selections[id] = 1
    State.pagination[id] = {min = 1, max = MAX_VISIBLE_ITEMS}
end

---Returns the pagination bounds for a menu.
---@param id any
---@return table {min: number, max: number}
function Core.GetPagination(id)
    if not State.pagination[id] then
        State.pagination[id] = {min = 1, max = MAX_VISIBLE_ITEMS}
    end

    return State.pagination[id]
end

---Checks if an item should be rendered.
---@param index number
---@return boolean
function Core.ShouldRenderItem(index)
    local pag = Core.GetPagination(State.current_menu_id)

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
    return State.is_exiting
end

---Triggers the exit frame for the current menu.
function Core.TriggerExit()
    local id = State.current_menu_id
    if not id or not State.menus[id] then return end
    
    State.is_exiting = true
    
    local old_x, old_y, old_count = State.current_x, State.current_y, State.item_count
    State.current_x = Theme.sizes.x
    State.current_y = Theme.sizes.y
    State.item_count = 0
    State.current_description = nil
    
    if State.menus[id] then
        State.menus[id]()
    end
    
    State.current_x, State.current_y, State.item_count = old_x, old_y, old_count
    State.is_exiting = false
end

---Checks if the mouse cursor is within bounds.
---@param x number
---@param y number
---@param w number
---@param h number
---@return boolean
function Core.IsMouseInBounds(x, y, w, h)
    if not x or not y or not w or not h then return false end
    local mx, my = Input.state.mouse_x, Input.state.mouse_y
    return mx >= x and mx <= x + w and my >= y and my <= y + h
end

---Processes keyboard navigation for the current menu.
---@param max_items number
function Core.ProcessNavigation(max_items)
    local id = State.current_menu_id
    if not State.selections[id] then State.selections[id] = 1 end
    
    State.last_selections[id] = State.selections[id]
    
    local current_time = GetGameTimer()
    
    local function move_up()
        State.selections[id] = State.selections[id] - 1
        if State.selections[id] < 1 then State.selections[id] = max_items end
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end
    
    local function move_down()
        State.selections[id] = State.selections[id] + 1
        if State.selections[id] > max_items then State.selections[id] = 1 end
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end
    
    if Input.state.up_just then
        move_up()
        key_held = "up"
        key_hold_time = current_time + repeat_delay
    elseif Input.state.down_just then
        move_down()
        key_held = "down"
        key_hold_time = current_time + repeat_delay
    elseif key_held == "up" and Input.state.up_pressed then
        if current_time >= key_hold_time then
            move_up()
            key_hold_time = current_time + repeat_rate
        end
    elseif key_held == "down" and Input.state.down_pressed then
        if current_time >= key_hold_time then
            move_down()
            key_hold_time = current_time + repeat_rate
        end
    else
        key_held = nil
    end
    
    if Input.state.back_just then
        if not Core.GoBack() then
            Core.TriggerExit()
            State.visible = false
        end
        PlaySoundFrontend(-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end
end

CreateThread(function()
    while true do
        local wait = 0
        
        if State.visible and State.menus[State.current_menu_id] then
            local disabled = State.disabled_controls[State.current_menu_id]
            Input.DisableControls(disabled)
            Input.UpdateState(disabled)
            
            State.current_x = Theme.sizes.x
            State.current_y = Theme.sizes.y
            State.item_count = 0
            State.current_description = nil
            local id = State.current_menu_id
            local menu_function = State.menus[id]
            
            Core.UpdatePagination(id, State.selections[id] or 1, State.total_items[id] or 0)
            
            if menu_function then
                menu_function()
            end
            
            State.total_items[id] = State.item_count
            
            if State.pending_subtitle then
                Renderer.DrawSubtitleBar(State.pending_subtitle.text, State.selections[id] or 1, State.item_count, State.pending_subtitle.x, State.pending_subtitle.y)
            end
            
            if State.current_menu_id == id then
                if State.item_count > MAX_VISIBLE_ITEMS then
                    local scroll_height = Renderer.DrawScrollIndicator(State.current_x, State.current_y)
                    State.current_y = State.current_y + scroll_height
                end
                
                if State.current_description then
                    Renderer.DrawDescription(State.current_description, State.current_x, State.current_y + Theme.sizes.padding)
                end
                
                Renderer.DrawControlHints()
                Core.ProcessNavigation(State.item_count)
            else
                State.last_selections[State.current_menu_id] = 0
            end
        else
            wait = 100
        end
        
        Wait(wait)
    end
end)