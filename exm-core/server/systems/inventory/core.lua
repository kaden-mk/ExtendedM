local Inventory = {}
Inventory.PlayerContainers = {}

local Containers = ExtendedM.Containers

ExtendedM.DataManager.RegisterKey('inventory', {})

---Load items from a saved inventory into a container
---@param container_id integer The container to have the instances registered to
---@param inventory table The data of the items
function Inventory.LoadItemsFromInventory(container_id, inventory)
    for _, item_data in ipairs(inventory or {}) do
        local instance = ExtendedM.Items.Functions.RegisterInstance(item_data)
        if instance then
            Containers.AddItem(container_id, instance.instance_id)
        end
    end
end

---Saves the inventory to the player's data
---@param source integer The player's source
function Inventory.SaveInventory(source)
    local inventory = Containers.GetContainerFromId(Inventory.PlayerContainers[source])
    if not inventory then return end

    print("saving inventory")
    ExtendedM.Table.DeepPrint(inventory)

    local saved_inventory = {}

    for _, instance_id in ipairs(inventory.items) do
        local fake_item = table.clone(ExtendedM.Items.Functions.GetInstanceFromId(instance_id))
        fake_item.instance_id = nil
        fake_item.container_id = nil

        table.insert(saved_inventory, fake_item)
    end

    ExtendedM.DataManager.SetKey(source, "inventory", saved_inventory)
end

---Gives an item to a player
---@param source integer The player's source
---@param prototype_id string The item prototype id
---@param quantity integer The quantity to give
---@param data table? (Optional) Creation context for the item
function Inventory.GiveItem(source, prototype_id, quantity, data)
    local inventory_container = Inventory.PlayerContainers[source]
    if not inventory_container then return end

    local context = data or {}
    context.quantity = quantity

    local instance_id = ExtendedM.Items.Functions.Create(prototype_id, context)
    if not instance_id then return end

    Containers.AddItem(inventory_container, instance_id)

    Inventory.SaveInventory(source)
end

RegisterNetEvent("ExtendedM:Debug:GiveItem", function(prototype_id, quantity, data)
    local source = source
    Inventory.GiveItem(source, prototype_id, quantity, data)
end)

---Run the main thread of the player inventory system
function Inventory.Run()
    ExtendedM.Hook.Connect("player_registered", function(source)
        local inventory_container = Containers.Create(ExtendedM.Enum.CONTAINER_TYPE.PLAYER, source, 20)
        local inventory = ExtendedM.DataManager.GetKey(source, "inventory")

        ExtendedM.Table.DeepPrint(inventory)

        Inventory.LoadItemsFromInventory(inventory_container, inventory)

        Inventory.PlayerContainers[source] = inventory_container
    end)

    ExtendedM.Hook.Connect("player_leave", function(source)
        local inventory_container = Inventory.PlayerContainers[source]
        if not inventory_container then return end

        Inventory.SaveInventory(source)
        Containers.Unload(inventory_container)
    end)
end

ExtendedM.Inventory = Inventory

Inventory.Run()