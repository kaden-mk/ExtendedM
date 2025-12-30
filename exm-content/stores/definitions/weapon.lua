---@type ExtendedM
local ExtendedM = exports["exm-core"]:ExtendedM()
local StoreManager = ExtendedM.StoreManager
local IS_SERVER = IsDuplicityVersion()

local Interface
if not IS_SERVER then
    ---@type NativeUI
    Interface = exports["exm-interface"]:EXMInterface().Native
end

local display_weapons
local category_menu_id, main_menu_id
local current_weapon_camera, current_weapon_object, target_weapon_hash
local selected_category = 0

local weapon_base_rotation
local weapon_current_rotation
local is_dragging = false
local rotation_target
local rotation_sensitivity = 200.0

local function DisplayWeaponModel(weapon_hash)
    if target_weapon_hash == weapon_hash then return end
    target_weapon_hash = weapon_hash

    CreateThread(function()
        RequestWeaponAsset(weapon_hash, 31, 0)
        while not HasWeaponAssetLoaded(weapon_hash) do
            if target_weapon_hash ~= weapon_hash then return end
            Wait(0)
        end
        
        if target_weapon_hash ~= weapon_hash then return end
        if not current_weapon_camera then return end

        if current_weapon_object then
            DeleteEntity(current_weapon_object)
            current_weapon_object = nil
        end

        local cam_position = GetCamCoord(current_weapon_camera)
        local cam_rotation = GetCamRot(current_weapon_camera, 2)
        local forward = ExtendedM.Math.RotationToDirection(cam_rotation)

        local target_point = cam_position + (forward * 1.5)

        local weapon_obj = CreateWeaponObject(weapon_hash, 999, target_point.x, target_point.y, target_point.z, true, 1.0, 0)
        current_weapon_object = weapon_obj
        
        weapon_base_rotation = vector3(0, 0, cam_rotation.z + 180)
        weapon_current_rotation = weapon_base_rotation
        rotation_target = weapon_base_rotation
        
        SetEntityRotation(weapon_obj, weapon_base_rotation.x, weapon_base_rotation.y, weapon_base_rotation.z, 2, true)
        SetEntityInvincible(weapon_obj, true)
        FreezeEntityPosition(weapon_obj, true)
        SetEntityCollision(weapon_obj, false, false)
    end)
end

if not IS_SERVER then
    category_menu_id = Interface.RegisterMenu(function()
        SetMouseCursorActiveThisFrame()

        Interface.SpriteHeader("shopui_title_gunclub", "shopui_title_gunclub", ExtendedM.Utility.GetWeaponGroupNameFromHash(selected_category))

        local cash = ExtendedM.DataSyncer.Data.cash
        
        for hash, price in pairs(display_weapons) do
            if GetWeapontypeGroup(hash) == selected_category then
                local label = ExtendedM.Enum.WEAPON_LABELS[hash]
                local color = cash >= price and "~g~" or "~r~"

                if Interface.Button(GetLabelText(label.name), GetLabelText(label.desc), color .. "$" .. ExtendedM.Utility.Comma(price)).hovered then
                    DisplayWeaponModel(hash)
                end
            end
        end
    end)

    Interface.SetDisabledControls(category_menu_id, Interface.ControlTemplates.Default)

    main_menu_id = Interface.RegisterMenu(function()
        SetMouseCursorActiveThisFrame()

        Interface.SpriteHeader("shopui_title_gunclub", "shopui_title_gunclub", "WEAPONS")
        if Interface.WentBack(category_menu_id) then selected_category = 0 end

        if Interface.Exiting() then
            if current_weapon_camera then
                ---@diagnostic disable-next-line: param-type-mismatch
                SetEntityVisible(PlayerPedId(), true, 0)
                RenderScriptCams(false, false, 0, false, false)
                DestroyCam(current_weapon_camera, false)
                current_weapon_camera = nil
            end

            if current_weapon_object then
                DeleteEntity(current_weapon_object)
                current_weapon_object = nil
            end
            
            target_weapon_hash = nil

            local player_ped = PlayerPedId()
            FreezeEntityPosition(player_ped, false)
        end

        local shown = {}
        for hash in pairs(display_weapons) do
            local group = GetWeapontypeGroup(hash)
            if not shown[group] then
                shown[group] = true
                if Interface.SubMenu(ExtendedM.Utility.GetWeaponGroupNameFromHash(group), category_menu_id).entered then
                    selected_category = group
                    Interface.ResetSelection(category_menu_id)
                end
            end
        end
    end)

    Interface.SetDisabledControls(main_menu_id, Interface.ControlTemplates.Default)
