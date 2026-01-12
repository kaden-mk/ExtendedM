--[[
    TODO:
        ADD PROPER SUPPORT FOR ARMOR
        ADD CUSTOMIZATION OPTIONS WITH AUTOMATIC CATEGORIES DEPENDING ON THE VEHICLE
        ADD THE REPAIR VEHICLE SCREEN WHEN FIRST GOING IN
        ADD VEHICLE STATS
]]

local Native = EXMInterface.Native
local ExtendedM = exports["exm-core"]:ExtendedM()
local Config = EXMDebug.Config
local Utility = EXMDebug.Utility

local menu_names = Config.MENU_IDS.COMPONENTS.EXTENDEDM

local menu = Utility.CreateMenu
local sub = Native.SubMenu
local head = Native.SpriteHeader
local btn = Native.Button

local HEADER_DICT = "shopui_title_carmod"
local OWNED_SPRITE = { dict = "commonmenu", name = "shop_garage_icon_a", hover_name = "shop_garage_icon_b" }


local AVAILABLE_MENUS = {
    { id = "_SUSPENSION",   label = "CMOD_MOD_SUS", desc = "CMOD_MOD_24_D", mod = ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_SUSPENSION,   menu_enum = ExtendedM.Enum.VEHICLE_MOD_MENU.CMM_SUSPENSION,   type = "list" },
    { id = "_ENGINE",       label = "CMOD_MOD_ENG", desc = "CMOD_MOD_7_D",  mod = ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_ENGINE,       menu_enum = ExtendedM.Enum.VEHICLE_MOD_MENU.CMM_ENGINE,       type = "engine" },
    { id = "_TRANSMISSION", label = "CMOD_MOD_TRN", desc = "CMOD_MOD_26_D", mod = ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_GEARBOX, menu_enum = ExtendedM.Enum.VEHICLE_MOD_MENU.CMM_TRANSMISSION, type = "list" },
    { id = "_ARMOR",        label = "CMOD_MOD_ARM", desc = "CMOD_MOD_16_D", mod = ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_ARMOUR,        menu_enum = ExtendedM.Enum.VEHICLE_MOD_MENU.CMM_ARMOUR,       type = "armor" },
    { id = "_BRAKES",       label = "CMOD_MOD_BRA", desc = "CMOD_MOD_3_D",  mod = ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_BRAKES,       menu_enum = ExtendedM.Enum.VEHICLE_MOD_MENU.CMM_BRAKES,       type = "list" },
    { id = "_TURBO",        label = "CMOD_MOD_TUR", desc = "CMOD_MOD_27_D", mod = ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_TOGGLE_TURBO,        menu_enum = ExtendedM.Enum.VEHICLE_MOD_MENU.CMM_TURBO,        type = "turbo" },
}

local last_vehicle = 0

local function GetCurrentVehicle()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)
    if veh == 0 then return nil end

    if GetVehicleModKit(veh) ~= 0 then
        SetVehicleModKit(veh, 0)
    end

    return veh
end

CreateThread(function()
    RequestAdditionalText("mod_mnu", 10)
    
    while true do
        local ped = PlayerPedId()
        local current_veh = GetVehiclePedIsIn(ped, false)
        
        if not HasThisAdditionalTextLoaded("mod_mnu", 10) then
            RequestAdditionalText("mod_mnu", 10)
        end

        if current_veh ~= last_vehicle then
            local base_id = menu_names.VEHICLE_CUSTOMIZATION
            
            if last_vehicle ~= 0 and current_veh == 0 then
                if Native.GetCurrentMenu() ~= base_id and string.find(tostring(Native.GetCurrentMenu()), base_id) then
                    Native.GoToSubmenu(base_id)
                end
            end

            last_vehicle = current_veh

            Native.Refresh(base_id)
            
            for _, menu_item in ipairs(AVAILABLE_MENUS) do
                Native.Refresh(base_id .. menu_item.id)
            end

            Native.ResetSelection(base_id)
        end

        Wait(500)
    end
end)

