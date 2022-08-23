local va = vim.api
local vf = vim.fn

local symbols = require 'config.symbols'
local get_nvim_tree_winbar = function(nvim_tree_window_width, minimal_nvim_tree_path_padding)
	local allowed_width = nvim_tree_window_width - (minimal_nvim_tree_path_padding * 2) - 3

	local cwd = vf.getcwd()
	if not cwd then
		return symbols.null
	end

	local cwd_parts = vf.split(cwd, '\\')

	if #cwd_parts == 0 then
		return symbols.null
	end

	local path = ''

	local i = #cwd_parts
	while path:len() + cwd_parts[i]:len() < allowed_width do
		if i == #cwd_parts then
			path = cwd_parts[i] .. path
		else
			path = cwd_parts[i] .. '\\' .. path
		end
		i = i - 1

		if i == 0 then break end
	end

	if cwd:len() > path:len() then
		path =  symbols.horizontal_ellipsis .. '\\' .. path
	end

	return '%=' .. path .. '%='
end


local get_normal_winbar = function()
	local navic = require 'nvim-navic'

	local loc = navic.get_location()

	if loc == '' then
		loc = symbols.null
	end

	return table.concat {
		'%#WinBar#',
		'%f ',
		navic.is_available()
		and '%#DevIconPackageJson#::%## ' .. loc
		or ''
	}
end

winbar_mod = {}

winbar_mod.winbar = function(minimal_nvim_tree_path_padding)
	if va.nvim_buf_get_option(0, 'ft') == 'NvimTree' then
		return get_nvim_tree_winbar(
			va.nvim_win_get_width(0),
			minimal_nvim_tree_path_padding
		)
	else
		return get_normal_winbar()
	end
end

if va.nvim_get_all_options_info()['winbar'] then
	vim.opt.winbar = '%{%v:lua.winbar_mod.winbar(2)%}'
end
