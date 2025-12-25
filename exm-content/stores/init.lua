local ExtendedM = exports["exm-core"]:ExtendedM()
local StoreManager = ExtendedM.StoreManager

Citizen.CreateThread(function()
    for _, store in ipairs(StoreConfig.List) do
        StoreManager.GenerateStore(store.type, store.data)
    end
end)
