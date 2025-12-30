---@type EXMInterface
local Interface = exports["exm-interface"]:EXMInterface()
---@type ExtendedM
local ExtendedM = exports["exm-core"]:ExtendedM()

local Native = Interface.Native

local Config = EXMDebug.Config
local Utility = EXMDebug.Utility

local player_menu_names = Config.MENU_IDS.COMPONENTS.PLAYER

local menu = Utility.CreateMenu
local sub = Native.SubMenu
local head = Native.Header
local button = Native.Button
local list = Native.ListItem
local range = ExtendedM.Utility.MakeRange
local label = Native.Label

menu(player_menu_names.PED_COMPONENTS, function()
    head(Config.HEADER_TEXT, "Ped Components")

    local ped = PlayerPedId()

    for component_id = 0, 11 do
        local max_drawable = GetNumberOfPedDrawableVariations(ped, component_id) - 1
        if max_drawable < 0 then goto continue end

        local drawable_items = range(0, max_drawable)
        local current_drawable = GetPedDrawableVariation(ped, component_id)

        local drawable = list(
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

        local texture_items = range(0, max_texture)
        local current_texture = GetPedTextureVariation(ped, component_id)

        local texture = list(
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

menu(player_menu_names.PED_PROPS, function()
    head(Config.HEADER_TEXT, "Ped Props")

     local ped = PlayerPedId()

    for prop_id = 0, 7 do
        local max_prop = GetNumberOfPedPropDrawableVariations(ped, prop_id) - 1

        if max_prop < 0 then goto continue end

        local prop_items = range(-1, max_prop)
        local current_prop = GetPedPropIndex(ped, prop_id)

        local label = prop_names[prop_id] or ("Prop " .. prop_id)

        local prop = list(
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

            local texture_items = range(0, texture_count - 1)
            local current_texture = GetPedPropTextureIndex(ped, prop_id)

            local texture_label = prop_names[prop_id] .. " Texture" or ("Prop " .. prop_id .. " Texture")

            local texture = list(
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

menu(player_menu_names.PED_FACE_FEATURES, function()
    head(Config.HEADER_TEXT, "Face Features")
    label("Note: This is only for the freemode peds.")

    local ped = PlayerPedId()
    local feature_items = { -1.0, -0.5, -0.25, 0.0, 0.25, 0.5, 1.0 }

    for feature_id = 0, 19 do
        local index = face_feature_indices[feature_id + 1]

        -- this should obviously use a slider
        local feature = list(
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

menu(player_menu_names.PED_FACE_BLEND, function()
    head(Config.HEADER_TEXT, "Ped Face Blend")
    label("Note: This is only for the freemode peds.")

    local ped = PlayerPedId()
    local parent_items = range(0, 45)
    local mix_items = { 0.0, 0.25, 0.5, 0.75, 1.0 }

    local shape_father = list("Shape Father", parent_items, shape_father_index)
    local shape_mother = list("Shape Mother", parent_items, shape_mother_index)
    local shape_mix = list("Shape Mix", mix_items, shape_mix_index)

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

local function reset_player_ped_features()
    shape_father_index = 1
    shape_mother_index = 1
    shape_mix_index = 3

    for i = 1, 20 do
        face_feature_indices[i] = 4
    end
end

menu(player_menu_names.PED_CUSTOMIZATION, function()
    head(Config.HEADER_TEXT, "Ped Customization")

    local change_ped = button("Change Player Ped", "Changes the player's ped depending on the model input.")
    if change_ped.clicked then
        local ped_to_spawn = ExtendedM.Utility.OnScreenKeyboardInput("Ped:", "", 20)
        if ped_to_spawn == nil then return end

        reset_player_ped_features()

        ExtendedM.Utility.ReplacePlayerPed(ped_to_spawn)
    end

    sub("Ped Components", player_menu_names.PED_COMPONENTS, "Modify the ped's components.")
    sub("Ped Props", player_menu_names.PED_PROPS, "Modify the ped's props.")
    sub("Ped Face Features", player_menu_names.PED_FACE_FEATURES, "Modify the ped's face features.")
    sub("Ped Face Blend", player_menu_names.PED_FACE_BLEND, "Modify the peds parents & face blend features.")
end)