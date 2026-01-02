local Native = EXMInterface.Native
local ExtendedM = exports["exm-core"]:ExtendedM()

local Config = EXMDebug.Config
local Utility = EXMDebug.Utility

local world_menu_names = Config.MENU_IDS.COMPONENTS.WORLD

local menu = Utility.CreateMenu
local head = Native.Header
local button = Native.Button

menu(world_menu_names.MAIN, function()
    head(Config.HEADER_TEXT, "World Menu")

    local tpm = button("Teleport to Waypoint", "Teleports you to your map waypoint.")
    tpm:On("click", function()
        ExtendedM.Utility.TeleportToWaypoint()
    end)

    local tp_coords = button("Teleport to Coords", "Teleports you to specific coordinates.")
    tp_coords:On("click", function()
        local input = ExtendedM.Utility.OnScreenKeyboardInput("Coords (x, y, z):", "", 50)
        if input == nil then return end

        local x, y, z = string.match(input, "([^,]+),%s*([^,]+),%s*([^,]+)")
        if x and y and z then
            SetEntityCoords(PlayerPedId(), tonumber(x), tonumber(y), tonumber(z), false, false, false, false)
        else
             x, y, z = string.match(input, "(%S+)%s+(%S+)%s+(%S+)")
             if x and y and z then
                SetEntityCoords(PlayerPedId(), tonumber(x), tonumber(y), tonumber(z), false, false, false, false)
             end
        end
    end)

    local copy_coords = button("Print Coordinates", "Prints your current coordinates to the F8 console.")
    copy_coords:On("click", function()
        local coords = GetEntityCoords(PlayerPedId())
        local heading = GetEntityHeading(PlayerPedId())
        
        local format = string.format("vector4(%.2f, %.2f, %.2f, %.2f)", coords.x, coords.y, coords.z, heading)
        
        print("^2[Coords]^7: " .. format)
    end)
end)
