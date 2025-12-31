local Math = {}

---Takes a rotation and returns a direction.
---@param rotation vector3
---@return vector3
function Math.RotationToDirection(rotation)
    local z = math.rad(rotation.z)
	local x = math.rad(rotation.x)
	local num = math.abs(math.cos(x))

    return vector3(
        -math.sin(z) * num, 
        math.cos(z) * num, 
        math.sin(x)
    )
end

---Uses the weighted chance system to choose a random item from a table 
---@param tbl table
---@return any item
function Math.Weighted(tbl)
    local weight = 0

    for _, chance in pairs(tbl) do
        weight = weight + chance
    end

    local random_num = math.random(1, weight)
    local cursor = 0

    for item, chance in pairs(tbl) do
        cursor = cursor + chance

        if cursor >= random_num then
            return item
        end
    end
end

ExtendedM.Math = Math