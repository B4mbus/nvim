local utils = require 'config.utils.utils'

utils.set_vim_options {
	shiftwidth = 2,
	shiftround = true,
	hlsearch = true,
	cursorline = true,
	scrolloff = 5,
	sidescrolloff = 5,
	swapfile = false,
	shell = 'nu',
	tabstop = 2,
	undofile = true,
	expandtab = false,
	clipboard = 'unnamedplus',
	inccommand = 'split',
	lazyredraw = true,
	relativenumber = true,
	number = true,
	sh = 'nu',
	guifont = 'JetBrainsMono Nerd Font Mono',
	list = true,
	listchars = function(listchars)
		listchars:append('eol:↴')
	end,
	timeoutlen = 100,
	updatetime = 200,
	incsearch = true,
	termguicolors = true,
}