local function GetModName(vehicle, mod_type, mod_index)
    local prefixes = {
        [ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_ENGINE] = "CMOD_ENG_",
        [ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_BRAKES] = "CMOD_BRA_",
        [ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_GEARBOX] = "CMOD_GBX_",
        [ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_SUSPENSION] = "CMOD_SUS_",
        [ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_ARMOUR] = "CMOD_ARM_",
        [ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_HORN] = "CMOD_HRN_",
        [ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_GRILL] = "CMOD_GRL_",
        [ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_EXHAUST] = "CMOD_MUF_",
        [ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_BUMPER_F] = "CMOD_BUM_",
        [ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_BUMPER_R] = "CMOD_BUM_",
        [ExtendedM.Enum.VEHICLE_MOD_TYPE.MOD_SPOILER] = "CMOD_SPO_",
    }

    local prefix = prefixes[mod_type]
    if prefix then
        local label = prefix .. mod_index
        local text = GetLabelText(label)

        if text ~= "NULL" then return text end
    end

    if mod_index == 0 then
        return GetLabelText("CMOD_ARM_0")
    end

    if mod_index > 0 then
        local label = GetModTextLabel(vehicle, mod_type, mod_index - 1)

        if label and label ~= "NULL" and label ~= "" then
            local text = GetLabelText(label)
            if text ~= "NULL" then return text end
        end

        return "Upgrade " .. mod_index
    end

    return "Unknown"
end

