---@type EXMInterface
local Interface = exports["exm-interface"]:EXMInterface()
local Native = Interface.Native

local ped_components_menu = Native.RegisterMenu(function()
    Native.Header("Debug Menu", "Ped Components")

   local ped = PlayerPedId()

    for component_id = 0, 11 do
        local max_drawable = GetNumberOfPedDrawableVariations(ped, component_id) - 1
        if max_drawable < 0 then goto continue end

        local drawable_items = ExtendedM.Utility.MakeRange(0, max_drawable)
        local current_drawable = GetPedDrawableVariation(ped, component_id)

        local drawable = Native.ListItem(
            "Component " .. component_id .. " Drawable",
            drawable_items,
            current_drawable + 1
        )

        if drawable.changed then
            SetPedComponentVariation(
                ped,
                component_id,
                drawable_items[drawable.index],
                0,
                0
            )
        end

        local max_texture = GetNumberOfPedTextureVariations(
            ped,
            component_id,
            GetPedDrawableVariation(ped, component_id)
        ) - 1

        if max_texture < 0 then goto continue end

        local texture_items = ExtendedM.Utility.MakeRange(0, max_texture)
        local current_texture = GetPedTextureVariation(ped, component_id)

        local texture = Native.ListItem(
            "Component " .. component_id .. " Texture",
            texture_items,
            current_texture + 1
        )

        if texture.changed then
            SetPedComponentVariation(
                ped,
                component_id,
                GetPedDrawableVariation(ped, component_id),
                texture_items[texture.index],
                0
            )
        end

        ::continue::
    end
end)

local prop_names = {
    [0] = "Hat",
    [1] = "Glasses",
    [2] = "Ears",
    [6] = "Watch",
    [7] = "Bracelet"
}

local ped_props_menu = Native.RegisterMenu(function()
    Native.Header("Debug Menu", "Ped Props")

    local ped = PlayerPedId()

    for prop_id = 0, 7 do
        local max_prop = GetNumberOfPedPropDrawableVariations(ped, prop_id) - 1

        if max_prop < 0 then goto continue end

        local prop_items = ExtendedM.Utility.MakeRange(-1, max_prop)
        local current_prop = GetPedPropIndex(ped, prop_id)

        local label = prop_names[prop_id] or ("Prop " .. prop_id)

        local prop = Native.ListItem(
            label,
            prop_items,
            current_prop + 2
        )

        if prop.changed then
            local value = prop_items[prop.index]
            if value == -1 then
                ClearPedProp(ped, prop_id)
            else
                SetPedPropIndex(ped, prop_id, value, 0, true)
            end
        end

        local selected_drawable = GetPedPropIndex(ped, prop_id)
        if selected_drawable ~= -1 then
            local texture_count = GetNumberOfPedPropTextureVariations(
                ped,
                prop_id,
                selected_drawable
            )

            if texture_count <= 1 then goto continue end

            local texture_items = ExtendedM.Utility.MakeRange(0, texture_count - 1)
            local current_texture = GetPedPropTextureIndex(ped, prop_id)

            local texture_label = prop_names[prop_id] .. " Texture" or ("Prop " .. prop_id .. " Texture")

            local texture = Native.ListItem(
                texture_label,
                texture_items,
                current_texture + 1
            )

            if texture.changed then
                SetPedPropIndex(
                    ped,
                    prop_id,
                    selected_drawable,
                    texture_items[texture.index],
                    true
                )
            end
        end

        ::continue::
    end
end)

local face_feature_indices = {}
for i = 1, 20 do
    face_feature_indices[i] = 4
end

local ped_face_menu = Native.RegisterMenu(function()
    Native.Header("Debug Menu", "Face Features")

    local ped = PlayerPedId()
    local feature_items = { -1.0, -0.5, -0.25, 0.0, 0.25, 0.5, 1.0 }

    for feature_id = 0, 19 do
        local index = face_feature_indices[feature_id + 1]

        -- this should obviously use a slider
        local feature = Native.ListItem(
            "Feature " .. feature_id,
            feature_items,
            index
        )

        if feature.changed then
            face_feature_indices[feature_id + 1] = feature.index

            SetPedFaceFeature(
                ped,
                feature_id,
                feature_items[feature.index]
            )
        end
    end
end)

