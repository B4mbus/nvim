-- Originally yoinked from https://github.com/shaunsingh/nyoom.nvim/blob/main/fnl/utils/statusline.fnl
-- Modified in quite a lot of ways

local fmt = string.format
local vl = vim.lsp
local va = vim.api

local symbols = require 'config.symbols'

local get_git_changed = function()
  return fmt(
    '%s%s%s%s %s%s%s%s %s%s%s%s',
    '%#GitAddedSign#', '+',
    '%#GitAdded#', vim.b.gitsigns_status_dict.added,
    '%#GitChangedSign#', '~',
    '%#GitChanged#', vim.b.gitsigns_status_dict.changed,
    '%#GitRemovedSign#', '-',
    '%#GitRemoved#', vim.b.gitsigns_status_dict.removed
  )
end

local get_git_dot = function()
  return fmt(
    '%s%s%s',
    '%#BoldWhite#',
    symbols.small_dot,
    '%#NONE#'
  )
end

local get_git_branch = function(head)
  return fmt(
    '%s#%s%s',
    '%#GitBranchSign#',
    '%#GitBranch#',
    head
  )
end

local get_git_status_sections = function(head)
  return get_git_changed(), get_git_dot(), get_git_branch(head)
end

local get_git_status = function()
	local branch = vim.b.gitsigns_status_dict or { head = '' }
	local head_empty = branch.head == ''

	if not head_empty then
    local changed, dot, branch = get_git_status_sections(branch.head)

		return fmt(
			'%s(%s %s %s%s)%s',
			'%#StatusLineBranchColor#',
      changed,
      dot,
			branch,
      '%#StatusLineBranchColor#',
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
		'%%#DiagnosticError#%s%%#NONE# %%#DiagnosticWarn#%s%%#NONE# %%#DiagnosticHint#%s%%#NONE#',
		count[severity.ERROR] or 0,
		count[severity.WARN] or 0,
		count[severity.HINT] or 0
	)
end

local get_file = function()
  local path = vim.fn.expand('%:p')
	local file_readable = vim.fn.filereadable(path)
	local file_name = vim.fn.fnamemodify(path, ':t')
	local file_tail = require('plenary.path'):new(vim.fn.fnamemodify(path, ':h')):make_relative()

	local format = '%%#NiceGrey#' .. file_tail .. '\\' .. '%s' .. file_name .. '%%#NONE#'
	if file_readable == 0 then
		return fmt(format, '%#BoldRed#')
  else
		return fmt(format, '%#BoldWhite#')
	end
end

local get_statusline_table = function()
	return {
		'%#StatusLine#',
		get_file(),
    require('macro-status').get_register_formatted(),
		get_git_status(),
    '%#NONE#',
		'%=',
		get_lsp_diagnostics(),
		'%#StatusLineClock#',
		vim.fn.strftime('%I:%M %p'),
	}
end

StatuslineMod = {}

StatuslineMod.statusline = function()
  local s = ''

  for _, v in ipairs(get_statusline_table()) do
    local sep = (not v or v == '') and '' or ' '
    s = s .. v .. sep
  end

  return s
end

vim.opt.statusline = '%{%v:lua.StatuslineMod.statusline()%}'
