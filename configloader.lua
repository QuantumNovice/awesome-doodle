-- Dependency
local yaml = require('yaml')


local configloader = {}



-- pretty print table for debugging 
function configloader.pprint(table) 
	for index, data in pairs(data) do
                print(index)
                for key, value in pairs(data) do
                        print(key, value)
                end
        end
end

-- load yaml config


function configloader.config_loader(theme_path)
	local data = yaml.loadpath(theme_path)
        local theme = data.theme
	
	exports = {}
        for index, data in pairs(data) do
                for key, value in pairs(data) do
                        exports[key] = value
                end
        end
        return exports
end

return configloader
