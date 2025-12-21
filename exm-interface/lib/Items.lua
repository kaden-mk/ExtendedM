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

    local current = Core.selections[Core.current_menu_id] or 1
    local total = Core.total_items[Core.current_menu_id] or 0
    local h2 = Render.SubtitleBar(subtitle, current, total, Core.current_x, Core.current_y)
    Core.current_y = Core.current_y + h2
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
    local x, y, w, h = Core.current_x, Core.current_y, Render.sizes.width, Render.sizes.item_height

    if is_selected and description then
        Core.current_description = description
    end

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
    local x, y, w, h = Core.current_x, Core.current_y, Render.sizes.width, Render.sizes.item_height

    if is_selected and description then
        Core.current_description = description
    end

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

    local changed = false
    if is_selected and Input.IsJustPressed(Input.controls.select) then
        checked = not checked
        changed = true
        PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end

    Core.current_y = Core.current_y + h
    return checked, changed
end