local Items = {}

local ItemsStorage = {}

local item_count = 0

---@class DistributionData
---@field type "uniform" | "biased_high" | "biased_low" | "chance"
---@field strength number?
---@field probability number?
---@field exponent number?

---Generates a value based on distribution data sent
---@param distribution_data DistributionData
---@return any
local function GenerateValue(distribution_data)
    local distribution_type = distribution_data.type or "uniform"

    if distribution_type == "uniform" then
        return math.random()
    elseif distribution_type == "biased_high" then
        local strength = math.min(math.max(distribution_data.strength or 0.5, 0), 1)
        local r = math.random()

        return r ^ (1 - strength * (distribution_data.exponent or 1))
    elseif distribution_type == "biased_low" then
        local strength = math.min(math.max(distribution_data.strength or 0.5, 0), 1)
        local r = math.random()

        return r ^ (1 + strength * (distribution_data.exponent or 1))
    elseif distribution_type == "chance" then
        local probability = math.min(math.max(distribution_data.probability or 0.5, 0), 1)
        return math.random() < probability
    else
        error("Distribution type not found!")
    end
end

---Generates an item
---@param prototype_id string The id of the prototype
---@param creation_context table? Any extra data to be created with the prototype
function Items.Create(prototype_id, creation_context)
    local prototype_data = ExtendedM.Items.Prototypes[prototype_id]
    if not prototype_data then return end

    creation_context = creation_context or {}

    item_count = item_count + 1

    local schema = ExtendedM.Items.TypeMetadataSchemas[prototype_data.item_type]

    local instance = {
        prototype_id = prototype_data.id,
        instance_id = item_count,
        quantity = creation_context.quantity or 1,
        created_at = GetGameTimer(),
        origin = creation_context.origin or ExtendedM.Enum.ITEM_ORIGIN.UNKNOWN,
        metadata = {},
    }

    for key, data in pairs(schema) do
        if creation_context[key] then instance.metadata[key] = creation_context[key] goto continue end
        if not data.distribution then goto continue end

        local raw = GenerateValue(data.distribution)
        
        if data.type == "boolean" then
            instance.metadata[key] = raw
        else
            local value = data.min + raw *(data.max - data.min)
            if data.type == "integer" then
                value = math.floor(value)
            end

            instance.metadata[key] = value
        end

        ::continue::
    end

    ItemsStorage[item_count] = instance
    return item_count -- basically the item id
end

---UNFINISHED
function Items.RegisterInstance(instance)
    -- this needs a proper way to check if its a valid instance

    local prototype_id = instance.prototype_id
    if not prototype_id then return end
    if not ExtendedM.Items.Prototypes[prototype_id] then return end

    item_count = item_count + 1

    instance.instance_id = item_count

    ItemsStorage[item_count] = instance
    return instance, item_count
end

---Gets the avaliable item with the specified id
---@param id integer
---@return any
function Items.GetInstanceFromId(id)
    return ItemsStorage[id]
end

ExtendedM.Items.Functions = Items