EXMDebug = EXMDebug or {}

local Native = EXMInterface.Native

local Utility = {}

function Utility.CreateMenu(id, callback)
    local menu = Native.RegisterMenu(id, callback)

    Native.SetDisabledControls(menu, Native.ControlTemplates.WalkAndLook)
end

EXMDebug.Utility = Utility