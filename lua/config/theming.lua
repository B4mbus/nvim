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

vim.cmd 'sign define DiagnosticSignError text=  linehl= texthl=DiagnosticSignError numhl='
vim.cmd 'sign define DiagnosticSignHint text=  linehl= texthl=DiagnosticSignHint numhl='
vim.cmd 'sign define DiagnosticSignInfo text=  linehl= texthl=DiagnosticSignInfo numhl='
vim.cmd 'sign define DiagnosticSignWarn text=  linehl= texthl=DiagnosticSignWarn numhl='

vim.opt.guifont = 'JetBrainsMono Nerd Font Mono:h11'
