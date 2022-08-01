local keymap = vim.keymap.set
local silent_noremap = { silent = true, noremap = true }

-- Ctrl + t to make a new tab
keymap({'i', 'n', 'v'}, '<C-t>', ':tabnew<CR>', silent_noremap)

-- H and L to move through tabs
keymap('n', 'H', ':tabprevious<CR>', silent_noremap)
keymap('n', 'L', ':tabnext<CR>', silent_noremap)

-- Ctrl + C as Esc
keymap('i', '<C-c>', '<Esc>', silent_noremap)

-- Ctrl + S saves
keymap({'n', 'i'}, '<C-s>', ':wq', silent_noremap)

-- Ctrl + C goes into normal mode in terminal
keymap('t', '<C-c>', '<C-n><C-\\>', silent_noremap)

-- ;c acts as Crtl+C in terminal since Ctrl+C is remapped
keymap('t', ';c', '<C-c>', silent_noremap)
