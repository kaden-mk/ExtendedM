---@class InputState
---@field up_just boolean
---@field down_just boolean
---@field left_just boolean
---@field right_just boolean
---@field select_just boolean
---@field back_just boolean
---@field mouse_select_just boolean
---@field mouse_x number
---@field mouse_y number

Input = {
    state = {
        up_just = false,
        up_pressed = false,
        down_just = false,
        down_pressed = false,
        left_just = false,
        left_pressed = false,
        right_just = false,
        right_pressed = false,
        select_just = false,
        back_just = false,
        mouse_select_just = false,
        mouse_x = 0.0,
        mouse_y = 0.0
    }
}

---Updates input state once per frame (called by main loop).
---@param disabled_controls table|nil
function Input.UpdateState(disabled_controls)
    Input.state.up_just = IsDisabledControlJustPressed(0, 172) or IsControlJustPressed(0, 241)
    Input.state.up_pressed = IsDisabledControlPressed(0, 172) or IsControlPressed(0, 241)
    Input.state.down_just = IsDisabledControlJustPressed(0, 173) or IsControlJustPressed(0, 242)
    Input.state.down_pressed = IsDisabledControlPressed(0, 173) or IsControlPressed(0, 242)
    Input.state.left_just = IsDisabledControlJustPressed(0, 174)
    Input.state.left_pressed = IsDisabledControlPressed(0, 174)
    Input.state.right_just = IsDisabledControlJustPressed(0, 175)
    Input.state.right_pressed = IsDisabledControlPressed(0, 175)
    
    local looking_enabled = true
    if disabled_controls then
        for _, control in ipairs(disabled_controls) do
            if control == 1 or control == 2 then
                looking_enabled = false
                break
            end
        end
    end

    if looking_enabled then
        Input.state.select_just = IsDisabledControlJustPressed(0, 201) or IsDisabledControlJustPressed(0, 24)
    else
        Input.state.select_just = IsDisabledControlJustPressed(0, 201)
    end

    Input.state.back_just = IsDisabledControlJustPressed(0, 177) or IsDisabledControlJustPressed(0, 202)
    Input.state.mouse_select_just = IsDisabledControlJustPressed(0, 24)
    Input.state.mouse_x = GetControlNormal(0, 239)
    Input.state.mouse_y = GetControlNormal(0, 240)
end

---Disables game controls while menu is open.
---@param controls table|nil
function Input.DisableControls(controls)
    local controls_to_disable = controls or {
        1, 2, 3, 4, 5, 6, 24, 25, 37, 44, 45, 47, 58, 59, 71, 72, 91, 92, 99, 100, 
        114, 115, 121, 122, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 
        138, 139, 140, 141, 142, 143, 257, 263, 264
    }
    
    for _, control in ipairs(controls_to_disable) do
        DisableControlAction(0, control, true)
    end
end