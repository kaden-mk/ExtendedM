local Native = EXMInterface.Native
local ExtendedM = exports["exm-core"]:ExtendedM()

local Config = EXMDebug.Config
local Utility = EXMDebug.Utility

local player_menu_names = Config.MENU_IDS.COMPONENTS.PLAYER

local menu = Utility.CreateMenu
local sub = Native.SubMenu
local head = Native.Header
local button = Native.Button
local list = Native.ListItem
local listi = Native.ListIndex
local range = ExtendedM.Utility.MakeRange

menu(player_menu_names.PED_COMPONENTS, function()
    head(Config.HEADER_TEXT, "Ped Components")

    local ped = PlayerPedId()

    for component_id = 0, 11 do
        local max_drawable = GetNumberOfPedDrawableVariations(ped, component_id) - 1
        if max_drawable < 0 then goto continue end

        local current_drawable = GetPedDrawableVariation(ped, component_id)

        local drawable = listi(
            "Component " .. component_id .. " Drawable",
            0,
            max_drawable,
            1,
            current_drawable
        )

        drawable:On("change", function(value)
            SetPedComponentVariation(
                ped,
                component_id,
                value,
                0,
                0
            )
        end)

        local max_texture = GetNumberOfPedTextureVariations(
            ped,
            component_id,
            GetPedDrawableVariation(ped, component_id)
        ) - 1

        if max_texture < 0 then goto continue end

        local current_texture = GetPedTextureVariation(ped, component_id)

        local texture = listi(
            "Component " .. component_id .. " Texture",
            0,
            max_texture,
            1,
            current_texture
        )

        texture:On("change", function(value)
            SetPedComponentVariation(
                ped,
                component_id,
                GetPedDrawableVariation(ped, component_id),
                value,
                0
            )
        end)

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

        local label = prop_names[prop_id] or ("Prop " .. prop_id)
        
        local prop = listi(
            label,
            -1,
            max_prop,
            1,
            GetPedPropIndex(ped, prop_id)
        )

        prop:On("change", function(value)
            if value == -1 then
                ClearPedProp(ped, prop_id)
            else
                SetPedPropIndex(ped, prop_id, value, 0, true)
            end
        end)

        local selected_drawable = GetPedPropIndex(ped, prop_id)
        if selected_drawable ~= -1 then
            local texture_count = GetNumberOfPedPropTextureVariations(
                ped,
                prop_id,
                selected_drawable
            )

            if texture_count <= 1 then goto continue end

            local current_texture = GetPedPropTextureIndex(ped, prop_id)
            local texture_label = prop_names[prop_id] .. " Texture" or ("Prop " .. prop_id .. " Texture")

            local texture = listi(
                texture_label,
                0,
                texture_count - 1,
                1,
                current_texture
            )

            texture:On("change", function(value)
                SetPedPropIndex(
                    ped,
                    prop_id,
                    selected_drawable,
                    value,
                    true
                )
            end)
        end

        ::continue::
    end
end)

menu(player_menu_names.PED_FACE_FEATURES, function()
    head(Config.HEADER_TEXT, "Face Features")

    local ped = PlayerPedId()

    for feature_id = 0, 19 do
        -- this should obviously use a slider
        local feature = listi(
            "Feature " .. feature_id,
            -1.0,
            1.0,
            0.01,
            0
        )

        feature:On("change", function(value)
            SetPedFaceFeature(
                ped,
                feature_id,
                value
            )
        end)
    end
end)

local shape_father_index = 1
local shape_mother_index = 1
local shape_mix_index = 3

menu(player_menu_names.PED_FACE_BLEND, function()
    head(Config.HEADER_TEXT, "Ped Face Blend")

    local ped = PlayerPedId()

    local shape_father = listi("Shape Father", 0, 45, 1, 0)
    local shape_mother = listi("Shape Mother", 0, 45, 1, 0)
    local shape_mix = listi("Shape Mix", 0, 1, 0.01, 0)

    local function update_blend_data()
        SetPedHeadBlendData(
            ped,
            shape_father_index + 1,
            shape_mother_index + 1,
            0,
            shape_father_index + 1,
            shape_mother_index + 1,
            0,
            shape_mix_index,
            shape_mix_index,
            0.0,
            false
        )
    end

    shape_father:On("change", function(index)
        shape_father_index = index
        update_blend_data()
    end)

    shape_mother:On("change", function(index)
        shape_mother_index = index
        update_blend_data()
    end)

    shape_mix:On("change", function(index)
        shape_mix_index = index
        update_blend_data()
    end)
end)

local function reset_player_ped_features()
    shape_father_index = 1
    shape_mother_index = 1
    shape_mix_index = 3
end

menu(player_menu_names.PED_CUSTOMIZATION, function()
    head(Config.HEADER_TEXT, "Ped Customization")

    local change_ped = button("Change Player Ped", "Changes the player's ped depending on the model input.")
    change_ped:On("click", function()
        local ped_to_spawn = ExtendedM.Utility.OnScreenKeyboardInput("Ped:", "", 20)
        if ped_to_spawn == nil then return end

        reset_player_ped_features()

        ExtendedM.Utility.ReplacePlayerPed(ped_to_spawn)
    end)

    sub("Ped Components", player_menu_names.PED_COMPONENTS, "Modify the ped's components.")
    sub("Ped Props", player_menu_names.PED_PROPS, "Modify the ped's props.")
    sub("Ped Face Features", player_menu_names.PED_FACE_FEATURES, "Modify the ped's face features.")
    sub("Ped Face Blend", player_menu_names.PED_FACE_BLEND, "Modify the peds parents & face blend features.")
end)