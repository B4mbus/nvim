local utils = require 'config.utils.utils'

utils.set_vim_options {
	splitright = true,
	splitbelow = true,
	shiftround = true,
	hlsearch = true,
	cursorline = true,
	swapfile = false,
	undofile = true,
	expandtab = false,
	lazyredraw = true,
	relativenumber = true,
	number = true,
	list = true,
	incsearch = true,
	termguicolors = true,
	autoread = true,
	pumheight = 10,
	cmdheight = function(cmdheight)
    local has_8 = vim.fn.has('nvim-0.8.0')
    return cmdheight:append( has_8 and 0 or 1 )
  end,
	shiftwidth = 2,
	scrolloff = 5,
	sidescrolloff = 5,
	tabstop = 2,
	timeoutlen = 350,
	laststatus = 3,
	history = 10000,
	clipboard = 'unnamedplus',
	mouse = 'a',
	inccommand = 'split',
	listchars = 'nbsp:+,tab:> ,trail:-',
	selection = 'old',
	completeopt = {'menu' ,'menuone' ,'noselect'},
	shell = 'cmd',
	foldenable = false,
	wildmenu = true,
  keywordprg = ':help',
	wildoptions = function(wo)
		return wo:remove('pum')
	end
}
