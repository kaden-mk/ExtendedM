local Hook = {}
local Hooks = {}

---Registers a hook to the system
---@param name string The name of the hook
function Hook.Register(name)
    if Hooks[name] then return end

    Hooks[name] = {}
end

---Add a function to be ran when the hook gets fired
---@param name string The name of the hook
---@param callback function The callback to be ran
function Hook.Connect(name, callback)
    if not Hooks[name] then
        Hook.Register(name)
    end

    table.insert(Hooks[name], callback)
end

---Run every callback registered to the hook
---@param name string The name of the hook
function Hook.Fire(name, ...)
    if not Hooks[name] then
        Hook.Register(name)
    end

    for _, callback in pairs(Hooks[name]) do
        callback(...)
    end
end

ExtendedM.Hook = Hook