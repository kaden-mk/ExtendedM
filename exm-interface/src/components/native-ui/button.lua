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

---Renders a clickable button.
---@param text string
---@param description string | nil
---@param offset_text string | nil
---@return boolean clicked
---@return boolean is_hovering
---@return boolean hovered
---@return boolean unhovered
function ButtonComponent.Button(text, description, offset_text)
    State.item_count = State.item_count + 1
    local is_selected = (State.item_count == State.selections[State.current_menu_id])
    
    if is_selected and description then
        State.current_description = description
    end
    
    if not Core.ShouldRenderItem(State.item_count) then
        return Input.state.select_just and is_selected, false, false, false
    end
    
    local x, y, w, h = State.current_x, State.current_y, Theme.sizes.width, Theme.sizes.item_height
    local mouse_over = Core.IsMouseInBounds(x, y, w, h)
    
    if mouse_over then
        State.selections[State.current_menu_id] = State.item_count
        is_selected = true
    end
    
    local color = is_selected and Theme.colors.selected or Theme.colors.unselected
    local tc = is_selected and Theme.colors.text_hover or Theme.colors.text
    
    Renderer.DrawRect(x, y, w, h, color[1], color[2], color[3], color[4])
    Renderer.DrawText(text, x + Theme.sizes.padding, y + Theme.sizes.text_offset, 0.35, tc[1], tc[2], tc[3], tc[4])
    
    if offset_text then
        Renderer.DrawText(offset_text, x + w - Theme.sizes.padding, y + Theme.sizes.text_offset, 0.35, tc[1], tc[2], tc[3], tc[4], 'right')
    end
    
    local clicked = false
    if is_selected and (Input.state.select_just or (mouse_over and Input.state.mouse_select_just)) then
        clicked = true
        PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end
    
    local is_hovering, hovered, unhovered = GetItemState(State.item_count)
    State.current_y = State.current_y + h
    
    return clicked, is_hovering, hovered, unhovered
end