---@diagnostic disable: undefined-global

HeaderComponent = {}

---Renders the header for the current menu.
---@param title string
---@param subtitle string
---@param r number | nil
---@param g number | nil
---@param b number | nil
---@param a number | nil
function HeaderComponent.Header(title, subtitle, r, g, b, a)
    local h1 = Renderer.DrawBanner(title, State.current_x, State.current_y, r, g, b, a)
    State.current_y = State.current_y + h1
    
    State.pending_subtitle = {
        text = subtitle,
        x = State.current_x,
        y = State.current_y
    }
    
    State.current_y = State.current_y + Theme.sizes.subtitle_height
end

---Renders a sprite header for the current menu.
---@param dict string
---@param texture string
---@param subtitle string
function HeaderComponent.SpriteHeader(dict, texture, subtitle)
    local h1 = Renderer.DrawSpriteBanner(dict, texture, State.current_x, State.current_y)
    State.current_y = State.current_y + h1
    
    State.pending_subtitle = {
        text = subtitle,
        x = State.current_x,
        y = State.current_y
    }
    
    State.current_y = State.current_y + Theme.sizes.subtitle_height
end