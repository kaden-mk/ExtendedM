---@class ExtendedM
ExtendedM = ExtendedM or {}

--- Registers a new API table (module) with the core framework.
--- @param name string The desired key for the module (e.g., "Missions").
--- @param module table The table containing the module's public functions.
--- @return boolean True if registration was successful, false otherwise.
function ExtendedM.RegisterModule(name, module)
   if type(module) ~= 'table' then
        print(string.format("[ERROR] ExtendedM: Tried to register module '%s' with an invalid API type. Must be a table.", name))
        return false
    end 

    if ExtendedM[name] then
        print(string.format("[ERROR] ExtendedM: Module name '%s' already exists or is reserved by the core.", name))
        return false
    end

    ExtendedM[name] = module
    print(string.format("[INFO] ExtendedM Core: Module '%s' successfully registered.", name))
    
    return true
end

exports("ExtendedM", function()
    return ExtendedM
end)