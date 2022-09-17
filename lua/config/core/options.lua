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
  relativenumber = false,
  number = false,
  list = true,
  incsearch = true,
  termguicolors = true,
  autoread = true,
  pumheight = 10,
  ignorecase = true,
  smartcase = true,
  showmode = false,
  foldenable = false,
  wildmenu = true,
	cole = 2,
	updatetime = 300,
  shiftwidth = 2,
  scrolloff = 8,
  sidescrolloff = 8,
  tabstop = 2,
  timeoutlen = 350,
  laststatus = 3,
  history = 10000,
  clipboard = 'unnamedplus',
  mouse = 'a',
  inccommand = 'nosplit',
  listchars = 'nbsp:+,tab:> ,trail:-',
  fillchars = { stl = ' ', stlnc = ' ' },
  selection = 'old',
  completeopt = {'menu' ,'menuone' ,'noselect'},
  shell = 'cmd',
  keywordprg = ':help',
  wildoptions = function(wo)
    return wo:remove('pum')
  end,
  formatoptions = function(fo)
    return
			fo:remove('c')
				:remove('r')
				:remove('o')
  end
}
