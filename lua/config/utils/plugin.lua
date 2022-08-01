local notify_error = function(error)
	vim.notify_once('[ERROR] ' .. error, vim.log.levels.ERROR)
end

local config_from = function(name)
	local path = 'config.plugins.' .. name
	local status, mod = xpcall(require, notify_error, path)

	if status then
		return mod.config(mod)
	end
end

local extract_requires_name = function(name)
	return name:gsub('.nvim$', ''):gsub('.*/', '')
end

local M = {}

M.use_plugins = function(plugins)
	local status, packer_mod = xpcall(require, notify_error, 'packer')

	if status then
		packer_mod.startup(function(use)
			for _, plugin in ipairs(plugins) do
				use(plugin)
			end
		end)
	end
end

M.with_config_from = function(name, config)
	return {
		name,
		config = config_from(config)
	}
end

M.with_config = function(name)
	local plain_name = extract_requires_name(name)
	return {
		name,
		config = function() config_from(plain_name) end
	}
end

M.with_plain_setup = function(name)
	local plain_name = extract_requires_name(name)
	return {
		name,
		config = function() require(plain_name).setup() end
	}
end

M.with_setup = function(name, config)
	local plain_name = extract_requires_name(name)

	return {
		name,
		config = function() require(plain_name).setup(config) end
	}
end

return M
