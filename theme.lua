local module_folder = '.'
package.path = module_folder .. "?.lua;" .. package.path

local configloader = require 'configloader'

local config = configloader.config_loader('theme.yaml')



for default_key, defaul_val in pairs(theme) do
        -- print(index)
        for config_key, config_val in pairs(config) do
                -- print(config_val, data)
                if config_key == default_key then
                        theme[config_key] = config_val
                end
        end
end


return theme
