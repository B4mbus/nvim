local hl = function(...)
  vim.api.nvim_set_hl(0, ...)
end

hl('IdkForFucksSake', { bg = '#111111'})

-- LSP Semantic Tokens

hl('@class', { fg = '#33ee00' })
hl('@struct', { fg = '#fff000' })
hl('@enum', { fg = '#fffff0' })
hl('@enumMember', { fg = '#cc0091' })
hl('@event', { fg = '#111111' })
hl('@interface', { fg = '#000000' })
hl('@modifier', { fg = '#00ff00' })
hl('@regexp', { fg = '#00ffff' })
hl('@typeParameter', { fg = '#0000ff' })
hl('@decorator', { fg = '#0f0f01' })

hl('GitCommitStatusline', { fg = '#06cc71' })
hl('GitCommitStatuslineShort', { fg = '#005335', bold = true })

hl('ActiveTab', { fg = '#3388ff', bold = true })
hl('InactiveTab', { fg = '#ffffff' })
hl('TabSeparator', { fg = '#666666' })

-- Obsession session status
hl('SessionActive', { fg = '#06cc81', bold = true })
hl('SessionInactive', { fg = '#737373', bold = true })

hl('NiceGrey', { fg = '#667789' })

hl('White', { fg = '#ffffff' })
hl('Red', { fg = '#ff0000' })

hl('BoldWhite', { fg = '#ffffff', bold = true })
hl('BoldRed', { fg = '#ff0000', bold = true })
hl('BoldBlue', { fg = '#3388ff', bold = true })

hl('GitAddedSign', { fg = '#006B3D', bold = true })
hl('GitChangedSign', { fg = '#FF681E', bold = true })
hl('GitRemovedSign', { fg = '#94171F', bold = true })

hl('MacroStatusAt', { fg = '#94171F', bold = true })
hl('MacroStatusReg', { fg = '#ff1111' })

hl('GitAdded', { fg = '#069C56', bold = true })
hl('GitChanged', { fg = '#FF980E', bold = true })
hl('GitRemoved', { fg = '#D3212C', bold = true })

hl('GitBranchSign', { fg = '#525252', bold = true })
hl('GitBranch', { fg = '#A2A9B0', bold = true })

hl('StatusLineClock', { fg = '#ffffff', bold = true })
hl('StatusLineMode', { fg = '#ffffff', bold = true })

local szary_xd = '#6d8086'
hl('StatusLineBranchColor', { fg = szary_xd, bg = 'NONE' })
hl('StatusLineBold', { fg = szary_xd, bg = 'NONE', bold = true })

hl('Conceal', {})

hl('WildMenu', { fg = '#00bbff' })
hl('StatusLine', {})

hl('CmpItemAbbrDeprecated', { strikethrough = true, fg = '#808080', bg = 'NONE' })
hl('CmpItemAbbrMatch', { fg = '#569CD6', bg = 'NONE', bold = true })
hl('CmpItemAbbrMatchFuzzy', { fg = '#569CD6', bg = 'NONE', bold = true })

hl('CmpItemMenu', { fg = '#C792EA', bg = 'NONE', italic =  true })

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

		hl(prefix .. group, highlight)
	end
end
