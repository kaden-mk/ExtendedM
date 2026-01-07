local Interface = EXMInterface.Native

--[[
    For now just display the item name as a button and the quantity on the right
]]

Interface.RegisterMenu("ExtendedM:Menus:Inventory", function()
    Interface.Header("Interaction", GetPlayerName(PlayerId()))

    local inventory = ExtendedM.DataSyncer.Data.inventory or {}

    for _, item in ipairs(inventory) do
        local prototype = ExtendedM.Items.Prototypes[item.prototype_id]

        if prototype then
            Interface.Button(prototype.display_name, prototype.description, tostring(item.quantity))
        end
    end
end)