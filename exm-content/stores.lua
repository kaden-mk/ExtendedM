local Framework = exports["exm-core"]:ExtendedM()
local StoreManager = Framework.StoreManager

local IS_SERVER = IsDuplicityVersion()

--- Store Types
StoreManager.CreateStoreType("WEAPONS", function(data)
    if IS_SERVER == false then
        
    end
end)

--- Store Data
StoreManager.GenerateStore("WEAPONS")