local booga = function(table, values)
	for key, value in pairs(values) do
		if type(value) == 'function' then
			table[key] = value(table[key])
		else
			table[key] = value
		end
	end
end

local M = {}

M.set_vim_options = function(options)
	booga(vim.opt, options)
end

M.set_vim_globals = function(globals)
	booga(vim.g, globals)
end
	
return M
