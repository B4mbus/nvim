-- Originally yoinked from https://github.com/shaunsingh/nyoom.nvim/blob/main/fnl/utils/statusline.fnl
-- Modified in quite a lot of ways

local fmt = string.format
local vl = vim.lsp
local va = vim.api

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
	i = 'IN',
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

local get_git_status = function()
	local branch = vim.b.gitsigns_status_dict or { head = '' }
	local head_empty = branch.head == ''

	if not head_empty then
		return fmt(
			'%s(%s %s #%s)%s',
			'%#DevIconCMake#',
			symbols.lambda,
			symbols.small_dot,
			branch.head,
      '%#NONE#'
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

	local format = '%%#StatusLine#%s' ..'%%F%%#NONE#'
	if file_readable == 0 then
		return fmt(format, '%#Error#')
	elseif vim.fn.getbufinfo('%')[1].changed == 1 then
		return fmt(format, '%#Error#' .. symbols.big_dot .. ' %#DevIconHs# ')
	else
		return fmt(format, '%#DevIconNix#')
	end
end

local get_mode = function()
	local mode = va.nvim_get_mode().mode

	return fmt(
		'%s%s%s',
    '%#StatusLineMode#',
		string.upper(
      fmt(
        '%s',
        modes[mode]
      )
    ),
    '%#NONE#'
	)
end

local get_statusline_table = function()
	return {
		'%#NONE#',
		get_mode(),
		get_file(),
		get_git_status(),
    '%#NONE#',
		'%=',
		get_lsp_diagnostics(),
		'%#StatusLineClock#',
		vim.fn.strftime('%I:%M %p'),
		''
	}
end

StatuslineMod = {}

StatuslineMod.statusline = function()
	return table.concat(get_statusline_table(), ' ')
end

vim.opt.statusline = '%{%v:lua.StatuslineMod.statusline()%}'
