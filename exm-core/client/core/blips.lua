local list = {
    {
        coords = {243.18, -45.01, 69.9},
        icon = 110,
        name = "Gun Store"
    }
}

Citizen.CreateThread(function()
    for _, v in pairs(list) do
        ExtendedM.Utility.CreateBlip(v)
    end
end)