---@diagnostic disable: undefined-global

LabelComponent = {}

---Renders a plain text label.
---@param text string
function LabelComponent.Render(text)
    local c = Theme.colors.unselected
    Renderer.DrawRect(State.current_x, State.current_y, Theme.sizes.width, Theme.sizes.item_height, c[1], c[2], c[3], c[4])
    local tc = Theme.colors.text
    Renderer.DrawText(text, State.current_x + Theme.sizes.padding, State.current_y + Theme.sizes.text_offset, 0.35, tc[1], tc[2], tc[3], tc[4])
    State.current_y = State.current_y + Theme.sizes.item_height
end
