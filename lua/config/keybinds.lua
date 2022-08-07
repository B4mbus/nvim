local keymap = vim.keymap.set
local silent = { silent = true }
local silent_noremap = { silent = true, noremap = true }

-- LEADER IS SET TO SPACE

-- Ctrl + C as Esc
keymap('i', '<C-c>', '<Esc>', silent_noremap)

-- Ctrl + S saves
keymap({'n', 'i'}, '<C-s>', ':w<cr>', silent_noremap)

-- ; Ctrl + C goes into normal mode in terminal
keymap('t', ';<C-c>', '<C-n><C-\\>', silent_noremap)

-- ;c closes a buffer
keymap('n', ';c', ':Bdelete<cr>', silent_noremap)

-- Tab specific keymaps
keymap('n', '<C-n>', ':tabnew<cr>', silent_noremap)
keymap('n', '<Leader>d', ':tabclose<cr>', silent_noremap)
keymap('n', '<C-h>', ':tabprev<cr>', silent_noremap)
keymap('n', '<C-l>', ':tabnext<cr>', silent_noremap)


-- j and k use gj and gk
keymap({'n', 'v'}, 'k', 'gk', silent_noremap)
keymap({'n', 'v'}, 'j', 'gj', silent_noremap)

-- Better indenting
keymap('n', '>', '>>', silent_noremap)
keymap('n', '<', '<<', silent_noremap)

keymap('v', '>', '>gv', silent_noremap)
keymap('v', '<', '<gv', silent_noremap)

keymap('x', 'K', ':move \'<-2<cr>gv-gv', silent_noremap)
keymap('x', 'J', ':move \'>+1<cr>gv-gv', silent_noremap)

keymap('n', 'H', '<cmd>BufferLineCyclePrev<cr>', silent_noremap)
keymap('n', 'L', '<cmd>BufferLineCycleNext<cr>', silent_noremap)