end

StoreManager.CreateStoreType("WEAPONS", {
    callback = function(data)
        if not IS_SERVER then
            StoreManager.CreateInteractionArea(data.interaction_position, 1, function()
                ExtendedM.DataSyncer:SyncData()

                CreateThread(function()
                    for hash in pairs(data.weapons) do
                        RequestWeaponAsset(hash, 31, 0)

                        while not HasWeaponAssetLoaded(hash) do Wait(0) end
                    end
                end)

                display_weapons = data.weapons
                Interface.SetVisible(main_menu_id, true)

                local player_ped = PlayerPedId()
                ---@diagnostic disable-next-line: param-type-mismatch
                SetEntityVisible(player_ped, false, 0)
                FreezeEntityPosition(player_ped, true)

                CreateThread(function()
                    while Interface.IsVisible(main_menu_id) or Interface.IsVisible(category_menu_id) do
                        Wait(0)

                        local mouse_cursor_sprite = is_dragging and 4 or 1
                        
                        SetMouseCursorSprite(mouse_cursor_sprite)
                        
                        DisableControlAction(0, ExtendedM.Enum.CONTROLS.LOOK_LR, true)
                        DisableControlAction(0, ExtendedM.Enum.CONTROLS.LOOK_UD, true)
                        DisableControlAction(0, ExtendedM.Enum.CONTROLS.LOOK_BEHIND, true)
                        DisableControlAction(0, ExtendedM.Enum.CONTROLS.LOOK_LEFT, true)
                        DisableControlAction(0, ExtendedM.Enum.CONTROLS.LOOK_RIGHT, true)
                        DisableControlAction(0, ExtendedM.Enum.CONTROLS.LOOK_DOWN, true)
                        
                        if current_weapon_object and weapon_base_rotation then
                            if IsDisabledControlPressed(0, ExtendedM.Enum.CONTROLS.ATTACK) then
                                if not is_dragging then
                                    is_dragging = true
                                    ExtendedM.Utility.GetMouseDelta()
                                else
                                    local delta = ExtendedM.Utility.GetMouseDelta()
                                    
                                    local rotation_delta_z = delta.x * rotation_sensitivity
                                    local rotation_delta_x = delta.y * rotation_sensitivity
                                    
                                    rotation_target = vector3(
                                        rotation_target.x + rotation_delta_x,
                                        rotation_target.y,
                                        rotation_target.z + rotation_delta_z
                                    )
                                end
                            else
                                if is_dragging then
                                    is_dragging = false
                                    rotation_target = weapon_base_rotation
                                end
                            end
                            
                            local lerp_speed = 0.15
                            weapon_current_rotation = vector3(
                                weapon_current_rotation.x + (rotation_target.x - weapon_current_rotation.x) * lerp_speed,
                                weapon_current_rotation.y + (rotation_target.y - weapon_current_rotation.y) * lerp_speed,
                                weapon_current_rotation.z + (rotation_target.z - weapon_current_rotation.z) * lerp_speed
                            )
                            
                            SetEntityRotation(current_weapon_object, weapon_current_rotation.x, weapon_current_rotation.y, weapon_current_rotation.z, 2, true)
                        end
                    end
                    
                    is_dragging = false
                    weapon_base_rotation = nil
                    weapon_current_rotation = nil
                    rotation_target = nil
                end)

                local settings = data.camera_settings
                local pos = settings.position
                local rot = settings.rotation

                current_weapon_camera = CreateCameraWithParams(`DEFAULT_SCRIPTED_CAMERA`, pos.x, pos.y, pos.z, rot.x, rot.y, rot.z, 60.0, true, 2)
                RenderScriptCams(true, false, 0, true, true)
            end, "browse weapons.")
        end
    end
})