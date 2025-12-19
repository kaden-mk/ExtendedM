local StoreManager = {}
StoreManager.StoreTypes = {}

---@param type_name string
---@param data { callback: function }
function StoreManager.CreateStoreType(type_name, data)
    assert(StoreManager.StoreTypes[type_name] == nil, "[STOREMANAGER]: StoreType: " .. type_name .. " already exists!")

    StoreManager.StoreTypes[type_name] = data
end

---@param type_name string
---@param ... any
function StoreManager.GenerateStore(type_name, ...)
    local store_data = StoreManager.StoreTypes[type_name]
    assert(store_data, "[STOREMANAGER]: StoreType: " .. type_name .. " doesn't exist!")

    store_data.callback(...)
end

ExtendedM.StoreManager = StoreManager