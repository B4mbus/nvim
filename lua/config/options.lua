local utils = require 'config.utils.utils'

utils.set_vim_options {
	splitright = true,
	splitbelow = true,
	shiftwidth = 2,
	shiftround = true,
	hlsearch = true,
	cursorline = true,
	scrolloff = 5,
	sidescrolloff = 5,
	swapfile = false,
	shell = 'C:\\Program Files\\nu\\bin\\nu.exe',
	tabstop = 2,
	undofile = true,
	expandtab = false,
	clipboard = 'unnamedplus',
	mouse = 'a',
	inccommand = 'split',
	lazyredraw = true,
	relativenumber = true,
	number = true,
	sh = 'nu',
	guifont = 'JetBrainsMono Nerd Font Mono',
	list = true,
	listchars = 'eol:↴,nbsp:+,tab:> ,trail:-',
	timeoutlen = 250,
	updatetime = 250,
	incsearch = true,
	termguicolors = true,
	selection = 'old',
	laststatus = 3,
	completeopt = {'menu' ,'menuone' ,'noselect'}
}
