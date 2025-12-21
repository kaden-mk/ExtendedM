local Framework = exports["exm-core"]:ExtendedM()

local StoreManager = Framework.StoreManager

local IS_SERVER = IsDuplicityVersion()

-- i need to find a better way to replicate this to the client
if not IS_SERVER then
    local Interface = exports["exm-interface"]:EXMInterface()

    local WEAPON_SHOP_MENU = Interface.RegisterMenu(function()
        Interface.Header("AMMUNATION", "WEAPONS", 255, 0, 0)
        Interface.Button("Pistol", "Great weapon for close range targets.", "~g~$650")
    end)

    Interface.SetVisible(WEAPON_SHOP_MENU, true)
end

--- Store Types
StoreManager.CreateStoreType("WEAPONS", {
    callback = function(data)
        if IS_SERVER == false then
            StoreManager.CreateInteractionArea(data.interaction_position, 1, function()
            end, "buy weapons.")
        end
    end
})

--- Store Data
StoreManager.GenerateStore("WEAPONS", {
    interaction_position = vector3(252.88, -49.17, 69.94),
    weapons = {
        WEAPON_PISTOL = 750
    }
})
