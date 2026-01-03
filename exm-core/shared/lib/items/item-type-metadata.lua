ExtendedM.Items = ExtendedM.Items or {}

local enum = ExtendedM.Enum
local item_type = enum.ITEM_TYPE

ExtendedM.Items.TypeMetadataSchemas = {
    [item_type.VALUABLE] = {
        condition = {
            type = "integer",
            min = 0,
            max = 100,
            distribution = {
                type = "biased_high",
                strength = 0.45,
                exponent = 0.8
            }
        },
        quality_seed = {
            type = "number",
            min = 0,
            max = 1,
            distribution = {
                type = "uniform"
            }
        },
    },

    [item_type.VALUE_CONTAINER] = {
        contained_value = {
            type = "integer",
            min = 1,
            max = math.huge
        },
        dirty_level = {
            type = "integer",
            min = 0,
            max = 100,
            distribution = {
                type = "biased_low",
                strength = 0.34,
                exponent = 2
            }
        },
        tracked = {
            type = "boolean",
            distribution = {
                type = "chance",
                probability = 0.4
            }
        }
    },

    [item_type.CONTRABAND] = {

    },

    [item_type.UTILITY] = {

    },

    [item_type.SYSTEM] = {

    }
}