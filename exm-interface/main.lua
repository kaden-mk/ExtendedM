local api_scripts = {
    native_ui = {
        'src/api/types.lua',
        'src/core/state.lua',
        'src/core/input.lua',
        'src/render/theme.lua',
        'src/render/utils.lua',
        'src/render/native-ui-renderer.lua',
        'src/core/core.lua',
        'src/components/native-ui/header.lua',
        'src/components/native-ui/button.lua',
        'src/components/native-ui/checkbox.lua',
        'src/components/native-ui/submenu.lua',
        'src/components/native-ui/list.lua',
        'src/api/native-ui-api.lua',
    }
}

local function load_api(api_name)
    local scripts = api_scripts[api_name]

    for _, script in ipairs(scripts) do
        local content = LoadResourceFile('exm-interface', script)

        if content then
            local func, err = load(content, '@exm-interface/' .. script)

            if func then
                func()
            else
                print('^1Error loading script ' .. script .. ': ' .. err .. '^0')
            end
        else
            print('^1Error reading file ' .. script .. '^0')
        end
    end
end

load_api("native_ui")

EXMInterface = EXMInterface or {}

EXMInterface.Native = NativeUIAPI

exports('EXMInterface', function()
    return EXMInterface
end)