-- Yoinked from https://github.com/shaunsingh/nyoom.nvim/blob/main/fnl/utils/statusline.fnl
-- And modified in some ways

local fmt = string.format

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
	local mode = vim.api.nvim_get_mode().mode

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
		return fmt('(λ • #%s)', branch.head)
	else
		return ''
	end
end

local get_lsp_diagnostics = function()
	local buffer_clients = vim.lsp.buf_get_clients(0)
	if next(buffer_clients) == nil then
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
		' %%#StatusLineDiagnosticError#%s %%#StatusLineDiagnosticWarn#%s %%#StatusLineDiagnosticHint#%s ',
		count[severity.ERROR] or 0,
		count[severity.WARN] or 0,
		count[severity.HINT] or 0
	)
end

statusline_mod = {}

statusline_mod.winbar = function()
	if vim.api.nvim_buf_get_option(0, 'ft') == 'NvimTree' then
		return '%= 📂 File explorer %='
	else
		local navic = require 'nvim-navic'

		local loc = navic.get_location()

		if loc == '' then
			loc = '∅'
		end

		return table.concat {
			'%#WinBar#',
			' %f ',
			navic.is_available()
			and ':: ' .. loc
			or ''
		}
	end
end

statusline_mod.statusline = function()
	local mode = vim.api.nvim_get_mode().mode

	return table.concat {
		mode_color(),
		string.upper(fmt(' %s ', modes[mode])),
		'%#StatusLine#',
		' %F ',
		'%#StatusPosition#',
		get_git_status(),
		'%=',
		get_lsp_diagnostics(),
		'%#StatusPosition#',
		' %l:%c '
	}
end

if vim.api.nvim_get_all_options_info()['winbar'] then
	vim.opt.winbar = '%{%v:lua.statusline_mod.winbar()%}'
end

vim.opt.statusline = '%{%v:lua.statusline_mod.statusline()%}'
