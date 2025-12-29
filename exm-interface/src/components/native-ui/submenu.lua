---@diagnostic disable: undefined-global

SubmenuComponent = {}

local function GetItemState(index)
    local current = State.selections[State.current_menu_id]
    local last = State.last_selections[State.current_menu_id] or 0
    
    local is_hovering = (current == index)
    local hovered = (current == index and last ~= index)
    local unhovered = (current ~= index and last == index)
    
    return is_hovering, hovered, unhovered
end

---Renders a submenu item that navigates to another menu.
---@param text string
---@param submenu_id any
---@param description string | nil
---@return boolean entered
---@return boolean is_hovering
---@return boolean hovered
---@return boolean unhovered
function SubmenuComponent.SubMenu(text, submenu_id, description)
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
    
    local entered = false
    
    if is_selected then
        if Input.state.select_just then
            Core.GoToSubmenu(submenu_id)
            PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
            entered = true
        elseif mouse_over and Input.state.mouse_select_just then
            local current_time = GetGameTimer()
            if (current_time - State.last_click.time) < 500 and State.last_click.item == State.item_count then
                Core.GoToSubmenu(submenu_id)
                PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                entered = true
                State.last_click.time = 0
            else
                State.last_click.time = current_time
                State.last_click.item = State.item_count
            end
        end
    end
    
    local color = is_selected and Theme.colors.selected or Theme.colors.unselected
    local text_color = is_selected and Theme.colors.text_hover or Theme.colors.text
    
    Renderer.DrawRect(x, y, w, h, color[1], color[2], color[3], color[4])
    Renderer.DrawText(text, x + Theme.sizes.padding, y + Theme.sizes.text_offset, 0.35, text_color[1], text_color[2], text_color[3], text_color[4])
    
    local is_hovering, hovered, unhovered = GetItemState(State.item_count)
    State.current_y = State.current_y + h
    
    return entered, is_hovering, hovered, unhovered
end

return SubMenu