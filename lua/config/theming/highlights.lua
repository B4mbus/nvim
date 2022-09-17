-- Custom highlights for statusline and wildmenu
vim.api.nvim_set_hl(0, 'StatusLineClock', { fg = '#ffffff', bold = true })
vim.api.nvim_set_hl(0, 'StatusLineMode', { fg = '#ffffff', bold = true })

local szary_xd = '#6d8086'
vim.api.nvim_set_hl(0, 'StatusLineBranchColor', { fg = szary_xd, bg = 'NONE' })
vim.api.nvim_set_hl(0, 'StatusLineBold', { fg = szary_xd, bg = 'NONE', bold = true })

vim.api.nvim_set_hl(0, 'Conceal', {})

vim.api.nvim_set_hl(0, 'WildMenu', { fg = '#00bbff' })
vim.api.nvim_set_hl(0, 'StatusLine', {})

-- Clear them nasty ass neogit highlights
vim.api.nvim_set_hl(0, 'NeogitDiffAddHighlight', {})
vim.api.nvim_set_hl(0, 'NeogitDiffDeleteHighlight', {})
vim.api.nvim_set_hl(0, 'NeogitDiffContextHighlight', {})
vim.api.nvim_set_hl(0, 'NeogitHunkHeader', {})
vim.api.nvim_set_hl(0, 'NeogitHunkHeaderHighlight', {})

-- Special cmp highlights
vim.api.nvim_set_hl(0, 'CmpItemAbbrDeprecated', { strikethrough = true, fg = '#808080', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatch', { fg = '#569CD6', bg = 'NONE', bold = true })
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatchFuzzy', { fg = '#569CD6', bg = 'NONE', bold = true })

vim.api.nvim_set_hl(0, 'CmpItemMenu', { fg = '#C792EA', bg = 'NONE', italic =  true })

-- Generic navic and cmp highlights
local lsp_types = {
	Field = { fg = '#EED8DA' },
	Property = { fg = '#EED8DA' },
	Event = { fg = '#EED8DA' },
	Text = { fg = '#9CDCFE' },
	Enum = { fg = '#C3E88D' },
	Keyword = { fg = '#C3E88D' },
	Constant = { fg = '#FFE082' },
	Constructor = { fg = '#FFE082' },
	Reference = { fg = '#FFE082' },
	Function = { fg = '#C586C0' },
	Method = { fg = '#C586C0' },
	Struct = { fg = '#EAAFB0' },
	Class = { fg = '#EA6111' },
	Module = { fg = '#EADFF0' },
	Operator = { fg = '#EADFF0' },
	Variable = { fg = '#9CDCFE' },
	File = { fg = '#C5CDD9' },
	Unit = { fg = '#F5EBD9' },
	Snippet = { fg = '#F5EBD9' },
	Folder = { fg = '#F5EBD9' },
	Value = { fg = '#DDE5F5' },
	EnumMember = { fg = '#DDE5F5' },
	Interface = { fg = '#9CDCFE' },
	Color = { fg = '#D8EEEB' },
	TypeParameter = { fg = '#D8EEEB' }
}

local prefixes = {
	'CmpItemKind',
	'NavicIcons'
}

for _, prefix in ipairs(prefixes) do
	for group, fg_hl in pairs(lsp_types) do
		local highlight = vim.tbl_extend('force', { bg = 'NONE'}, fg_hl)

		vim.api.nvim_set_hl(0, prefix .. group, highlight)
	end
end
