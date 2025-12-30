EXMDebug = EXMDebug or {}

---@type EXMInterface
local Interface = exports["exm-interface"]:EXMInterface()
local Native = Interface.Native

local Utility = {}

function Utility.CreateMenu(id, callback)
    local menu = Native.RegisterMenu(id, callback)

    Native.SetDisabledControls(menu, Native.ControlTemplates.WalkAndLook)
end

EXMDebug.Utility = Utility