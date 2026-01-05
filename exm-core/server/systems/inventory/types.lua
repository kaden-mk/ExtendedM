---@alias ITEM_ORIGIN integer
---@alias ITEM_TYPE integer
---@alias CONTAINER_TYPE integer

---@class Container
---@field container_id integer
---@field container_type CONTAINER_TYPE
---@field owner_id integer
---@field max_weight number
---@field items table<integer>

---@class ItemInstance
---@field instance_id integer
---@field container_id integer?
---@field prototype_id string
---@field quantity integer
---@field created_at integer
---@field origin ITEM_ORIGIN
---@field metadata table<string, any>

---@class ItemPrototype
---@field id string
---@field display_name string
---@field description string
---@field item_type ITEM_TYPE
---@field max_stack integer
---@field unit_weight number
---@field base_heat_per_minute number
---@field price_model table?

---@class ItemMetadataSchemaField
---@field type "integer" | "number" | "boolean"
---@field min number?
---@field max number?
---@field distribution DistributionData?

---@class ItemMetadataSchema
---@field [string] ItemMetadataSchemaField

---@class DistributionData
---@field type "uniform"|"biased_high"|"biased_low"|"chance"
---@field strength number?
---@field probability number?
---@field exponent number?

---@class PlayerInventory
---@field [number] integer[]