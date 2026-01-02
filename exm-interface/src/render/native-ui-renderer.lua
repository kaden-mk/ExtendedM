Renderer = {}

Renderer.instructional_scaleform = nil

---Renders a rectangle on screen.
---@param x number
---@param y number
---@param w number
---@param h number
---@param r number
---@param g number
---@param b number
---@param a number
function Renderer.DrawRect(x, y, w, h, r, g, b, a)
    if not x or not y or not w or not h then 
        return 
    end
    r = r or 255
    g = g or 255
    b = b or 255
    a = a or 255
    
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
function Renderer.DrawSprite(dict, name, x, y, w, h, rot, r, g, b, a)
    if not dict or not name then return end
    
    if not HasStreamedTextureDictLoaded(dict) then
        RequestStreamedTextureDict(dict, true)
    end
    
    DrawSprite(dict, name, x + w * 0.5, y + h * 0.5, w, h, rot or 0.0, r or 255, g or 255, b or 255, a or 255)
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
function Renderer.DrawText(text, x, y, scale, r, g, b, a, align, font, wrap_width)
    if not text then return end
    
    SetTextFont(font or 0)
    SetTextScale(scale or 0.35, scale or 0.35)
    SetTextColour(r or 255, g or 255, b or 255, a or 255)

    local finish_x = x or 0.0
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
    Utils.AddLongString(text)
    EndTextCommandDisplayText(finish_x, y)
end

---Renders the main banner/header.
---@param title string
---@param x number
---@param y number
---@param r number | nil
---@param g number | nil
---@param b number | nil
---@param a number | nil
---@return number height
function Renderer.DrawBanner(title, x, y, r, g, b, a)
    local w = Theme.sizes.width
    local h = Theme.sizes.header_height
    local hc = Theme.colors.header

    Renderer.DrawSprite("commonmenu", "interaction_bgd", x, y, w, h, 0.0, r or hc[1], g or hc[2], b or hc[3], a or hc[4])
    Renderer.DrawText(title, x + w * 0.5, y + 0.015, 1.0, 255, 255, 255, 255, 'center', 1)

    return h
end

---Renders a sprite banner.
---@param dict string
---@param texture string
---@param x number
---@param y number
---@return number height
function Renderer.DrawSpriteBanner(dict, texture, x, y)
    local w = Theme.sizes.width
    local h = Theme.sizes.header_height

    Renderer.DrawSprite(dict, texture, x, y, w, h, 0.0, 255, 255, 255, 255)

    return h
end

---Renders the subtitle bar.
---@param subtitle string
---@param current number
---@param total number
---@param x number
---@param y number
---@return number height
function Renderer.DrawSubtitleBar(subtitle, current, total, x, y)
    local w = Theme.sizes.width
    local h = Theme.sizes.subtitle_height
    local sr, sg, sb, sa = table.unpack(Theme.colors.subtitle)
    Renderer.DrawSprite("commonmenu", "gradient_nav", x, y, w, h, 0.0, sr, sg, sb, sa)

    local subtitle_text = subtitle and subtitle:upper() or ""
    Renderer.DrawText(subtitle_text, x + Theme.sizes.padding, y + Theme.sizes.text_offset, 0.35, 255, 255, 255, 255)

    if total > 0 then
        local count_text = string.format("%d / %d", current, total)
        Renderer.DrawText(count_text, x + w - Theme.sizes.padding, y + Theme.sizes.text_offset, 0.35, 255, 255, 255, 255, 'right')
    end

    return h
end

---Renders the description box.
---@param text string
---@param x number
---@param y number
---@return number height
function Renderer.DrawDescription(text, x, y)
    local w = Theme.sizes.width
    local padding = Theme.sizes.padding
    local text_scale = 0.35
    local font = 0

    local lines = Utils.GetWrappedText(text, w - (padding * 2), text_scale, font)
    local line_count = #lines
    local line_height = 0.022
    local h = (line_count > 1) and (0.015 + (line_count * line_height)) or 0.034

    local dr, dg, db, da = table.unpack(Theme.colors.description)
    Renderer.DrawRect(x, y, w, 0.004, 0, 0, 0, 255)
    Renderer.DrawSprite("commonmenu", "gradient_bgd", x, y + 0.004, w, h, 0.0, dr, dg, db, da)

    local text_y = y + 0.002 + Theme.sizes.text_offset
    for i = 1, #lines do
        Renderer.DrawText(lines[i], x + padding, text_y, text_scale, 255, 255, 255, 255, nil, font)
        text_y = text_y + line_height
    end

    return h + 0.002
end

---Renders the scroll indicator bar when there are more items than visible.
---@param x number
---@param y number
---@return number height
function Renderer.DrawScrollIndicator(x, y)
    local w = Theme.sizes.width
    local bar_height = 0.018
    local total_height = bar_height * 2

    Renderer.DrawRect(x, y, w, bar_height, 0, 0, 0, 200)
    Renderer.DrawRect(x, y + bar_height, w, bar_height, 0, 0, 0, 200)

    local aspect = GetAspectRatio(false)
    local arrow_w = 0.04 / aspect
    local arrow_h = 0.04
    local arrow_x = x + (w - arrow_w) * 0.5
    local arrow_y = y + (total_height - arrow_h) * 0.5

    Renderer.DrawSprite("commonmenu", "shop_arrows_upanddown", arrow_x, arrow_y, arrow_w, arrow_h, 0.0, 255, 255, 255, 255)

    return total_height
end

---Renders instructional buttons at the bottom right of screen.
function Renderer.DrawControlHints()
    if not Renderer.instructional_scaleform then
        Renderer.instructional_scaleform = RequestScaleformMovie("instructional_buttons")
        Renderer.hints_built = false
    end

    if not HasScaleformMovieLoaded(Renderer.instructional_scaleform) then 
        Renderer.hints_built = false
        return 
    end

    if not Renderer.hints_built then
        BeginScaleformMovieMethod(Renderer.instructional_scaleform, "CLEAR_ALL")
        EndScaleformMovieMethod()

        BeginScaleformMovieMethod(Renderer.instructional_scaleform, "SET_CLEAR_SPACE")
        ScaleformMovieMethodAddParamInt(200)
        EndScaleformMovieMethod()

        BeginScaleformMovieMethod(Renderer.instructional_scaleform, "SET_DATA_SLOT")
        ScaleformMovieMethodAddParamInt(0)
        ScaleformMovieMethodAddParamPlayerNameString(GetControlInstructionalButton(0, 201, true))
        BeginTextCommandScaleformString("HUD_INPUT2")
        EndTextCommandScaleformString()
        EndScaleformMovieMethod()

        BeginScaleformMovieMethod(Renderer.instructional_scaleform, "SET_DATA_SLOT")
        ScaleformMovieMethodAddParamInt(1)
        ScaleformMovieMethodAddParamPlayerNameString(GetControlInstructionalButton(0, 202, true))
        BeginTextCommandScaleformString("HUD_INPUT3")
        EndTextCommandScaleformString()
        EndScaleformMovieMethod()

        BeginScaleformMovieMethod(Renderer.instructional_scaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
        EndScaleformMovieMethod()
        
        Renderer.hints_built = true
    end

    DrawScaleformMovieFullscreen(Renderer.instructional_scaleform, 255, 255, 255, 255, 0)
end