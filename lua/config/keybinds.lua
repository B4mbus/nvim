local keymap = vim.keymap.set
local silent = { silent = true }
local silent_noremap = { silent = true, noremap = true }

-- LEADER IS SET TO SPACE

-- Ctrl + C as Esc
keymap('i', '<C-c>', '<Esc>', silent_noremap)

-- Ctrl + S saves
keymap('n', '<C-s>', '<cmd>w<cr>', silent_noremap)
keymap('i', '<C-s>', '<esc><cmd>w<cr>a', silent_noremap)

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

-- H and L cycle buffers
keymap('n', 'H', '<cmd>BufferLineCyclePrev<cr>', silent_noremap)
keymap('n', 'L', '<cmd>BufferLineCycleNext<cr>', silent_noremap)

-- <A-hjkl> resize buffers
keymap('n', '<A-h>', function() require 'smart-splits'.resize_left() end, silent_noremap)
keymap('n', '<A-j>', function() require 'smart-splits'.resize_down() end, silent_noremap)
keymap('n', '<A-k>', function() require 'smart-splits'.resize_up() end, silent_noremap)
keymap('n', '<A-l>', function() require 'smart-splits'.resize_right() end, silent_noremap)

-- <C-w>n opens a new split, let <C-w>N open a new vsplit
keymap('n', '<C-w>N', '<cmd>vnew<cr>', silent_noremap)

-- Text case keymappings
keymap('n', 'gau', function() require 'textcase'.current_word('to_upper_case') end, silent_noremap)
keymap('n', 'gal', function() require 'textcase'.current_word('to_lower_case') end, silent_noremap)
keymap('n', 'gas', function() require 'textcase'.current_word('to_snake_case') end, silent_noremap)
keymap('n', 'gad', function() require 'textcase'.current_word('to_dash_case') end, silent_noremap)
keymap('n', 'gan', function() require 'textcase'.current_word('to_constant_case') end, silent_noremap)
keymap('n', 'gad', function() require 'textcase'.current_word('to_dot_case') end, silent_noremap)
keymap('n', 'gaa', function() require 'textcase'.current_word('to_phrase_case') end, silent_noremap)
keymap('n', 'gac', function() require 'textcase'.current_word('to_camel_case') end, silent_noremap)
keymap('n', 'gap', function() require 'textcase'.current_word('to_pascal_case') end, silent_noremap)
keymap('n', 'gat', function() require 'textcase'.current_word('to_title_case') end, silent_noremap)
keymap('n', 'gaf', function() require 'textcase'.current_word('to_path_case') end, silent_noremap)

keymap('n', 'gaU', function() require 'textcase'.lsp_rename('to_upper_case') end, silent_noremap)
keymap('n', 'gaL', function() require 'textcase'.lsp_rename('to_lower_case') end, silent_noremap)
keymap('n', 'gaS', function() require 'textcase'.lsp_rename('to_snake_case') end, silent_noremap)
keymap('n', 'gaD', function() require 'textcase'.lsp_rename('to_dash_case') end, silent_noremap)
keymap('n', 'gaN', function() require 'textcase'.lsp_rename('to_constant_case') end, silent_noremap)
keymap('n', 'gaD', function() require 'textcase'.lsp_rename('to_dot_case') end, silent_noremap)
keymap('n', 'gaA', function() require 'textcase'.lsp_rename('to_phrase_case') end, silent_noremap)
keymap('n', 'gaC', function() require 'textcase'.lsp_rename('to_camel_case') end, silent_noremap)
keymap('n', 'gaP', function() require 'textcase'.lsp_rename('to_pascal_case') end, silent_noremap)
keymap('n', 'gaT', function() require 'textcase'.lsp_rename('to_title_case') end, silent_noremap)
keymap('n', 'gaF', function() require 'textcase'.lsp_rename('to_path_case') end, silent_noremap)

keymap('n', 'geu', function() require 'textcase'.operator('to_upper_case') end, silent_noremap)
keymap('n', 'gel', function() require 'textcase'.operator('to_lower_case') end, silent_noremap)
keymap('n', 'ges', function() require 'textcase'.operator('to_snake_case') end, silent_noremap)
keymap('n', 'ged', function() require 'textcase'.operator('to_dash_case') end, silent_noremap)
keymap('n', 'gen', function() require 'textcase'.operator('to_constant_case') end, silent_noremap)
keymap('n', 'ged', function() require 'textcase'.operator('to_dot_case') end, silent_noremap)
keymap('n', 'gea', function() require 'textcase'.operator('to_phrase_case') end, silent_noremap)
keymap('n', 'gec', function() require 'textcase'.operator('to_camel_case') end, silent_noremap)
keymap('n', 'gep', function() require 'textcase'.operator('to_pascal_case') end, silent_noremap)
keymap('n', 'get', function() require 'textcase'.operator('to_title_case') end, silent_noremap)
keymap('n', 'gef', function() require 'textcase'.operator('to_path_case') end, silent_noremap)

-- gS splits
keymap('n', 'gS', function() require 'trevj'.format_at_cursor() end, silent_noremap)

-- ; switches
keymap('n', ';', '<cmd>Switch<cr>', silent_noremap)
