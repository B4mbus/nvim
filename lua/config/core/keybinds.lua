local keymap = vim.keymap.set
local silent_noremap = { silent = true, noremap = true }
local silent_remap = { silent = true, remap = true }

-- LEADER IS SET TO SPACE

-- Ctrl + C as Esc
keymap('i', '<C-c>', '<Esc>', silent_noremap)

-- ; Ctrl + C goes into normal mode in terminal
keymap('t', ';<C-c>', '<C-n><C-\\>', silent_noremap)

-- Tab specific keymaps
keymap('n', '<C-n>', '<cmd>tabnew<cr>', silent_noremap)
keymap('n', '<C-h>', '<cmd>tabprev<cr>', silent_noremap)
keymap('n', '<C-l>', '<cmd>tabnext<cr>', silent_noremap)

-- j and k use gj and gk
keymap({'n', 'v'}, 'k', 'gk', silent_noremap)
keymap({'n', 'v'}, 'j', 'gj', silent_noremap)

-- Better indenting
-- keymap('v', '>', '>gv', silent_noremap)
-- keymap('v', '<', '<gv', silent_noremap)

-- K and J move visual selections
keymap('x', 'K', '<cmd>move \'<-2<cr>gv-gv', silent_noremap)
keymap('x', 'J', '<cmd>move \'>+1<cr>gv-gv', silent_noremap)

-- <C-w>n opens a new split, let <C-w>N open a new vsplit
keymap('n', '<C-w>N', '<cmd>vnew<cr>', silent_noremap)

-- <C-e> invokes emmet
keymap('i', '<C-s>', '<C-y>,', silent_remap)

-- <C-+> and <C--> change font size
-- TODO: lmao
