EXMInterface = EXMInterface or {}
EXMInterface.Input = {}

local Input = EXMInterface.Input

Input.controls = {
    up = 188,
    down = 187,
    left = 189,
    right = 190,
    select = 201,
    back = 202,
    mouse_select = 24
}

---Checks if a control was just pressed.
---@param control number
---@return boolean
function Input.IsJustPressed(control)
    return IsDisabledControlJustPressed(0, control)
end

---Checks if a control is currently pressed.
---@param control number
---@return boolean
function Input.IsPressed(control)
    return IsDisabledControlPressed(0, control)
end

local CONTROLS_TO_DISABLE = {
    199, 200, 24, 25, 14,
    15, 16, 17, 37, 187,
    188, 189, 190, 201, 202
}

local SIZE = #CONTROLS_TO_DISABLE

---Disables some specific controls so they don't interfere with the UI.
function Input.DisableControls()
    -- optimize dat bih
    for i = 1, SIZE do
        local control = CONTROLS_TO_DISABLE[i]
        DisableControlAction(0, control, true)
    end
end