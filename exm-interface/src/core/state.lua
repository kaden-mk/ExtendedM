---@class MenuState
---@field visible boolean
---@field current_menu_id any
---@field current_x number
---@field current_y number
---@field item_count number
---@field current_description string | nil
---@field pending_subtitle table | nil
---@field selections table<any, number>
---@field last_selections table<any, number>
---@field total_items table<any, number>
---@field disabled_controls table<any, table>
---@field menus table<any, function>
---@field menu_stack table<any>
---@field last_click table

State = {
    visible = false,
    current_menu_id = nil,
    current_x = 0.0,
    current_y = 0.0,
    item_count = 0,
    current_description = nil,
    pending_subtitle = nil,
    selections = {},
    last_selections = {},
    total_items = {},
    disabled_controls = {},
    pagination = {},
    menus = {},
    menu_stack = {},
    went_back_from = nil,
    is_exiting = false,
    last_click = {
        time = 0,
        item = 0
    }
}