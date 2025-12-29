---@diagnostic disable: undefined-global

ListComponent = {}

local function GetItemState(index)
    local current = State.selections[State.current_menu_id]
    local last = State.last_selections[State.current_menu_id] or 0
    
    local is_hovering = (current == index)
    local hovered = (current == index and last ~= index)
    local unhovered = (current ~= index and last == index)
    
    return is_hovering, hovered, unhovered
end

---Renders a list item that allows selecting from multiple options.
---@param text string
---@param items table List of item names
---@param selected_index number Currently selected index (1-indexed)
---@param description string | nil
---@return boolean changed
---@return boolean is_hovering
---@return boolean hovered
---@return boolean unhovered
---@return number new_index
function ListComponent.ListItem(text, items, selected_index, description)
    State.item_count = State.item_count + 1
    local is_selected = (State.item_count == State.selections[State.current_menu_id])
    
    if is_selected and description then
        State.current_description = description
    end
    
    local changed = false
    
    if not Core.ShouldRenderItem(State.item_count) then
        return changed, false, false, false, selected_index
    end
    
    local x, y, w, h = State.current_x, State.current_y, Theme.sizes.width, Theme.sizes.item_height
    local mouse_over = Core.IsMouseInBounds(x, y, w, h)
    
    if mouse_over then
        State.selections[State.current_menu_id] = State.item_count
        is_selected = true
    end
    
    if is_selected then
        if Input.state.left_just or (mouse_over and Input.state.mouse_select_just) then
            selected_index = selected_index - 1
            if selected_index < 1 then selected_index = #items end
            changed = true
            PlaySoundFrontend(-1, "NAV_LEFT_RIGHT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
        elseif Input.state.right_just then
            selected_index = selected_index + 1
            if selected_index > #items then selected_index = 1 end
            changed = true
            PlaySoundFrontend(-1, "NAV_LEFT_RIGHT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
        end
    end
    
    local color = is_selected and Theme.colors.selected or Theme.colors.unselected
    local tc = is_selected and Theme.colors.text_hover or Theme.colors.text
    
    Renderer.DrawRect(x, y, w, h, color[1], color[2], color[3], color[4])
    Renderer.DrawText(text, x + Theme.sizes.padding, y + Theme.sizes.text_offset, 0.35, tc[1], tc[2], tc[3], tc[4])
    
    local current_item_text = tostring(items[selected_index])
    local arrow_size = 0.025
    local aspect = GetAspectRatio(false)
    local sw, sh = arrow_size / aspect, arrow_size
    
    local right_arrow_x = x + w - sw - Theme.sizes.padding
    local arrow_y = y + (h - sh) * 0.5
    
    if is_selected then
        Renderer.DrawSprite("commonmenu", "arrowright", right_arrow_x, arrow_y, sw, sh, 0.0, tc[1], tc[2], tc[3], tc[4])
    end
    
    local text_x = is_selected and right_arrow_x or (x + w - Theme.sizes.padding)
    Renderer.DrawText(current_item_text, text_x, y + Theme.sizes.text_offset, 0.35, tc[1], tc[2], tc[3], tc[4], 'right')
    
    if is_selected then
        local text_width = Utils.GetTextWidth(current_item_text, 0.35, 0)
        local left_arrow_x = text_x - text_width - sw
        Renderer.DrawSprite("commonmenu", "arrowleft", left_arrow_x, arrow_y, sw, sh, 0.0, tc[1], tc[2], tc[3], tc[4])
    end
    
    local is_hovering, hovered, unhovered = GetItemState(State.item_count)
    State.current_y = State.current_y + h
    
    return changed, is_hovering, hovered, unhovered, selected_index
end