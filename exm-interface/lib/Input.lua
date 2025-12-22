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

---Disables some specific controls so they don't interfere with the UI.
function Input.DisableControls()
    DisableControlAction(0, 199, true)
    DisableControlAction(0, 200, true)
    DisableControlAction(0, 24, true)
    DisableControlAction(0, 25, true)
    DisableControlAction(0, 14, true)
    DisableControlAction(0, 15, true)
    DisableControlAction(0, 16, true)
    DisableControlAction(0, 17, true)
    DisableControlAction(0, 37, true)
    DisableControlAction(0, 157, true)
    DisableControlAction(0, 158, true)
    DisableControlAction(0, 159, true)
    DisableControlAction(0, 160, true)
    DisableControlAction(0, 161, true)
    DisableControlAction(0, 162, true)
    DisableControlAction(0, 163, true)
    DisableControlAction(0, 164, true)
    DisableControlAction(0, 165, true)
end
