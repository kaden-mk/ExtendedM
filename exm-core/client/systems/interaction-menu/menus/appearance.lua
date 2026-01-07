local Interface = EXMInterface.Native

--[[
    Hood (up/down)
    Jacket (closed/open)
    Action
    Walk Style
    Expression
]]

Interface.RegisterMenu("ExtendedM:Menus:Appearance", function()
    Interface.Header("Interaction", GetPlayerName(PlayerId()))
end)