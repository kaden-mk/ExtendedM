ListComponent = {}

local repeat_delay = 400
local start_rate = 200
local min_rate = 40
local repeat_decay = 5
local current_rate = start_rate
local key_held = nil
local key_hold_time = 0

local function GetItemState(index)
    local current = State.selections[State.current_menu_id]
    local last = State.last_selections[State.current_menu_id] or 0
    
    local is_hovering = (current == index)
    local hovered = (current == index and last ~= index)
    local unhovered = (current ~= index and last == index)
    
    return is_hovering, hovered, unhovered
end

---Adds a List item to the current menu buffer.
---@param text string
---@param items table Array of strings
---@param index number Initial selected index
---@param description string | nil
function ListComponent.List(text, items, index, description)
    local id = State.current_menu_id
    if not State.buffered_items[id] then State.buffered_items[id] = {} end
    
    State.build_item_count = State.build_item_count + 1

    local item = {
        type = "List",
        index = State.build_item_count,
        text = text,
        items = items,
        list_index = index,
        description = description,
        render = ListComponent.Render,
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

---Adds a ListIndex (Range) item to the current menu buffer.
---@param text string
---@param min number
---@param max number
---@param step number
---@param index number Initial value (can be float)
---@param description string | nil
function ListComponent.ListIndex(text, min, max, step, index, description)
    local id = State.current_menu_id
    if not State.buffered_items[id] then State.buffered_items[id] = {} end
    
    State.build_item_count = State.build_item_count + 1

    local item = {
        type = "ListIndex",
        index = State.build_item_count,
        text = text,
        min = min,
        max = max,
        step = step,
        value = index,
        description = description,
        render = ListComponent.Render,
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

---Renders a List or ListIndex item.
---@param item table The buffered item data
function ListComponent.Render(item)
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
    
    if is_selected then
        local action = nil
        local current_time = GetGameTimer()

        if Input.state.left_just then
            action = "left"
            key_held = "left"
            current_rate = start_rate
            key_hold_time = current_time + repeat_delay
        elseif Input.state.right_just then
            action = "right"
            key_held = "right"
            current_rate = start_rate
            key_hold_time = current_time + repeat_delay
        elseif Input.state.left_pressed and key_held == "left" and current_time >= key_hold_time then
            action = "left"
            current_rate = math.max(min_rate, current_rate - repeat_decay)
            key_hold_time = current_time + current_rate
        elseif Input.state.right_pressed and key_held == "right" and current_time >= key_hold_time then
            action = "right"
            current_rate = math.max(min_rate, current_rate - repeat_decay)
            key_hold_time = current_time + current_rate
        elseif not Input.state.left_pressed and not Input.state.right_pressed then
            key_held = nil
        end

        if action then
            PlaySoundFrontend(-1, "NAV_LEFT_RIGHT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)

            if item.type == "List" then
                if action == "left" then
                    item.list_index = item.list_index - 1
                    if item.list_index < 1 then item.list_index = #item.items end
                else
                    item.list_index = item.list_index + 1
                    if item.list_index > #item.items then item.list_index = 1 end
                end
                
                if item.events.change then item.events.change(item.list_index, item.items[item.list_index]) end
            elseif item.type == "ListIndex" then
                if action == "left" then
                    item.value = item.value - item.step
                    if item.value < item.min then item.value = item.max end
                else
                    item.value = item.value + item.step
                    if item.value > item.max then item.value = item.min end
                end
                
                local mult = 10 ^ 4 
                item.value = math.floor(item.value * mult + 0.5) / mult

                if item.events.change then item.events.change(item.value) end
            end
        end
    end

    local color = is_selected and Theme.colors.selected or Theme.colors.unselected
    local tc = is_selected and Theme.colors.text_hover or Theme.colors.text
    
    Renderer.DrawRect(x, y, w, h, color[1], color[2], color[3], color[4])
    Renderer.DrawText(item.text, x + Theme.sizes.padding, y + Theme.sizes.text_offset, 0.35, tc[1], tc[2], tc[3], tc[4])
    
    local current_item_text = ""
    if item.type == "List" then
        current_item_text = tostring(item.items[item.list_index])
    else
        current_item_text = string.format("%g", item.value)
    end

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
    
    local _, hovered, unhovered = GetItemState(State.item_count)
    if hovered and item.events.hover then item.events.hover() end
    if unhovered and item.events.unhover then item.events.unhover() end

    State.current_y = State.current_y + h
end