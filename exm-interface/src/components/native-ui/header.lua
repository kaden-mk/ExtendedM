---@diagnostic disable: undefined-global

HeaderComponent = {}

---Renders header.
---@param item table
function HeaderComponent.Render(item)
    local h1 = Renderer.DrawBanner(item.title, State.current_x, State.current_y, item.r, item.g, item.b, item.a)
    State.current_y = State.current_y + h1
    
    State.pending_subtitle = {
        text = item.subtitle,
        x = State.current_x,
        y = State.current_y
    }
    
    State.current_y = State.current_y + Theme.sizes.subtitle_height
end

---Renders sprite header.
---@param item table
function HeaderComponent.SpriteRender(item)
    local h1 = Renderer.DrawSpriteBanner(item.dict, item.texture, State.current_x, State.current_y)
    State.current_y = State.current_y + h1
    
    State.pending_subtitle = {
        text = item.subtitle,
        x = State.current_x,
        y = State.current_y
    }
    
    State.current_y = State.current_y + Theme.sizes.subtitle_height
end

---Renders the header for the current menu.
---@param title string
---@param subtitle string
---@param r number | nil
---@param g number | nil
---@param b number | nil
---@param a number | nil
function HeaderComponent.Header(title, subtitle, r, g, b, a)
    local id = State.current_menu_id
    if not State.buffered_items[id] then State.buffered_items[id] = {} end

    table.insert(State.buffered_items[id], {
        type = "Header",
        title = title,
        subtitle = subtitle,
        r = r, g = g, b = b, a = a,
        render = HeaderComponent.Render
    })
end

---Renders a sprite header for the current menu.
---@param dict string
---@param texture string
---@param subtitle string
function HeaderComponent.SpriteHeader(dict, texture, subtitle)
    local id = State.current_menu_id
    if not State.buffered_items[id] then State.buffered_items[id] = {} end

    table.insert(State.buffered_items[id], {
        type = "SpriteHeader",
        dict = dict,
        texture = texture,
        subtitle = subtitle,
        render = HeaderComponent.SpriteRender
    })
end