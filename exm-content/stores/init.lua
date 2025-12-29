local ExtendedM = exports["exm-core"]:ExtendedM()
local StoreManager = ExtendedM.StoreManager

CreateThread(function()
    for _, store in ipairs(StoreConfig.List) do
        StoreManager.GenerateStore(store.type, store.data)
    end
end)