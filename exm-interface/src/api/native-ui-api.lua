---Helper function to check if a value is callable (function, metatable with __call, or FiveM function reference)
---@param value any
---@return boolean
local function is_callable(value)
    if not value then return false end

    local value_type = type(value)

    if value_type == "function" then return true end

    if value_type == "table" then
        if value.__cfx_functionReference then return true end

        local mt = getmetatable(value)
        return mt and mt.__call ~= nil
    end

    return false
end

---@type NativeUI
local NativeUI = {
    SetVisible = Core.SetVisible,
    SetCurrentMenu = Core.SetCurrentMenu,
    SetDisabledControls = Core.SetDisabledControls,
    ControlTemplates = {
        Default = {
            1, 2, 3, 4, 5, 6, 24, 25, 37, 44, 45, 47, 58, 59, 71, 72, 91, 92, 99, 100, 
            114, 115, 121, 122, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 
            138, 139, 140, 141, 142, 143, 257, 263, 264
        },
        DisabledKeyboardAndMouse = {
            1, 2, 24, 25, 37, 142, 257, 263, 264, 106, 329, 330, 331
        },
        DisabledMovement = {
            30, 31, 32, 33, 34, 35, 21, 36, 266, 267, 268, 269
        },
        AllowLook = {
            24, 25, 30, 31, 32, 33, 34, 35, 37, 44, 45, 47, 58, 59, 71, 72, 91, 92, 99, 100,
            114, 115, 121, 122, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137,
            138, 139, 140, 141, 142, 143, 257, 263, 264
        },
        WalkAndLook = {
            24, 25, 37, 44, 45, 47, 58, 91, 92, 99, 100,
            114, 115, 121, 122, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 
            138, 139, 140, 141, 142, 143, 257, 263, 264,
            81, 82, 83, 84, 85
        }
    },
    
    GetCurrentMenu = function() return State.current_menu_id end,
    IsVisible = function(id) return State.visible and State.current_menu_id == id end,
    IsAnyMenuVisible = function() return State.visible end,
    GoToSubmenu = Core.GoToSubmenu,
    GoBack = Core.GoBack,
    WentBack = Core.WentBack,
    ResetSelection = Core.ResetSelection,
    Exiting = Core.IsExiting,

    Header = HeaderComponent.Header,
    SpriteHeader = HeaderComponent.SpriteHeader,
    
    Button = ButtonComponent.Button,
    ListItem = ListComponent.List,
    ListIndex = ListComponent.ListIndex,

    Checkbox = CheckboxComponent.Checkbox,
    SubMenu = SubmenuComponent.SubMenu,

    ---Registers a new menu with the framework.
    ---@param id any | function  Can be an ID or directly the callback function
    ---@param cb function | nil  The callback (if first arg is an ID)
    ---@return any menu_id The menu ID
    RegisterMenu = function(id, cb)
        if is_callable(id) and cb == nil then
            cb = id
            id = nil
        end

        return Core.RegisterMenu(id, cb)
    end
}

NativeUIAPI = NativeUI