local shape_father_index = 1
local shape_mother_index = 1
local shape_mix_index = 3

local ped_head_blend_menu = Native.RegisterMenu(function()
    Native.Header("Debug Menu", "Head Blend")

    local ped = PlayerPedId()
    local parent_items = ExtendedM.Utility.MakeRange(0, 45)
    local mix_items = { 0.0, 0.25, 0.5, 0.75, 1.0 }

    local shape_father = Native.ListItem("Shape Father", parent_items, shape_father_index)
    local shape_mother = Native.ListItem("Shape Mother", parent_items, shape_mother_index)
    local shape_mix = Native.ListItem("Shape Mix", mix_items, shape_mix_index)

    shape_father_index = shape_father.index
    shape_mother_index = shape_mother.index
    shape_mix_index = shape_mix.index

    if shape_father.changed or shape_mother.changed or shape_mix.changed then
        SetPedHeadBlendData(
            ped,
            parent_items[shape_father.index],
            parent_items[shape_mother.index],
            0,
            parent_items[shape_father.index],
            parent_items[shape_mother.index],
            0,
            mix_items[shape_mix.index],
            mix_items[shape_mix.index],
            0.0,
            false
        )
    end
end)

local player_ped_customization_menu = Native.RegisterMenu(function()
    Native.Header("Debug Menu", "Ped Customization")

    local change_ped = Native.Button("Change Player Ped", "Changes the player's ped depending on the model input.")
    if change_ped.clicked then
        local ped_to_spawn = ExtendedM.Utility.OnScreenKeyboardInput("Ped:", "", 20)
        if ped_to_spawn == nil then return end

        ExtendedM.Utility.ReplacePlayerPed(ped_to_spawn)
    end

    Native.SubMenu("Ped Components", ped_components_menu, "Modify the ped's components.")
    Native.SubMenu("Ped Props", ped_props_menu, "Modify the ped's props.")
    Native.SubMenu("Ped Face Features", ped_face_menu, "Modify the ped's face features.")
    Native.SubMenu("Ped Head Blend", ped_head_blend_menu, "Modify the ped's parents & head blend.")
end)

local player_menu = Native.RegisterMenu(function()
    Native.Header("Debug Menu", "Player Menu")

    Native.SubMenu("Ped Customization", player_ped_customization_menu, "Control your ped.")
end)

local world_menu = Native.RegisterMenu(function()
    Native.Header("Debug Menu", "World Menu")
end)

local vehicle_menu = Native.RegisterMenu(function()
    Native.Header("Debug Menu", "Vehicle Menu")

    local spawn_vehicle = Native.Button("Spawn Vehicle", "Spawns a vehicle depending on its hash.")
    if spawn_vehicle.clicked then
        local vehicle_to_spawn = ExtendedM.Utility.OnScreenKeyboardInput("Vehicle:", "", 20)
        if vehicle_to_spawn == nil then return end

        -- TODO: Create a notification system for when the vehicle is invalid
        ExtendedM.Utility.SpawnVehicleForPlayer(vehicle_to_spawn, true)
    end
end)

local debug_interaction_menu = Native.RegisterMenu(function()
    Native.Header("Debug Menu", "Debug Menu")

    Native.SubMenu("Player", player_menu)
    Native.SubMenu("World", world_menu)
    Native.SubMenu("Vehicles", vehicle_menu)
end)

local template = Native.ControlTemplates.WalkAndLook

Native.SetDisabledControls(debug_interaction_menu, template)
Native.SetDisabledControls(player_menu, template)
Native.SetDisabledControls(world_menu, template)
Native.SetDisabledControls(vehicle_menu, template)
Native.SetDisabledControls(player_ped_customization_menu, template)
Native.SetDisabledControls(ped_components_menu, template)
Native.SetDisabledControls(ped_props_menu, template)
Native.SetDisabledControls(ped_face_menu, template)
Native.SetDisabledControls(ped_head_blend_menu, template)

RegisterCommand("open_debug_menu", function()
    Native.SetVisible(debug_interaction_menu, true)
end, false)

RegisterKeyMapping("open_debug_menu", "Open Debug Menu", "keyboard", "f5")