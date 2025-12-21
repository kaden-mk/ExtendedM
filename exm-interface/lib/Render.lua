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
        return
    end
    DrawSprite(dict, name, x + w * 0.5, y + h * 0.5, w, h, rot or 0.0, r, g, b, a)
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
function Render.Text(text, x, y, scale, r, g, b, a, align, font)
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
    end

    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
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
---@return number
function Render.Banner(title, x, y, r, g, b, a)
    local w = Render.sizes.width
    local h = Render.sizes.header_height
    local hr, hg, hb, ha = table.unpack(Render.colors.header)
    Render.Sprite("commonmenu", "interaction_bgd", x, y, w, h, 0.0, r or hr, g or hg, b or hb, a or ha)
    Render.Text(title, x + w * 0.5, y + 0.015, 1.0, 255, 255, 255, 255, 'center', 1)

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
        local countText = string.format("%d / %d", current, total)
        Render.Text(countText, x + w - Render.sizes.padding, y + Render.sizes.text_offset, 0.35, 255, 255, 255, 255, 'right')
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
    local h = Render.sizes.item_height * 1.5
    local dr, dg, db, da = table.unpack(Render.colors.description)
    Render.Rect(x, y, w, 0.002, 255, 255, 255, 255)
    Render.Sprite("commonmenu", "gradient_bgd", x, y + 0.002, w, h, 0.0, dr, dg, db, da)
    Render.Text(text, x + Render.sizes.padding, y + 0.002 + Render.sizes.text_offset, 0.35, 255, 255, 255, 255)
    
    return h + 0.002
end
