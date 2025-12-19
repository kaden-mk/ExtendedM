local Framework = exports["exm-core"]:ExtendedM()
local StoreManager = Framework.StoreManager

--- Store Types ---
StoreManager.CreateStoreType("WEAPONS", {
    callback = function()
        
    end
})

--- Store Data ---
StoreManager.GenerateStore("WEAPONS")