local api = vim.api

local Executors = {}

Executors.execute_lua_line = function()
	local line = vim.api.nvim_get_current_line()

	vim.fn.luaeval(line)
end

Executors.execute_lua_range = function()
  local first = vim.fn.line('v')
  local last = vim.fn.line('.')

	local lines = api.nvim_buf_get_lines(0, first, last)
	for _, line in ipairs(lines) do
		vim.fn.luaeval(line)
	end
end

return Executors
