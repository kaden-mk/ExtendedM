---@class UIItem
---@field On fun(self: UIItem, event: string, callback: function): UIItem

---@class ButtonItem : UIItem
---@field On fun(self: ButtonItem, event: "click"|"hover"|"unhover", callback: function): ButtonItem

---@class CheckboxItem : UIItem
---@field On fun(self: CheckboxItem, event: "change"|"hover"|"unhover", callback: fun(checked: boolean)): CheckboxItem

---@class ListItemItem : UIItem
---@field On fun(self: ListItemItem, event: "change"|"hover"|"unhover", callback: fun(index: number, value: any)): ListItemItem

---@class ListIndexItem : UIItem
---@field On fun(self: ListIndexItem, event: "change"|"hover"|"unhover", callback: fun(value: number)): ListIndexItem

---@class SubMenuItem : UIItem
---@field On fun(self: SubMenuItem, event: "click"|"hover"|"unhover", callback: function): SubMenuItem

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
---@field GoToSubmenu fun(submenu_id: any)
---@field GoBack fun(): boolean
---@field WentBack fun(id: any): boolean
---@field ResetSelection fun(id: any)
---@field Refresh fun(id: any)
---@field Exiting fun(): boolean
---@field Header fun(title: string, subtitle: string, r?: number, g?: number, b?: number, a?: number)
---@field SpriteHeader fun(dict: string, texture: string, subtitle: string)
---@field Button fun(text: string, description?: string, offset_text?: string): ButtonItem
---@field Checkbox fun(text: string, checked: boolean, description?: string): CheckboxItem
---@field ListItem fun(text: string, items: table, current_index: number, description?: string): ListItemItem
---@field ListIndex fun(text: string, min: number, max: number, step: number, index: number, description?: string): ListIndexItem
---@field SubMenu fun(text: string, submenu_id: any, description?: string): SubMenuItem

---@class EXMInterface
---@field Native NativeUI