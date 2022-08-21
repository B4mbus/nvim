require 'decay'.setup {
	style = 'dark',
	italics = {
		code = false,
		comment = false
	},
	nvim_tree = {
		contrast = true
	}
}

vim.api.nvim_set_hl(0, 'StatusLineNc', {})

vim.cmd 'sign define DiagnosticSignError text=  linehl= texthl=DiagnosticSignError numhl='
vim.cmd 'sign define DiagnosticSignHint text=  linehl= texthl=DiagnosticSignHint numhl='
vim.cmd 'sign define DiagnosticSignInfo text=  linehl= texthl=DiagnosticSignInfo numhl='
vim.cmd 'sign define DiagnosticSignWarn text=  linehl= texthl=DiagnosticSignWarn numhl='

vim.opt.guifont = 'JetBrainsMono Nerd Font Mono:h11'

-- Clear them nasty ass neogit highlights
vim.api.nvim_set_hl(0, 'NeogitDiffAddHighlight', {})
vim.api.nvim_set_hl(0, 'NeogitDiffDeleteHighlight', {})
vim.api.nvim_set_hl(0, 'NeogitDiffContextHighlight', {})
vim.api.nvim_set_hl(0, 'NeogitHunkHeader', {})
vim.api.nvim_set_hl(0, 'NeogitHunkHeaderHighlight', {})
