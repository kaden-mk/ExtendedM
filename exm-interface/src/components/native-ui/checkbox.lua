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
---@param text string
---@param checked boolean
---@param description string | nil
---@return boolean changed
---@return boolean is_hovering
---@return boolean hovered
---@return boolean unhovered
---@return boolean new_checked
function CheckboxComponent.Checkbox(text, checked, description)
    State.item_count = State.item_count + 1
    local is_selected = (State.item_count == State.selections[State.current_menu_id])
    
    if is_selected and description then
        State.current_description = description
    end
    
    if not Core.ShouldRenderItem(State.item_count) then
        return checked, false, false, false, false
    end
    
    local x, y, w, h = State.current_x, State.current_y, Theme.sizes.width, Theme.sizes.item_height
    local mouse_over = Core.IsMouseInBounds(x, y, w, h)
    
    if mouse_over then
        State.selections[State.current_menu_id] = State.item_count
        is_selected = true
    end
    
    local changed = false
    if is_selected and (Input.state.select_just or (mouse_over and Input.state.mouse_select_just)) then
        checked = not checked
        changed = true
        PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end
    
    local color = is_selected and Theme.colors.selected or Theme.colors.unselected
    local text_color = is_selected and Theme.colors.text_hover or Theme.colors.text
    
    Renderer.DrawRect(x, y, w, h, color[1], color[2], color[3], color[4])
    Renderer.DrawText(text, x + Theme.sizes.padding, y + Theme.sizes.text_offset, 0.35, text_color[1], text_color[2], text_color[3], text_color[4])
    
    local sprite = "shop_box_blank"
    if checked then
        sprite = is_selected and "shop_tick_icon" or "shop_box_tick"
    end
    
    local size = 0.04
    local aspect = GetAspectRatio(false)
    local sw, sh = size / aspect, size
    local icon_x = x + w - sw - Theme.sizes.padding
    local icon_y = y + (h - sh) * 0.5
    
    Renderer.DrawSprite("commonmenu", sprite, icon_x, icon_y, sw, sh, 0.0, text_color[1], text_color[2], text_color[3], text_color[4])
    
    local is_hovering, hovered, unhovered = GetItemState(State.item_count)
    State.current_y = State.current_y + h
    
    return changed, is_hovering, hovered, unhovered, checked
end