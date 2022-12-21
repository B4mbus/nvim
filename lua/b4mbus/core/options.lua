vim.opt.exrc = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.shiftround = true
vim.opt.hlsearch = false
vim.opt.cursorline = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.expandtab = false
vim.opt.lazyredraw = false
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.list = true
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.autoread = true
vim.opt.showtabline = 0
vim.opt.pumheight = 1
vim.opt.shiftwidth = 2
vim.opt.scrolloff = 999
vim.opt.sidescrolloff = 8
vim.opt.tabstop = 2
vim.opt.timeoutlen = 350
vim.opt.laststatus = 3
vim.opt.history = 10000
vim.opt.cmdheight = 0
vim.opt.signcolumn = 'yes'
vim.opt.grepprg = 'rg -n $* /dev/null'
vim.o.foldcolumn = '1'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = 'a'
vim.opt.inccommand = 'nosplit'
vim.opt.listchars = {
  tab = '> ',
  lead = '·',
  trail = '•',
  nbsp = '␣',
  precedes = '«',
  extends = '»'
}
vim.opt.fillchars = {
  stl = ' ',
  stlnc = ' ',
  diff = '╱',
  fold = ' ',
  foldsep = ' ',
  foldclose = '',
  foldopen = '',
  eob = ' ',
  msgsep = '─'
}
vim.opt.diffopt = {
  algorithm = 'histogram',
  internal = true,
  ['indent-heuristic'] = true,
  filler = true,
  closeoff = true,
  iwhite = true,
  vertical = true
}
vim.opt.showbreak = "⤷ "
vim.opt.selection = 'old'
vim.opt.completeopt = { 'menu' ,'menuone' ,'noselect' }
vim.opt.formatoptions:remove({'c', 'r', 'o'})
