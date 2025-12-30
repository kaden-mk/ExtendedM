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

ExtendedM.Math = Math