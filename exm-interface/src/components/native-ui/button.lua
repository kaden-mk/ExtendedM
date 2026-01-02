---@diagnostic disable: undefined-global

ButtonComponent = {}

---Gets the item state (hovering, hovered, unhovered).
---@param index number
---@return boolean is_hovering
---@return boolean hovered
---@return boolean unhovered
local function GetItemState(index)
    local current = State.selections[State.current_menu_id]
    local last = State.last_selections[State.current_menu_id] or 0
    
    local is_hovering = (current == index)
    local hovered = (current == index and last ~= index)
    local unhovered = (current ~= index and last == index)
    
    return is_hovering, hovered, unhovered
end

---Renders a button.
---@param item table The item data
---@return boolean clicked
---@return boolean is_hovering
---@return boolean hovered
---@return boolean unhovered
function ButtonComponent.Render(item)   
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
    
    local color = is_selected and Theme.colors.selected or Theme.colors.unselected
    local tc = is_selected and Theme.colors.text_hover or Theme.colors.text
    
    Renderer.DrawRect(x, y, w, h, color[1], color[2], color[3], color[4])
    Renderer.DrawText(item.text, x + Theme.sizes.padding, y + Theme.sizes.text_offset, 0.35, tc[1], tc[2], tc[3], tc[4])
    
    if item.offset_text then
        Renderer.DrawText(item.offset_text, x + w - Theme.sizes.padding, y + Theme.sizes.text_offset, 0.35, tc[1], tc[2], tc[3], tc[4], 'right')
    end
    
    if is_selected and (Input.state.select_just or (mouse_over and Input.state.mouse_select_just)) then
        PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
        
        if item.events.click then item.events.click() end
    end
    
    local is_hovering, hovered, unhovered = GetItemState(index)
    if hovered and item.events.hover then item.events.hover() end
    if unhovered and item.events.unhover then item.events.unhover() end

    State.current_y = State.current_y + h
    
    return false, is_hovering, hovered, unhovered
end

---Adds a button to the current menu.
---@param text string
---@param description string | nil
---@param offset_text string | nil
---@return table item The created item
function ButtonComponent.Button(text, description, offset_text)
    local id = State.current_menu_id
    if not State.buffered_items[id] then State.buffered_items[id] = {} end
    
    State.build_item_count = State.build_item_count + 1

    local item = {
        type = "Button",
        index = State.build_item_count,
        text = text,
        description = description,
        offset_text = offset_text,
        render = ButtonComponent.Render,
        events = {}
    }

    ---Registers an event callback.
    ---@param event string "click", "hover", "unhover"
    ---@param cb function
    function item:On(event, cb)
        self.events[event] = cb
        return self
    end

    table.insert(State.buffered_items[id], item)
    return item
end