CreateThread(function()
    for _, v in pairs(ExtendedM.Config.Blips) do
        ExtendedM.Utility.CreateBlip("coord", v)
    end
end)