local RENDERERS = {
    list = function(menu_id, title_label, mod_type, menu_type_enum)
        menu(menu_id, function()
            Native.SetMaxVisibleMenuItemCount(menu_id, 10)
            
            head(HEADER_DICT, HEADER_DICT, GetLabelText(title_label))
            
            local veh = GetCurrentVehicle()
            if not veh then return end
            
            local max_mods = GetNumVehicleMods(veh, mod_type)
            local current_mod = GetVehicleMod(veh, mod_type)
            
            for i = 0, max_mods do
                local mod_to_set = i - 1
                local is_installed = current_mod == mod_to_set
                
                local mod_name = GetModName(veh, mod_type, i)
                local price_value = 0
                
                if mod_to_set ~= -1 and menu_type_enum then
                    local price_variation = ExtendedM.Vehicles.GET_VEHICLE_MOD_PRICE_VARIATION_FOR_CATALOGUE(GetEntityModel(veh))
                    price_value = ExtendedM.Vehicles.GET_MP_CARMOD_MENU_OPTION_COST(
                        menu_type_enum,
                        i,
                        price_variation,
                        0,
                        nil,
                        1.0,
                        false
                    )
                end
                
                local price = price_value > 0 and "$" .. tostring(price_value) or ""
                
                btn(mod_name, nil, is_installed and "" or price, is_installed and OWNED_SPRITE or nil)
                :On("click", function()
                    SetVehicleMod(veh, mod_type, mod_to_set, false)
                    Native.Refresh(menu_id)
                end)
            end
        end)
    end,

    engine = function(menu_id, title_label, mod_type, menu_type_enum)
        menu(menu_id, function()
            Native.SetMaxVisibleMenuItemCount(menu_id, 10)

            head(HEADER_DICT, HEADER_DICT, GetLabelText(title_label))
            
            local veh = GetCurrentVehicle()
            if not veh then return end
            
            local max_mods = GetNumVehicleMods(veh, mod_type)
            local current_mod = GetVehicleMod(veh, mod_type)
            
            for i = 0, max_mods - 1 do
                local mod_name = GetModName(veh, mod_type, i + 2) 
                
                local is_installed = current_mod == i
                local price_value = 0
                
                if menu_type_enum then
                    local price_variation = ExtendedM.Vehicles.GET_VEHICLE_MOD_PRICE_VARIATION_FOR_CATALOGUE(GetEntityModel(veh))
                    price_value = ExtendedM.Vehicles.GET_MP_CARMOD_MENU_OPTION_COST(
                        menu_type_enum,
                        i + 1,
                        price_variation,
                        0,
                        nil,
                        1.0,
                        false
                    )
                end
                
                local price = price_value > 0 and "$" .. tostring(price_value) or ""
                
                btn(mod_name, nil, is_installed and "" or price, is_installed and OWNED_SPRITE or nil)
                :On("click", function()
                    if is_installed then
                        SetVehicleMod(veh, mod_type, -1, false)
                    else
                        SetVehicleMod(veh, mod_type, i, false)
                    end

                    Native.Refresh(menu_id)
                end)
            end
        end)
    end,

    armor = function(menu_id, title_label, mod_type, menu_type_enum)
        menu(menu_id, function()
            Native.SetMaxVisibleMenuItemCount(menu_id, 10)

            head(HEADER_DICT, HEADER_DICT, GetLabelText(title_label))
            
            local veh = GetCurrentVehicle()
            if not veh then return end
            
            local max_mods = GetNumVehicleMods(veh, mod_type)
            local current_mod = GetVehicleMod(veh, mod_type)
            
            for i = 0, max_mods - 1 do
                local mod_name = GetModName(veh, mod_type, i + 1)
                
                local is_installed = current_mod == i
                local price_value = 0
                
                if menu_type_enum then
                    local price_variation = ExtendedM.Vehicles.GET_VEHICLE_MOD_PRICE_VARIATION_FOR_CATALOGUE(GetEntityModel(veh))
                    price_value = ExtendedM.Vehicles.GET_MP_CARMOD_MENU_OPTION_COST(
                        menu_type_enum,
                        i + 1,
                        price_variation,
                        0,
                        nil,
                        1.0,
                        false
                    )
                end
                
                local price = price_value > 0 and "$" .. tostring(price_value) or ""
                
                btn(mod_name, nil, is_installed and "" or price, is_installed and OWNED_SPRITE or nil)
                :On("click", function()
                    if is_installed then
                        SetVehicleMod(veh, mod_type, -1, false)
                    else
                        SetVehicleMod(veh, mod_type, i, false)
                    end

                    Native.Refresh(menu_id)
                end)
            end
        end)
    end,

    turbo = function(menu_id, title_label, mod_type, menu_type_enum)
        menu(menu_id, function()
            Native.SetMaxVisibleMenuItemCount(menu_id, 10)

            head(HEADER_DICT, HEADER_DICT, GetLabelText(title_label))
            
            local veh = GetCurrentVehicle()
            if not veh then return end
            
            local has_mod = IsToggleModOn(veh, mod_type)
            
            btn(GetLabelText("CMOD_TUR_0"), nil, not has_mod and "" or "", not has_mod and OWNED_SPRITE or nil)
            :On("click", function()
                ToggleVehicleMod(veh, mod_type, false)
                Native.Refresh(menu_id)
            end)
            
            local price_value = 0
            if menu_type_enum then
                local price_variation = ExtendedM.Vehicles.GET_VEHICLE_MOD_PRICE_VARIATION_FOR_CATALOGUE(GetEntityModel(veh))
                price_value = ExtendedM.Vehicles.GET_MP_CARMOD_MENU_OPTION_COST(
                    menu_type_enum,
                    1,
                    price_variation,
                    0,
                    nil,
                    1.0,
                    false
                )
            end
            
            local price = price_value > 0 and "$" .. tostring(price_value) or ""
            
            btn(GetLabelText("CMOD_TUR_1"), nil, has_mod and "" or price, has_mod and OWNED_SPRITE or nil)
            :On("click", function()
                ToggleVehicleMod(veh, mod_type, true)
                Native.Refresh(menu_id)
            end)
        end)
    end,
}

for _, menu_item in ipairs(AVAILABLE_MENUS) do
    local full_id = menu_names.VEHICLE_CUSTOMIZATION .. menu_item.id
    local renderer = RENDERERS[menu_item.type]
    
    if renderer then
        renderer(full_id, menu_item.label, menu_item.mod, menu_item.menu_enum)
    end
end

menu(menu_names.VEHICLE_CUSTOMIZATION, function()
    Native.SetMaxVisibleMenuItemCount(menu_names.VEHICLE_CUSTOMIZATION, 10)

    local veh = GetCurrentVehicle()
    
    head(HEADER_DICT, HEADER_DICT, "CATEGORIES")
    
    if not veh then 
        btn("~r~Not in a vehicle", "Get in a vehicle to customize")
        return 
    end
    
    for _, menu_item in ipairs(AVAILABLE_MENUS) do
        sub(GetLabelText(menu_item.label), menu_names.VEHICLE_CUSTOMIZATION .. menu_item.id, GetLabelText(menu_item.desc))
    end
end)