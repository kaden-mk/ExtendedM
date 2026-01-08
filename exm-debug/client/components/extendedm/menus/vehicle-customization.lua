--[[
    TODO:
        ADD PROPER SUPPORT FOR ARMOR
        ADD CUSTOMIZATION OPTIONS WITH AUTOMATIC CATEGORIES DEPENDING ON THE VEHICLE
        ADD THE REPAIR VEHICLE SCREEN WHEN FIRST GOING IN
        ADD VEHICLE STATS
]]

local Native = EXMInterface.Native
local Config = EXMDebug.Config
local Utility = EXMDebug.Utility

local menu_names = Config.MENU_IDS.COMPONENTS.EXTENDEDM

local menu = Utility.CreateMenu
local sub = Native.SubMenu
local head = Native.SpriteHeader
local btn = Native.Button

local HEADER_DICT = "shopui_title_carmod"
local OWNED_SPRITE = { dict = "commonmenu", name = "shop_garage_icon_a", hover_name = "shop_garage_icon_b" }

local MOD_CATEGORIES = {
    Spoilers = 0,
    FrontBumper = 1,
    RearBumper = 2,
    SideSkirt = 3,
    Exhaust = 4,
    Frame = 5,
    Grille = 6,
    Hood = 7,
    Fender = 8,
    RightFender = 9,
    Roof = 10,
    Engine = 11,
    Brakes = 12,
    Transmission = 13,
    Horns = 14,
    Suspension = 15,
    Armor = 16,
    Turbo = 18,
    Xenon = 22,
    Wheels = 23,
    PlateHolder = 25,
    VanityPlates = 26,
    TrimDesign = 27,
    Ornaments = 28,
    Dashboard = 29,
    DialDesign = 30,
    DoorSpeakers = 31,
    Seats = 32,
    SteeringWheels = 33,
    ShifterLeavers = 34,
    Plaques = 35,
    Speakers = 36,
    Trunk = 37,
    Hydraulics = 38,
    EngineBlock = 39,
    AirFilter = 40,
    Struts = 41,
    ArchCover = 42,
    Aerials = 43,
    Trim = 44,
    Tank = 45,
    Windows = 46,
    Livery = 48,
}

local AVAILABLE_MENUS = {
    { id = "_ENGINE",       label = "CMOD_MOD_ENG", desc = "CMOD_MOD_7_D",  mod = MOD_CATEGORIES.Engine,       price = 2500,  type = "engine" },
    { id = "_BRAKES",       label = "CMOD_MOD_BRA", desc = "CMOD_MOD_3_D",  mod = MOD_CATEGORIES.Brakes,       price = 2000,  type = "list" },
    { id = "_TRANSMISSION", label = "CMOD_MOD_TRN", desc = "CMOD_MOD_26_D", mod = MOD_CATEGORIES.Transmission, price = 3000,  type = "list" },
    { id = "_SUSPENSION",   label = "CMOD_MOD_SUS", desc = "CMOD_MOD_24_D", mod = MOD_CATEGORIES.Suspension,   price = 1500,  type = "list" },
    { id = "_ARMOR",        label = "CMOD_MOD_ARM", desc = "CMOD_MOD_16_D", mod = MOD_CATEGORIES.Armor,        price = 5000,  type = "list" },
    { id = "_TURBO",        label = "CMOD_MOD_TUR", desc = "CMOD_MOD_27_D", mod = MOD_CATEGORIES.Turbo,        price = 15000, type = "turbo" },
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
        [MOD_CATEGORIES.Engine] = "CMOD_ENG_",
        [MOD_CATEGORIES.Brakes] = "CMOD_BRA_",
        [MOD_CATEGORIES.Transmission] = "CMOD_GBX_",
        [MOD_CATEGORIES.Suspension] = "CMOD_SUS_",
        [MOD_CATEGORIES.Armor] = "CMOD_ARM_",
        [MOD_CATEGORIES.Horns] = "CMOD_HRN_",
        [MOD_CATEGORIES.Grille] = "CMOD_GRL_",
        [MOD_CATEGORIES.Exhaust] = "CMOD_MUF_",
        [MOD_CATEGORIES.FrontBumper] = "CMOD_BUM_",
        [MOD_CATEGORIES.RearBumper] = "CMOD_BUM_",
        [MOD_CATEGORIES.Spoilers] = "CMOD_SPO_",
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
    list = function(menu_id, title_label, mod_type, price_factor)
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
                local price = mod_to_set ~= -1 and "$" .. tostring(i * price_factor) or ""
                
                btn(mod_name, nil, is_installed and "" or price, is_installed and OWNED_SPRITE or nil)
                :On("click", function()
                    SetVehicleMod(veh, mod_type, mod_to_set, false)
                    Native.Refresh(menu_id)
                end)
            end
        end)
    end,

    engine = function(menu_id, title_label, mod_type, price_factor)
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
                local price = "$" .. tostring((i + 1) * price_factor)
                
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

    turbo = function(menu_id, title_label, mod_type, upgrade_price)
        menu(menu_id, function()
            Native.SetMaxVisibleMenuItemCount(menu_id, 10)

            head(HEADER_DICT, HEADER_DICT, GetLabelText(title_label))
            
            local veh = GetCurrentVehicle()
            if not veh then return end
            
            local has_mod = IsToggleModOn(veh, mod_type)
            
            btn(GetLabelText("CMOD_ARM_0"), nil, not has_mod and "" or "", not has_mod and OWNED_SPRITE or nil)
            :On("click", function()
                ToggleVehicleMod(veh, mod_type, false)
                Native.Refresh(menu_id)
            end)
            
            btn(GetLabelText("CMOD_TUR_1"), nil, has_mod and "" or "$" .. upgrade_price, has_mod and OWNED_SPRITE or nil)
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
        renderer(full_id, menu_item.label, menu_item.mod, menu_item.price)
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