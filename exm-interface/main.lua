local Core = EXMInterface.Core
local Input = EXMInterface.Input
local Render = EXMInterface.Render
local Items = EXMInterface.Items

---@class ButtonState
---@field clicked boolean
---@field is_hovering boolean
---@field hovered boolean
---@field unhovered boolean

---@class CheckboxState
---@field checked boolean
---@field clicked boolean
---@field is_hovering boolean
---@field hovered boolean
---@field unhovered boolean

---@class SubMenuState
---@field entered boolean
---@field clicked boolean
---@field is_hovering boolean
---@field hovered boolean
---@field unhovered boolean

---@class ListItemState
---@field index number
---@field is_hovering boolean
---@field hovered boolean
---@field unhovered boolean

---@class EXMInterface
---@field Header fun(title: string, subtitle: string, r?: number, g?: number, b?: number, a?: number)
---@field SpriteHeader fun(dict: string, texture: string, subtitle: string)
---@field Label fun(text: string)
---@field Button fun(text: string, description?: string, offset_text?: string): ButtonState
---@field Checkbox fun(text: string, checked: boolean, description?: string): CheckboxState
---@field ListItem fun(text: string, items: table, current_index: number, description?: string): ListItemState
---@field SubMenu fun(text: string, submenu_id: any, description?: string): SubMenuState
---@field GoToSubmenu fun(submenu_id: any)
---@field GoBack fun(): boolean
---@field WentBack fun(id: any): boolean
---@field ResetSelection fun(id: any)
local API = {}

local function is_callable(value)
    if not value then return false end

    local type = type(value)

    if type == "function" then return true end

    if type == "table" then
        if value.__cfx_functionReference then return true end

        local mt = getmetatable(value)

        return mt and mt.__call ~= nil
    end

    return false
end

---Registers a new menu with the framework.
---@param id any | function  Can be an ID or directly the callback function
---@param cb function | nil  The callback (if first arg is an ID)
---@return any menuId The menu ID
function API.RegisterMenu(id, cb)
    if is_callable(id) and cb == nil then
        cb = id
        id = nil
    end

    return Core.RegisterMenu(id, cb)
end

---Sets the visibility and active menu ID.
---@param id any
---@param visible boolean
function API.SetVisible(id, visible)
    Core.SetVisible(id, visible)
end

---Gets the currently active menu ID
---@return any
function API.GetCurrentMenu()
    return Core.current_menu_id
end

---Sets the currently active menu ID without toggling visibility.
---@param id any
function API.SetCurrentMenu(id)
    Core.SetCurrentMenu(id)
end

---Checks if a specific menu is currently visible.
---@param id any
---@return boolean
function API.IsVisible(id)
    return Core.visible and Core.current_menu_id == id
end

API.Header = Items.Header
API.SpriteHeader = Items.SpriteHeader
API.Label = Items.Label
API.Button = Items.Button
API.Checkbox = Items.Checkbox
API.ListItem = Items.ListItem
API.SubMenu = Items.SubMenu
API.GoToSubmenu = Core.GoToSubmenu
API.GoBack = Core.GoBack
API.WentBack = Core.WentBack
API.ResetSelection = Core.ResetSelection

---Checks if the menu system is currently exiting (closed or hidden).
---@return boolean
function API.Exiting()
    return Core.IsExiting()
end

EXMInterface.API = API
exports('EXMInterface', function()
    return API
end)
