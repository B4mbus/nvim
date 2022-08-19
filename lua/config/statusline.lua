-- Originally yoinked from https://github.com/shaunsingh/nyoom.nvim/blob/main/fnl/utils/statusline.fnl
-- But modified in a couple of ways

local fmt = string.format
local vl = vim.lsp
local va = vim.api
local vf = vim.fn

local symbols = require 'config.symbols'

local modes = {
	n = 'RW',
	no = 'RO',
	v = 'V',
	V = 'VB',
	['\022'] = '**',
	s = 'S',
	S = 'SL',
	["\019"] = 'SB',
	i = 'I',
	ic = 'IC',
	R = 'RA',
	Rv = 'RV',
	c = 'VIEX',
	cv = 'VIEX',
	ce = 'EX',
	r = 'R',
	rm = 'r',
	['r?'] = 'r',
	['!'] = '!',
	t = 'TERM',
}

local mode_color = function()
	local mode = va.nvim_get_mode().mode

	if mode == 'n' then
		return '%#StatusNormal#'
	elseif mode == 'i' or mode == 'ic' then
		return '%#StatusInsert#'
	elseif mode == 'v' or mode == 'V' or mode == '\022' then
		return '%#StatusVisual#'
	elseif mode == 'R' then
		return '%#StatusReplace#'
	elseif mode == 'c' then
		return '%#StatusCommand#'
	elseif mode == 't' then
		return '%#StatusTerminal#'
	else
		return '%#StatusLine#'
	end
end

local get_git_status = function()
	local branch = vim.b.gitsigns_status_dict or { head = '' }
	local head_empty = branch.head == ''

	if not head_empty then
		return fmt(
			'%s(%s %s #%s)',
			'%#DevIconCMake#',
			symbols.lambda,
			symbols.small_dot,
			branch.head
		)
	else
		return ''
	end
end

local get_lsps_count = function(clients)
	local lsps_count = 0

	for _, client in pairs(clients) do
		if client.name ~= 'copilot' then
			lsps_count = lsps_count + 1
		end
	end

  return lsps_count
end


local valid_lsps_attached = function(clients)
	if next(clients) == nil then
		return false
	end

	local lsps_count = get_lsps_count(clients)

	if lsps_count == 0 then
		return false
	else
		return true
	end
end

local get_lsp_diagnostics = function()
	local buffer_clients = vl.buf_get_clients(0)
	if not valid_lsps_attached(buffer_clients) then
		return ''
	end

	local diagnostics = vim.diagnostic.get(0)
	local count = {0, 0, 0, 0}

	for _, diag in ipairs(diagnostics) do
		local sev = diag.severity
		count[sev] = (count[sev] + 1)
	end

	local severity = vim.diagnostic.severity
	return fmt(
		'%%#DiagnosticError#%s %%#DiagnosticWarn#%s %%#DiagnosticHint#%s',
		count[severity.ERROR] or 0,
		count[severity.WARN] or 0,
		count[severity.HINT] or 0
	)
end

local get_file = function()
	local big_dot = require 'config.symbols'.big_dot
	local file_readable = vim.fn.filereadable(vim.fn.expand('%:p'))

	local format = '%%#StatusLine#%s' ..'%%F'
	if file_readable == 0 then
		return fmt(format, '%#Error#')
	elseif vim.fn.getbufinfo('%')[1].changed == 1 then
		return fmt(format, '%#DevIconCsv#')
	else
		return fmt(format, '%#DevIconNix#')
	end
end

local get_mode = function()
	local mode = va.nvim_get_mode().mode

	return fmt(
		'%s%s',
		mode_color(),
		string.upper(
      fmt(
        '%s',
        modes[mode]
      )
    )
	)
end

local get_statusline_table = function()
	return {
		'',
		get_mode(),
		get_file(),
		get_git_status(),
		'%=',
		get_lsp_diagnostics(),
		'%#StatusPosition#',
		vim.fn.strftime('%I:%M %p'),
		''
	}
end

statusline_mod = {}

statusline_mod.statusline = function()
	return table.concat(get_statusline_table(), ' ')
end

vim.opt.statusline = '%{%v:lua.statusline_mod.statusline()%}'

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
		path =  '..\\' .. path
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
		and ':: ' .. loc
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
