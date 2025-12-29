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
---@field changed boolean

---@class SubMenuState
---@field entered boolean
---@field is_hovering boolean
---@field hovered boolean
---@field unhovered boolean

---@class ListItemState
---@field index number
---@field is_hovering boolean
---@field hovered boolean
---@field unhovered boolean
---@field changed boolean

---@class ControlTemplates
---@field Default table
---@field DisabledKeyboardAndMouse table
---@field DisabledMovement table
---@field AllowLook table
---@field WalkAndLook table

---@class NativeUI
---@field RegisterMenu fun(id: any | function, cb: function | nil): any
---@field SetVisible fun(id: any, visible: boolean)
---@field GetCurrentMenu fun(): any
---@field SetCurrentMenu fun(id: any)
---@field SetDisabledControls fun(id: any, controls: table)
---@field ControlTemplates ControlTemplates
---@field IsVisible fun(id: any): boolean
---@field IsAnyMenuVisible fun(): boolean
---@field IsAnyMenuVisible fun(): boolean
---@field GoToSubmenu fun(submenu_id: any)
---@field GoBack fun(): boolean
---@field WentBack fun(id: any): boolean
---@field ResetSelection fun(id: any)
---@field Exiting fun(): boolean
---@field Header fun(title: string, subtitle: string, r?: number, g?: number, b?: number, a?: number)
---@field SpriteHeader fun(dict: string, texture: string, subtitle: string)
---@field Label fun(text: string)
---@field Button fun(text: string, description?: string, offset_text?: string): ButtonState
---@field Checkbox fun(text: string, checked: boolean, description?: string): CheckboxState
---@field ListItem fun(text: string, items: table, current_index: number, description?: string): ListItemState
---@field SubMenu fun(text: string, submenu_id: any, description?: string): SubMenuState

---@class EXMInterface
---@field Native NativeUI