EXMInterface = EXMInterface or {}
EXMInterface.Render = {}

local Render = EXMInterface.Render

Render.colors = {
    header = { 93, 182, 229, 255 },
    subtitle = { 0, 0, 0, 255 },
    selected = { 255, 255, 255, 255 },
    unselected = { 15, 15, 15, 160 },
    text = { 255, 255, 255, 255 },
    text_hover = { 0, 0, 0, 255 },
    description = { 0, 0, 0, 200 }
}

Render.sizes = {
    x = 0.015,
    y = 0.015,
    width = 0.225,
    header_height = 0.09,
    subtitle_height = 0.035,
    item_height = 0.035,
    padding = 0.005,
    text_offset = 0.003
}

---Renders a rectangle on screen.
---@param x number
---@param y number
---@param w number
---@param h number
---@param r number
---@param g number
---@param b number
---@param a number
function Render.Rect(x, y, w, h, r, g, b, a)
    DrawRect(x + w * 0.5, y + h * 0.5, w, h, r, g, b, a)
end

---Renders a sprite on screen.
---@param dict string
---@param name string
---@param x number
---@param y number
---@param w number
---@param h number
---@param rot number
---@param r number
---@param g number
---@param b number
---@param a number
function Render.Sprite(dict, name, x, y, w, h, rot, r, g, b, a)
    if not HasStreamedTextureDictLoaded(dict) then
        RequestStreamedTextureDict(dict, true)
    end

    DrawSprite(dict, name, x + w * 0.5, y + h * 0.5, w, h, rot or 0.0, r, g, b, a)
end

---Adds a long string by splitting it into 99-character chunks.
---@param text string
function Render.AddLongString(text)
    for i = 1, #text, 99 do
        local sub = string.sub(text, i, i + 98)
        AddTextComponentSubstringPlayerName(sub)
    end
end

---Renders text on screen with alignment.
---@param text string
---@param x number
---@param y number
---@param scale number
---@param r number
---@param g number
---@param b number
---@param a number
---@param align string | nil
---@param font number | nil
---@param wrap_width number | nil
function Render.Text(text, x, y, scale, r, g, b, a, align, font, wrap_width)
    SetTextFont(font or 0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)

    local finish_x = x
    SetTextWrap(0.0, 1.0)
    SetTextCentre(false)
    SetTextRightJustify(false)

    if align == 'center' then
        SetTextCentre(true)
    elseif align == 'right' then
        SetTextWrap(0.0, x)
        SetTextRightJustify(true)
        finish_x = 0.0
    elseif wrap_width then
        SetTextWrap(x, x + wrap_width)
    end

    BeginTextCommandDisplayText("STRING")
    Render.AddLongString(text)
    EndTextCommandDisplayText(finish_x, y)
end

---Calculates the width of a text string.
---@param text string
---@param scale number
---@param font number
---@return number
function Render.GetTextWidth(text, scale, font)
    if not text then return 0.0 end

    SetTextFont(font or 0)
    SetTextScale(scale, scale)
    BeginTextCommandGetWidth("STRING")

    Render.AddLongString(text)

    return EndTextCommandGetWidth(true)
end

---Calculates the wrapped text and number of lines.
---@param text string
---@param width number
---@param scale number
---@param font number
---@return string, number
function Render.GetWrappedText(text, width, scale, font)
    if not text or text == "" then return "", 0 end

    SetTextFont(font or 0)
    SetTextScale(scale, scale)
    
    local words = {}
    for word in string.gmatch(text, "%S+") do
        table.insert(words, word)
    end

    local wrapped_text = ""
    local current_line = ""
    local line_count = 1

    for i, word in ipairs(words) do
        local test_line = current_line == "" and word or (current_line .. " " .. word)
        
        BeginTextCommandGetWidth("STRING")
        Render.AddLongString(test_line)
        local line_width = EndTextCommandGetWidth(true)

        if line_width > width then
            wrapped_text = wrapped_text .. current_line .. "\n"
            current_line = word
            line_count = line_count + 1
        else
            current_line = test_line
        end
    end

    wrapped_text = wrapped_text .. current_line
    return wrapped_text, line_count
end

---Renders the main banner/header.
---@param title string
---@param x number
---@param y number
---@param r number | nil
---@param g number | nil
---@param b number | nil
---@param a number | nil
---@return number
function Render.Banner(title, x, y, r, g, b, a)
    local w = Render.sizes.width
    local h = Render.sizes.header_height
    local hr, hg, hb, ha = table.unpack(Render.colors.header)
    Render.Sprite("commonmenu", "interaction_bgd", x, y, w, h, 0.0, r or hr, g or hg, b or hb, a or ha)
    Render.Text(title, x + w * 0.5, y + 0.015, 1.0, 255, 255, 255, 255, 'center', 1)

    return h
