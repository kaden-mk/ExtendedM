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

---Renders a submenu item (Retained Mode).
---@param item table
function SubmenuComponent.Render(item)
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
    
    local entered = false
    
    if is_selected then
        if Input.state.select_just then
            Core.GoToSubmenu(item.submenu_id)
            PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
            entered = true
        elseif mouse_over and Input.state.mouse_select_just then
            local current_time = GetGameTimer()

            if (current_time - State.last_click.time) < 500 and State.last_click.item == index then
                Core.GoToSubmenu(item.submenu_id)
                PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                entered = true
                State.last_click.time = 0
            else
                State.last_click.time = current_time
                State.last_click.item = index
            end
        end
    end
    
    local color = is_selected and Theme.colors.selected or Theme.colors.unselected
    local text_color = is_selected and Theme.colors.text_hover or Theme.colors.text
    
    Renderer.DrawRect(x, y, w, h, color[1], color[2], color[3], color[4])
    Renderer.DrawText(item.text, x + Theme.sizes.padding, y + Theme.sizes.text_offset, 0.35, text_color[1], text_color[2], text_color[3], text_color[4])
    
    local is_hovering, hovered, unhovered = GetItemState(index)
    if hovered and item.events.hover then item.events.hover() end
    if unhovered and item.events.unhover then item.events.unhover() end
    if entered and item.events.click then item.events.click() end

    State.current_y = State.current_y + h
    
    return false, is_hovering, hovered, unhovered
end

---Adds a submenu item to the buffer.
---@param text string
---@param submenu_id any
---@param description string | nil
function SubmenuComponent.SubMenu(text, submenu_id, description)
    local id = State.current_menu_id
    if not State.buffered_items[id] then State.buffered_items[id] = {} end
    
    State.build_item_count = State.build_item_count + 1

    local item = {
        type = "SubMenu",
        index = State.build_item_count,
        text = text,
        submenu_id = submenu_id,
        description = description,
        render = SubmenuComponent.Render,
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