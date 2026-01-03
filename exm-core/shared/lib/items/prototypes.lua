ExtendedM.Items = ExtendedM.Items or {}

local enum = ExtendedM.Enum

ExtendedM.Items.Prototypes = {
    old_jewelry = {
        id = "old_jewelry",
        display_name = "Old Jewelry",
        description = "Weird super old jewelry probably from yo mama",
        item_type = enum.ITEM_TYPE.VALUABLE,
        rarity = enum.ITEM_RARITY.UNCOMMON,
        price_model = { min = 60, max = 140 },
        max_stack = 1,
        base_heat_per_minute = 0,
        unit_weight = 0.2,
    },
    illegal_money_stack = {
        id = "illegal_money_stack",
        display_name = "Money Stack",
        description = "Cash from somewhere",
        item_type = enum.ITEM_TYPE.VALUE_CONTAINER,
        max_stack = 10,
        base_heat_per_minute = 0.5,
        unit_weight = 0.1,
    }
}