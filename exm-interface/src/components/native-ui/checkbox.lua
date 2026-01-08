---@diagnostic disable: undefined-global

CheckboxComponent = {}

local function GetItemState(index)
    local current = State.selections[State.current_menu_id]
    local last = State.last_selections[State.current_menu_id] or 0
    
    local is_hovering = (current == index)
    local hovered = (current == index and last ~= index)
    local unhovered = (current ~= index and last == index)
    
    return is_hovering, hovered, unhovered
end

---Renders an interactive checkbox.
---@param item table
function CheckboxComponent.Render(item)
    local index = item.index
    local is_selected = (index == State.selections[State.current_menu_id])
    
    if is_selected and item.description then
        State.current_description = item.description
    end
    
    local x, y, w, h = State.current_x, State.current_y, Theme.sizes.width, Theme.sizes.item_height
    
    local mouse_over = false
    if State.mouse_visible and not State.ignore_mouse then
        mouse_over = (Input.state.mouse_x >= x and Input.state.mouse_x <= x + w and Input.state.mouse_y >= y and Input.state.mouse_y <= y + h)
        
        if mouse_over then
            State.selections[State.current_menu_id] = index
            is_selected = true
        end
    end
    
    local changed = false
    if is_selected and (Input.state.select_just or (mouse_over and Input.state.mouse_select_just)) then
        item.checked = not item.checked
        changed = true
        PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end
    
    local color = is_selected and Theme.colors.selected or Theme.colors.unselected
    local text_color = is_selected and Theme.colors.text_hover or Theme.colors.text
    
    Renderer.DrawRect(x, y, w, h, color[1], color[2], color[3], color[4])
    Renderer.DrawText(item.text, x + Theme.sizes.padding, y + Theme.sizes.text_offset, 0.35, text_color[1], text_color[2], text_color[3], text_color[4])
    
    local sprite = "shop_box_blank"
    if item.checked then
        sprite = is_selected and "shop_tick_icon" or "shop_box_tick"
    end
    
    local size = 0.05
    local aspect = GetAspectRatio(false)
    local sw, sh = size / aspect, size
    local icon_x = x + w - sw - Theme.sizes.padding
    local icon_y = y + (h - sh) * 0.5
    
    Renderer.DrawSprite("commonmenu", sprite, icon_x, icon_y, sw, sh, 0.0, text_color[1], text_color[2], text_color[3], text_color[4])
    
    local is_hovering, hovered, unhovered = GetItemState(index)
    if hovered and item.events.hover then item.events.hover() end
    if unhovered and item.events.unhover then item.events.unhover() end
    if changed and item.events.change then item.events.change(item.checked) end

    State.current_y = State.current_y + h
    
    return false, is_hovering, hovered, unhovered, item.checked
end

---Adds a checkbox to the current menu.
---@param text string
---@param checked boolean
---@param description string | nil
function CheckboxComponent.Checkbox(text, checked, description)
    local id = State.current_menu_id
    if not State.buffered_items[id] then State.buffered_items[id] = {} end
    
    State.build_item_count = State.build_item_count + 1

    local item = {
        type = "Checkbox",
        index = State.build_item_count,
        text = text,
        checked = checked,
        description = description,
        render = CheckboxComponent.Render,
        events = {}
    }

    ---Registers an event callback.
    ---@param event string "change", "hover", "unhover"
    ---@param cb function
    function item:On(event, cb)
        self.events[event] = cb
        return self
    end

    table.insert(State.buffered_items[id], item)
    return item
end