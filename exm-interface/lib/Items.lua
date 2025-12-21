EXMInterface = EXMInterface or {}
EXMInterface.Items = {}

local Core = EXMInterface.Core
local Render = EXMInterface.Render
local Input = EXMInterface.Input
local Items = EXMInterface.Items

---Renders the header for the current menu.
---@param title string
---@param subtitle string
---@param r number | nil
---@param g number | nil
---@param b number | nil
---@param a number | nil
function Items.Header(title, subtitle, r, g, b, a)
    local h1 = Render.Banner(title, Core.current_x, Core.current_y, r, g, b, a)
    Core.current_y = Core.current_y + h1

    Core.pending_subtitle = {
        text = subtitle,
        x = Core.current_x,
        y = Core.current_y
    }
    
    -- Reserve space for usage in current_y, but render later
    Core.current_y = Core.current_y + Render.sizes.subtitle_height
end

---Renders a sprite header for the current menu.
---@param dict string
---@param texture string
---@param subtitle string
function Items.SpriteHeader(dict, texture, subtitle)
    local h1 = Render.SpriteBanner(dict, texture, Core.current_x, Core.current_y)
    Core.current_y = Core.current_y + h1

    Core.pending_subtitle = {
        text = subtitle,
        x = Core.current_x,
        y = Core.current_y
    }
    
    Core.current_y = Core.current_y + Render.sizes.subtitle_height
end

---Renders a plain text label.
---@param text string
function Items.Label(text)
    Render.Rect(Core.current_x, Core.current_y, Render.sizes.width, Render.sizes.item_height,
        table.unpack(Render.colors.unselected))
    Render.Text(text, Core.current_x + Render.sizes.padding, Core.current_y + Render.sizes.text_offset, 0.35,
        table.unpack(Render.colors.text))
    Core.current_y = Core.current_y + Render.sizes.item_height
end

---Renders a clickable button.
---@param text string
---@param description string | nil
---@param offset_text string | nil
---@return boolean
function Items.Button(text, description, offset_text)
    Core.item_count = Core.item_count + 1
    local is_selected = (Core.item_count == Core.selections[Core.current_menu_id])

    if is_selected and description then
        Core.current_description = description
    end

    if not Core.ShouldRenderItem(Core.item_count) then
        return is_selected and Input.IsJustPressed(Input.controls.select)
    end

    local x, y, w, h = Core.current_x, Core.current_y, Render.sizes.width, Render.sizes.item_height

    if is_selected then
        Render.Rect(x, y, w, h, table.unpack(Render.colors.selected))
    else
        Render.Rect(x, y, w, h, table.unpack(Render.colors.unselected))
    end

    local tc = is_selected and Render.colors.text_hover or Render.colors.text
    Render.Text(text, x + Render.sizes.padding, y + Render.sizes.text_offset, 0.35, tc[1], tc[2], tc[3], tc[4])

    if offset_text then
        Render.Text(offset_text, x + w - Render.sizes.padding, y + Render.sizes.text_offset, 0.35, tc[1], tc[2], tc[3],
            tc[4], 'right')
    end

    local clicked = false
    if is_selected and Input.IsJustPressed(Input.controls.select) then
        clicked = true
        PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end

    Core.current_y = Core.current_y + h
    return clicked
end

---Renders an interactive checkbox.
---@param text string
---@param checked boolean
---@param description string | nil
---@return boolean, boolean
function Items.Checkbox(text, checked, description)
    Core.item_count = Core.item_count + 1
    local is_selected = (Core.item_count == Core.selections[Core.current_menu_id])

    if is_selected and description then
        Core.current_description = description
    end

    local changed = false
    if is_selected and Input.IsJustPressed(Input.controls.select) then
        checked = not checked
        changed = true
        PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end

    if not Core.ShouldRenderItem(Core.item_count) then
        return checked, changed
    end

    local x, y, w, h = Core.current_x, Core.current_y, Render.sizes.width, Render.sizes.item_height

    if is_selected then
        Render.Rect(x, y, w, h, table.unpack(Render.colors.selected))
    else
        Render.Rect(x, y, w, h, table.unpack(Render.colors.unselected))
    end

    local tc = is_selected and Render.colors.text_hover or Render.colors.text
    Render.Text(text, x + Render.sizes.padding, y + Render.sizes.text_offset, 0.35, tc[1], tc[2], tc[3], tc[4])

    local sprite = "shop_box_blank"
    if checked then
        sprite = is_selected and "shop_tick_icon" or "shop_box_tick"
    end

    local size = 0.04
    local aspect = GetAspectRatio(false)
    local sw, sh = size / aspect, size
    local icon_x = x + w - sw - Render.sizes.padding
    local icon_y = y + (h - sh) * 0.5

    Render.Sprite("commonmenu", sprite, icon_x, icon_y, sw, sh, 0.0, tc[1], tc[2], tc[3], tc[4])

    Core.current_y = Core.current_y + h
    return checked, changed
