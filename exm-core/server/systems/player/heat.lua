local Heat = {}

ExtendedM.DataManager.RegisterKey('heat', 0)

---Adds heat to a player
---@param source number Player's server ID
---@param amount number Amount to add
function Heat.Add(source, amount)
    local current_heat = ExtendedM.DataManager.GetKey(source, 'heat') or 0
    local new_heat = current_heat + amount

    ExtendedM.DataManager.SetKey(source, 'heat', new_heat)
end

---Removes heat from a player
---@param source number Player's server ID
---@param amount number Amount to remove
function Heat.Remove(source, amount)
    local current_heat = ExtendedM.DataManager.GetKey(source, 'heat') or 0
    local new_heat = math.max(0, current_heat - amount)

    ExtendedM.DataManager.SetKey(source, 'heat', new_heat)
end

ExtendedM.Heat = Heat