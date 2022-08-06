local keymap = vim.keymap.set
local silent = { silent = true }
local silent_noremap = { silent = true, noremap = true }

-- LEADER IS SET TO SPACE

-- Ctrl + t to make a new tab
keymap({'i', 'n', 'v'}, '<C-t>', ':tabnew<CR>', silent_noremap)

-- Ctrl + C as Esc
keymap('i', '<C-c>', '<Esc>', silent_noremap)

-- Ctrl + S saves
keymap({'n', 'i'}, '<C-s>', ':w<CR>', silent_noremap)

-- ; Ctrl + C goes into normal mode in terminal
keymap('t', ';<C-c>', '<C-n><C-\\>', silent_noremap)

-- ;c closes a buffer
keymap('n', ';c', ':Bdelete<CR>', silent_noremap)

-- Tab specific keymaps
keymap('n', '<C-n>', ':tabnew<CR>', silent_noremap)
keymap('n', '<Leader>d', ':tabclose<CR>', silent_noremap)
keymap('n', '<Leader>h', ':tabprev<CR>', silent_noremap)
keymap('n', '<Leader>l', ':tabnext<CR>', silent_noremap)


-- j and k use gj and gk
keymap({'n', 'v'}, 'k', 'gk', silent_noremap)
keymap({'n', 'v'}, 'j', 'gj', silent_noremap)

-- <Space> e toggles nvim-tree
keymap('n', '<Leader>e', '<cmd>NvimTreeToggle<CR>', silent_noremap)

-- Better indenting
keymap('n', '>', '>>', silent_noremap)
keymap('n', '<', '<<', silent_noremap)

keymap('v', '>', '>gv', silent_noremap)
keymap('v', '<', '<gv', silent_noremap)

keymap('x', 'K', ':move \'<-2<CR>gv-gv', silent_noremap)
keymap('x', 'J', ':move \'>+1<CR>gv-gv', silent_noremap)

-- Bufferline specific keybinds
for i=1,9 do
	keymap('n', '<Leader>' .. i, '<CMD>lua require("bufferline").go_to_buffer(' .. i .. ', true)<CR>', silent_noremap)
end
keymap('n', 'H', ':BufferLineCyclePrev<CR>', silent_noremap)
keymap('n', 'L', ':BufferLineCycleNext<CR>', silent_noremap)
