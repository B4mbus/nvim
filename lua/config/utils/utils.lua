local booga = function(table, values)
	for key, value in pairs(values) do
		if type(value) == 'function' then
			table[key] = value(table[key])
		else
			table[key] = value
		end
	end
end

return {
	set_vim_options = function(options)
		booga(vim.opt, options)
	end,

	set_vim_globals = function(globals)
		booga(vim.g, globals)
	end,
	
	use_plugins = function(plugins)
		require 'packer'.startup(function(use)
		 for _, plugin in ipairs(plugins) do
			 use(plugin)
		 end
		end)
	end,
}
