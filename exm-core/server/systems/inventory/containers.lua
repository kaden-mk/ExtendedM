local Containers = {}
local ContainerStorage = {}

local container_count = 0

---Creates a container assigned to an owner
---@param container_type CONTAINER_TYPE
---@param owner_id integer
---@param max_weight number
---@return integer
function Containers.Create(container_type, owner_id, max_weight)
    container_count = container_count + 1

    local new_container = {
        container_id = container_count,
        container_type = container_type,
        owner_id = owner_id,
        max_weight = max_weight,
        items = {}
    }

    ContainerStorage[new_container.container_id] = new_container
    return new_container.container_id
end

---Destroy a container & disconnect all items inside
---@param container_id integer
function Containers.Unload(container_id)
    local container = ContainerStorage[container_id] ---@type Container
    if not container then return end

    for _, item_id in ipairs(container.items) do
        local instance = ExtendedM.Items.Functions.GetInstanceFromId(item_id)

        if instance then
            instance.container_id = nil
        end
    end

    ContainerStorage[container_id] = nil
end

---Add an item to a container
---@param container_id integer The container to add the item to
---@param item_id integer The item to be added to the container
---@return boolean
function Containers.AddItem(container_id, item_id)
    local container = ContainerStorage[container_id] ---@type Container
    local item = ExtendedM.Items.Functions.GetInstanceFromId(item_id)

    if not container or not item then return false end
    if item.container_id then return false end

    local prototype = ExtendedM.Items.Prototypes[item.prototype_id]

    local new_weight = Containers.GetTotalWeight(container_id) + (item.quantity * prototype.unit_weight)
    if new_weight > container.max_weight then return false end

    table.insert(container.items, item_id)
    item.container_id = container_id

    return true
end

---Remove an item from a container
---@param container_id integer The container to have the item removed from
---@param item_id integer The item to be removed from teh container
---@return boolean
function Containers.RemoveItem(container_id, item_id)
    local container = ContainerStorage[container_id] ---@type Container
    local item = ExtendedM.Items.Functions.GetInstanceFromId(item_id)

    if not container or not item then return false end

    for i, stored_item_id in ipairs(container.items) do
        if stored_item_id == item_id then
            table.remove(container.items, i)
            item.container_id = nil
            return true
        end
    end

    return false
end

---Checks if a container contains an item (get it)
---@param container_id integer The container to check
---@param item_id integer The item to check
---@return boolean
function Containers.HasItem(container_id, item_id)
    local container = ContainerStorage[container_id] ---@type Container
    if not container then return false end

    local exists = false

    for i, stored_item_id in ipairs(container.items) do
        if stored_item_id == item_id then
            exists = true
            break
        end
    end

    return exists
end

---Transfer an item from a container to another, useful for getting things out of warehouses for example.
---@param item_id integer The item to be transferred
---@param from_id integer The container that has the item
---@param to_id integer The container to have the item transferred
---@return boolean
function Containers.TransferItem(item_id, from_id, to_id)
    if not Containers.RemoveItem(from_id, item_id) then return false end
    if not Containers.AddItem(to_id, item_id) then
        Containers.AddItem(from_id, item_id)
        return false
    end

    return true
end

---Get the total weight of each item inside of a container
---@param container_id integer The container to check the total weight of
---@return number?
function Containers.GetTotalWeight(container_id)
    local container = ContainerStorage[container_id] ---@type Container
    if not container then return end

    local total_weight = 0
    local items = container.items
    for _, item in pairs(items) do
        local instance = ExtendedM.Items.Functions.GetInstanceFromId(item)
        if not instance then goto continue end

        total_weight = total_weight + (instance.quantity * ExtendedM.Items.Prototypes[instance.prototype_id].unit_weight)

        ::continue:: 
    end

    return total_weight
end

---Get container data from an id
---@param container_id integer
---@return Container?
function Containers.GetContainerFromId(container_id)
    return ContainerStorage[container_id]
end

ExtendedM.Containers = Containers