end

---Renders a submenu item that navigates to another menu.
---@param text string
---@param submenu_id any
---@param description string | nil
---@return boolean True when the player enters the submenu
function Items.SubMenu(text, submenu_id, description)
    Core.item_count = Core.item_count + 1
    local is_selected = (Core.item_count == Core.selections[Core.current_menu_id])

    if is_selected and description then
        Core.current_description = description
    end

    local entered = false
    if is_selected and Input.IsJustPressed(Input.controls.select) then
        Core.GoToSubmenu(submenu_id)
        PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
        entered = true
    end

    if not Core.ShouldRenderItem(Core.item_count) then
        return entered
    end

    local x, y, w, h = Core.current_x, Core.current_y, Render.sizes.width, Render.sizes.item_height

    if is_selected then
        Render.Rect(x, y, w, h, table.unpack(Render.colors.selected))
    else
        Render.Rect(x, y, w, h, table.unpack(Render.colors.unselected))
    end

    local tc = is_selected and Render.colors.text_hover or Render.colors.text
    Render.Text(text, x + Render.sizes.padding, y + Render.sizes.text_offset, 0.35, tc[1], tc[2], tc[3], tc[4])

    Core.current_y = Core.current_y + h
    return entered
end

---Renders a list item that allows selecting from multiple options.
---@param text string
---@param items table
---@param current_index number
---@param description string | nil
---@return number The updated index
function Items.ListItem(text, items, current_index, description)
    Core.item_count = Core.item_count + 1
    local is_selected = (Core.item_count == Core.selections[Core.current_menu_id])

    if is_selected and description then
        Core.current_description = description
    end

    local new_index = current_index

    if is_selected then
        if Input.IsJustPressed(Input.controls.left) then
            new_index = current_index - 1
            if new_index < 1 then new_index = #items end
            PlaySoundFrontend(-1, "NAV_LEFT_RIGHT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
        elseif Input.IsJustPressed(Input.controls.right) then
            new_index = current_index + 1
            if new_index > #items then new_index = 1 end
            PlaySoundFrontend(-1, "NAV_LEFT_RIGHT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
        end
    end

    if not Core.ShouldRenderItem(Core.item_count) then
        return new_index
    end

    local x, y, w, h = Core.current_x, Core.current_y, Render.sizes.width, Render.sizes.item_height

    if is_selected then
        Render.Rect(x, y, w, h, table.unpack(Render.colors.selected))
    else
        Render.Rect(x, y, w, h, table.unpack(Render.colors.unselected))
    end

    local tc = is_selected and Render.colors.text_hover or Render.colors.text
    Render.Text(text, x + Render.sizes.padding, y + Render.sizes.text_offset, 0.35, tc[1], tc[2], tc[3], tc[4])

    local current_item_text = tostring(items[current_index])
    local arrow_size = 0.025
    local aspect = GetAspectRatio(false)
    local sw, sh = arrow_size / aspect, arrow_size
    
    local right_arrow_x = x + w - sw - Render.sizes.padding
    local arrow_y = y + (h - sh) * 0.5
    
    if is_selected then
        Render.Sprite("commonmenu", "arrowright", right_arrow_x, arrow_y, sw, sh, 0.0, tc[1], tc[2], tc[3], tc[4])
    end
    
    local text_x = is_selected and right_arrow_x or (x + w - Render.sizes.padding)
    Render.Text(current_item_text, text_x, y + Render.sizes.text_offset, 0.35, tc[1], tc[2], tc[3], tc[4], 'right')
    
    if is_selected then
        local text_width = Render.GetTextWidth(current_item_text, 0.35, 0)
        local left_arrow_x = text_x - text_width - sw
        
        Render.Sprite("commonmenu", "arrowleft", left_arrow_x, arrow_y, sw, sh, 0.0, tc[1], tc[2], tc[3], tc[4])
    end

    Core.current_y = Core.current_y + h
    return new_index
end