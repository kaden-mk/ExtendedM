local Inventory = {}
Inventory.Inventories = {}

local Prototypes = ExtendedM.Items.Prototypes
local Items = ExtendedM.Items.Functions

ExtendedM.DataManager.RegisterKey('inventory', {})

function Inventory.LoadItemsFromInventory(source, inventory)
    Inventory.Inventories[source] = Inventory.Inventories[source] or {}

    for _, instance in ipairs(inventory or {}) do
        local new_instance = Items.RegisterInstance(instance)
        table.insert(Inventory.Inventories[source], new_instance)
    end
end

function Inventory.AddItemToInventory(source, item)
    Inventory.Inventories[source] = Inventory.Inventories[source] or {}

end

function Inventory.SaveInventory(source)
    local inventory = Inventory.Inventories[source]
    if not inventory then return end

    local saved_inventory = {}

    for _, item_data in ipairs(inventory) do
        local fake_item = item_data
        fake_item.instance_id = nil

        table.insert(saved_inventory, fake_item)
    end

    ExtendedM.DataManager.SetKey(source, "inventory", saved_inventory)
end

ExtendedM.Inventory = Inventory