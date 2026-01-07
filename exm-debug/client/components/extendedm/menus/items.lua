local Native = EXMInterface.Native

local Config = EXMDebug.Config
local Utility = EXMDebug.Utility

local exm_menu_names = Config.MENU_IDS.COMPONENTS.EXTENDEDM

local menu = Utility.CreateMenu
local sub = Native.SubMenu
local head = Native.Header

menu(exm_menu_names.ITEMS_HANDLER, function()
    head(Config.HEADER_TEXT, "Items Handler")

    Native.Button("Give Item", "Add an item by ID with metadata support."):On("click", function()
        local item_id = ExtendedM.Utility.OnScreenKeyboardInput("Enter Item ID", "", 20)
        if not item_id or item_id == "" then return end

        local prototype = ExtendedM.Items.Prototypes[item_id]
        if not prototype then
            print("Invalid Item ID")
            return
        end

        local quantity_str = ExtendedM.Utility.OnScreenKeyboardInput("Enter Quantity", "1", 10)
        local quantity = tonumber(quantity_str) or 1

        local schema = ExtendedM.Items.TypeMetadataSchemas[prototype.item_type]
        local metadata = {}

        if schema then
            for key, data in pairs(schema) do
                if not data.distribution then
                     local input = ExtendedM.Utility.OnScreenKeyboardInput("Enter " .. key, "", 20)
                     if input then
                        if data.type == "integer" or data.type == "number" then
                            metadata[key] = tonumber(input)
                        elseif data.type == "boolean" then
                            metadata[key] = (input == "true" or input == "1")
                        else
                            metadata[key] = input
                        end
                     end
                end
            end
        end

        TriggerServerEvent("ExtendedM:Debug:GiveItem", item_id, quantity, metadata)
    end)
end)