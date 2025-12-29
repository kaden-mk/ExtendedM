local list = {
    {
        coords = {243.18, -45.01, 69.9},
        icon = ExtendedM.Enum.BLIP_ICONS.GUN_SHOP,
        name = "Ammu-Nation"
    }
}

CreateThread(function()
    for _, v in pairs(list) do
        ExtendedM.Utility.CreateBlip("coord", v)
    end
end)