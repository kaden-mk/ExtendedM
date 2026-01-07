local Interface = EXMInterface.Native

--[[
    Lock/unlock the doors
    Turn on/off engine
    Turn on/off lights
    Switch radio station
    Open any door
]]

Interface.RegisterMenu("ExtendedM:Menus:PersonalVehicle", function()
    Interface.Header("Interaction", GetPlayerName(PlayerId()))
end)