end

---Renders a sprite banner.
---@param dict string
---@param texture string
---@param x number
---@param y number
---@return number
function Render.SpriteBanner(dict, texture, x, y)
    local w = Render.sizes.width
    local h = Render.sizes.header_height
    Render.Sprite(dict, texture, x, y, w, h, 0.0, 255, 255, 255, 255)
    
    return h
end

---Renders the subtitle bar.
---@param subtitle string
---@param current number
---@param total number
---@param x number
---@param y number
---@return number
function Render.SubtitleBar(subtitle, current, total, x, y)
    local w = Render.sizes.width
    local h = Render.sizes.subtitle_height
    local sr, sg, sb, sa = table.unpack(Render.colors.subtitle)
    Render.Sprite("commonmenu", "gradient_nav", x, y, w, h, 0.0, sr, sg, sb, sa)
    Render.Text(subtitle:upper(), x + Render.sizes.padding, y + Render.sizes.text_offset, 0.35, 255, 255, 255, 255)

    if total > 0 then
        local count_text = string.format("%d / %d", current, total)
        Render.Text(count_text, x + w - Render.sizes.padding, y + Render.sizes.text_offset, 0.35, 255, 255, 255, 255, 'right')
    end

    return h
end

---Renders the description box.
---@param text string
---@param x number
---@param y number
---@return number
function Render.Description(text, x, y)
    local w = Render.sizes.width
    local padding = Render.sizes.padding
    local text_scale = 0.35
    local font = 0
    
    local wrapped_text, line_count = Render.GetWrappedText(text, w - (padding * 2), text_scale, font)
    
    local line_height = 0.022
    local h = (line_count > 1) and (0.015 + (line_count * line_height)) or 0.034
    
    local dr, dg, db, da = table.unpack(Render.colors.description)
    Render.Rect(x, y, w, 0.004, 0, 0, 0, 255)
    Render.Sprite("commonmenu", "gradient_bgd", x, y + 0.004, w, h, 0.0, dr, dg, db, da)
    
    local lines = {}
    for line in string.gmatch(wrapped_text, "[^\n]+") do
        table.insert(lines, line)
    end
    
    local text_y = y + 0.002 + Render.sizes.text_offset
    for i, line in ipairs(lines) do
        Render.Text(line, x + padding, text_y, text_scale, 255, 255, 255, 255, nil, font)
        text_y = text_y + line_height
    end
    
    return h + 0.002
end

---Renders the scroll indicator bar when there are more items than visible.
---@param x number
---@param y number
---@return number Height of the scroll indicator
function Render.ScrollIndicator(x, y)
    local w = Render.sizes.width
    local bar_height = 0.018
    local total_height = bar_height * 2
    
    Render.Rect(x, y, w, bar_height, 0, 0, 0, 200)
    Render.Rect(x, y + bar_height, w, bar_height, 0, 0, 0, 200)
    
    local aspect = GetAspectRatio(false)
    local arrow_w = 0.04 / aspect
    local arrow_h = 0.04
    local arrow_x = x + (w - arrow_w) * 0.5
    local arrow_y = y + (total_height - arrow_h) * 0.5
    
    Render.Sprite("commonmenu", "shop_arrows_upanddown", arrow_x, arrow_y, arrow_w, arrow_h, 0.0, 255, 255, 255, 255)
    
    return total_height
end

---Renders instructional buttons at the bottom right of screen.
function Render.ControlHints()
    if not Render.instructional_scaleform then
        Render.instructional_scaleform = RequestScaleformMovie("instructional_buttons")
    end

    if not HasScaleformMovieLoaded(Render.instructional_scaleform) then return end

    BeginScaleformMovieMethod(Render.instructional_scaleform, "CLEAR_ALL")
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(Render.instructional_scaleform, "SET_CLEAR_SPACE")
    ScaleformMovieMethodAddParamInt(200)
    EndScaleformMovieMethod()

    local button_index = 0

    BeginScaleformMovieMethod(Render.instructional_scaleform, "SET_DATA_SLOT")
    ScaleformMovieMethodAddParamInt(button_index)
    ScaleformMovieMethodAddParamPlayerNameString(GetControlInstructionalButton(0, 176, true))
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("Select")
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()
    button_index = button_index + 1

    BeginScaleformMovieMethod(Render.instructional_scaleform, "SET_DATA_SLOT")
    ScaleformMovieMethodAddParamInt(button_index)
    ScaleformMovieMethodAddParamPlayerNameString(GetControlInstructionalButton(0, 200, true))
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("Back")
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(Render.instructional_scaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
    EndScaleformMovieMethod()

    DrawScaleformMovieFullscreen(Render.instructional_scaleform, 255, 255, 255, 255, 0)
end