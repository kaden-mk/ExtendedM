EXMInterface = EXMInterface or {}
EXMInterface.Input = {}

local Input = EXMInterface.Input

Input.controls = {
    up = 172,
    down = 173,
    left = 174,
    right = 175,
    select = 176,
    back = 177
}

---Checks if a control was just pressed.
---@param control number
---@return boolean
function Input.IsJustPressed(control)
    return IsControlJustPressed(0, control)
end

---Checks if a control is currently pressed.
---@param control number
---@return boolean
function Input.IsPressed(control)
    return IsControlPressed(0, control)
end

---Disables the pause menu so it doesn't interfere with the UI.
function Input.DisableControls()
    DisableControlAction(0, 199, true)
    DisableControlAction(0, 200, true)
end
