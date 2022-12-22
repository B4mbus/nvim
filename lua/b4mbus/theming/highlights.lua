vim.api.nvim_set_hl(0, 'IdkForFucksSake', { bg = '#111111'})

vim.api.nvim_set_hl(0, 'CursorLineNr', { bold = true, fg = '#ffffff' })

vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#333333' })

-- LSP Semantic Tokens

vim.api.nvim_set_hl(0, '@class', { fg = '#33ee00' })
vim.api.nvim_set_hl(0, '@struct', { fg = '#fff000' })
vim.api.nvim_set_hl(0, '@enum', { fg = '#fffff0' })
vim.api.nvim_set_hl(0, '@enumMember', { fg = '#cc0091' })
vim.api.nvim_set_hl(0, '@event', { fg = '#111111' })
vim.api.nvim_set_hl(0, '@interface', { fg = '#000000' })
vim.api.nvim_set_hl(0, '@modifier', { fg = '#00ff00' })
vim.api.nvim_set_hl(0, '@regexp', { fg = '#00ffff' })
vim.api.nvim_set_hl(0, '@typeParameter', { fg = '#0000ff' })
vim.api.nvim_set_hl(0, '@decorator', { fg = '#0f0f01' })

vim.api.nvim_set_hl(0, 'GitCommitStatusline', { fg = '#06cc71' })
vim.api.nvim_set_hl(0, 'GitCommitStatuslineShort', { fg = '#005335', bold = true })

vim.api.nvim_set_hl(0, 'ActiveTab', { fg = '#3388ff', bold = true })
vim.api.nvim_set_hl(0, 'InactiveTab', { fg = '#ffffff' })
vim.api.nvim_set_hl(0, 'TabSeparator', { fg = '#666666' })

vim.api.nvim_set_hl(0, 'NiceGrey', { fg = '#667789' })

vim.api.nvim_set_hl(0, 'White', { fg = '#ffffff' })
vim.api.nvim_set_hl(0, 'Red', { fg = '#ff0000' })

vim.api.nvim_set_hl(0, 'BoldWhite', { fg = '#ffffff', bold = true })
vim.api.nvim_set_hl(0, 'BoldRed', { fg = '#ff0000', bold = true })
vim.api.nvim_set_hl(0, 'BoldBlue', { fg = '#3388ff', bold = true })

vim.api.nvim_set_hl(0, 'GitAddedSign', { fg = '#006B3D', bold = true })
vim.api.nvim_set_hl(0, 'GitChangedSign', { fg = '#FF681E', bold = true })
vim.api.nvim_set_hl(0, 'GitRemovedSign', { fg = '#94171F', bold = true })

vim.api.nvim_set_hl(0, 'MacroStatusAt', { fg = '#94171F', bold = true })
vim.api.nvim_set_hl(0, 'MacroStatusReg', { fg = '#ff1111' })

vim.api.nvim_set_hl(0, 'GitAdded', { fg = '#069C56', bold = true })
vim.api.nvim_set_hl(0, 'GitChanged', { fg = '#FF980E', bold = true })
vim.api.nvim_set_hl(0, 'GitRemoved', { fg = '#D3212C', bold = true })

vim.api.nvim_set_hl(0, 'GitBranchSign', { fg = '#525252', bold = true })
vim.api.nvim_set_hl(0, 'GitBranch', { fg = '#A2A9B0', bold = true })

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
