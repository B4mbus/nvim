local keymap = vim.keymap.set
local silent = { silent = true }
local silent_noremap = { silent = true, noremap = true }
local silent_remap = { silent = true, remap = true }

-- Ctrl + Return closes a buffer
keymap("n", "<c-cr>", "<cmd>lua MiniBufremove.delete(0, true)<cr>", silent_noremap)

-- Crtl + t trims spaces
keymap("n", "<c-t>", "<cmd>lua MiniTrailspace.trim()<cr>", silent_noremap)

-- H and L cycle buffers
keymap("n", "H", "<cmd>BufferLineCyclePrev<cr>", silent_noremap)
keymap("n", "L", "<cmd>BufferLineCycleNext<cr>", silent_noremap)

-- <A-hjkl> resize buffers
keymap('n', '<A-h>', function() require('smart-splits').resize_left() end, silent_noremap)
keymap('n', '<A-j>', function() require('smart-splits').resize_down() end, silent_noremap)
keymap('n', '<A-k>', function() require('smart-splits').resize_up() end, silent_noremap)
keymap('n', '<A-l>', function() require('smart-splits').resize_right() end, silent_noremap)

-- Text case keymappings
keymap('n', 'gau', function() require('textcase').current_word('to_upper_case') end, silent_noremap)
keymap('n', 'gal', function() require('textcase').current_word('to_lower_case') end, silent_noremap)
keymap('n', 'gas', function() require('textcase').current_word('to_snake_case') end, silent_noremap)
keymap('n', 'gad', function() require('textcase').current_word('to_dash_case') end, silent_noremap)
keymap('n', 'gan', function() require('textcase').current_word('to_constant_case') end, silent_noremap)
keymap('n', 'gad', function() require('textcase').current_word('to_dot_case') end, silent_noremap)
keymap('n', 'gaa', function() require('textcase').current_word('to_phrase_case') end, silent_noremap)
keymap('n', 'gac', function() require('textcase').current_word('to_camel_case') end, silent_noremap)
keymap('n', 'gap', function() require('textcase').current_word('to_pascal_case') end, silent_noremap)
keymap('n', 'gat', function() require('textcase').current_word('to_title_case') end, silent_noremap)
keymap('n', 'gaf', function() require('textcase').current_word('to_path_case') end, silent_noremap)

keymap('n', 'gaU', function() require('textcase').lsp_rename('to_upper_case') end, silent_noremap)
keymap('n', 'gaL', function() require('textcase').lsp_rename('to_lower_case') end, silent_noremap)
keymap('n', 'gaS', function() require('textcase').lsp_rename('to_snake_case') end, silent_noremap)
keymap('n', 'gaD', function() require('textcase').lsp_rename('to_dash_case') end, silent_noremap)
keymap('n', 'gaN', function() require('textcase').lsp_rename('to_constant_case') end, silent_noremap)
keymap('n', 'gaD', function() require('textcase').lsp_rename('to_dot_case') end, silent_noremap)
keymap('n', 'gaA', function() require('textcase').lsp_rename('to_phrase_case') end, silent_noremap)
keymap('n', 'gaC', function() require('textcase').lsp_rename('to_camel_case') end, silent_noremap)
keymap('n', 'gaP', function() require('textcase').lsp_rename('to_pascal_case') end, silent_noremap)
keymap('n', 'gaT', function() require('textcase').lsp_rename('to_title_case') end, silent_noremap)
keymap('n', 'gaF', function() require('textcase').lsp_rename('to_path_case') end, silent_noremap)

keymap('n', 'geu', function() require('textcase').operator('to_upper_case') end, silent_noremap)
keymap('n', 'gel', function() require('textcase').operator('to_lower_case') end, silent_noremap)
keymap('n', 'ges', function() require('textcase').operator('to_snake_case') end, silent_noremap)
keymap('n', 'ged', function() require('textcase').operator('to_dash_case') end, silent_noremap)
keymap('n', 'gen', function() require('textcase').operator('to_constant_case') end, silent_noremap)
keymap('n', 'ged', function() require('textcase').operator('to_dot_case') end, silent_noremap)
keymap('n', 'gea', function() require('textcase').operator('to_phrase_case') end, silent_noremap)
keymap('n', 'gec', function() require('textcase').operator('to_camel_case') end, silent_noremap)
keymap('n', 'gep', function() require('textcase').operator('to_pascal_case') end, silent_noremap)
keymap('n', 'get', function() require('textcase').operator('to_title_case') end, silent_noremap)
keymap('n', 'gef', function() require('textcase').operator('to_path_case') end, silent_noremap)

-- gS splits
keymap("n", "gS", function() require('spread').out() end, silent_noremap)
keymap("n", "gJ", function() require('spread').combine() end, silent_noremap)

-- ; switches
keymap('n', ';', '<cmd>Switch<cr>', silent_noremap)

-- cq opens replacer in a qf
keymap('n', 'cq', function() require('replacer').run() end, silent_noremap)
