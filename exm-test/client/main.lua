local Framework = exports["exm-core"]:ExtendedM()

---@type EXMInterface
local EXMInterface = exports["exm-interface"]:EXMInterface()

local current_item = 1

local a = EXMInterface.RegisterMenu(function()
    EXMInterface.Header("Test Menu", "DEBUG")

    current_item = EXMInterface.ListItem("Select an item", {"Banana", "Orange", "Apple"}, current_item)
    EXMInterface.Button("Hello")
end)

EXMInterface.SetVisible(a, true)