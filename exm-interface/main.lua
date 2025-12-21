local Core = EXMInterface.Core
local Input = EXMInterface.Input
local Render = EXMInterface.Render
local Items = EXMInterface.Items

---@class EXMInterface
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
---@return any  The menu ID
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

-- i really need to figure out a way to typecheck all of this
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

EXMInterface.API = API
exports('EXMInterface', function()
    return API
end)
