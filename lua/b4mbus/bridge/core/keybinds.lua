local silent_noremap = { silent = true, noremap = true }

local silent_remap = { silent = true, remap = true }

local keymap = function(modes, left, right, opts)
  vim.keymap.set(modes, left, right, opts or silent_noremap)
end

local with_desc = function(opts, description)
  return vim.tbl_extend('force', opts, { desc = description })
end

local extend = function(right, left)
  return vim.tbl_extend('force', left, right)
end

-- NOTE: LEADER IS SET TO SPACE

-- yoinked from folke's dots
keymap('n', '<A-j>', [[:m .+1<CR>==]])
keymap('v', '<A-j>', [[:m '>+1<CR>gv=gv]])
keymap('i', '<A-j>', [[<Esc>:m .+1<CR>==gi]])
keymap('n', '<A-k>', [[:m .-2<CR>==]])
keymap('v', '<A-k>', [[:m '<-2<CR>gv=gv]])
keymap('i', '<A-k>', [[<Esc>:m .-2<CR>==gi]])

-- makes * nad # work in visual mode
vim.cmd([[
  function! g:VSetSearch(cmdtype)
    let temp = @s
    norm! gv"sy
    let @/ = '\V' . substitute(escape(@s, a:cmdtype.'\'), '\n', '\\n', 'g')
    let @s = temp
  endfunction

  xnoremap * :<C-u>call g:VSetSearch('/')<CR>/<C-R>=@/<CR><CR>
  xnoremap # :<C-u>call g:VSetSearch('?')<CR>?<C-R>=@/<CR><CR>
]])

-- yoinked from folke's dots
keymap('n', 'gw', '*N')
keymap('x', 'gw', '*N')

keymap("n", "n", "'Nn'[v:searchforward]", extend(silent_noremap, { expr = true }))
keymap("x", "n", "'Nn'[v:searchforward]", extend(silent_noremap, { expr = true }))
keymap("o", "n", "'Nn'[v:searchforward]", extend(silent_noremap, { expr = true }))
keymap("n", "N", "'nN'[v:searchforward]", extend(silent_noremap, { expr = true }))
keymap("x", "N", "'nN'[v:searchforward]", extend(silent_noremap, { expr = true }))
keymap("o", "N", "'nN'[v:searchforward]", extend(silent_noremap, { expr = true }))

-- Ctrl + C as Esc
keymap('i', '<C-c>', '<Esc>')

-- Ctrl + q goes into normal mode in terminal
keymap('t', '<C-q>', '<C-\\><C-n>')

-- Tab specific keymaps
keymap('n', '<C-n>', '<cmd>tabnew<cr>')
keymap('n', '<C-h>', '<cmd>tabprev<cr>')
keymap('n', '<C-l>', '<cmd>tabnext<cr>')

-- j and k use gj and gk
keymap({'n', 'v'}, 'k', 'gk')
keymap({'n', 'v'}, 'j', 'gj')

-- <C-w>n opens a new split, let <C-w>N open a new vsplit
keymap('n', '<C-w>N', '<cmd>vnew<cr>')

-- <C-w>T moves current window to a new tab, let <C-w>t replicate current window in a new tab
keymap('n', '<C-w>t', '<cmd>tabnew%<cr>')

-- <C-e> invokes emmet
keymap('i', '<C-s>', '<C-y>,', silent_remap)

-- Shit dont work lmao
-- keymap('v', 'I', '<c-v>$o0<s-i>')
-- keymap('v', 'A', '<c-v>$o0<s-a>')

local replication_fun = function(direction, magic)
  return function()
    local a = vim.api

    local line_nr = a.nvim_win_get_cursor(0)[1]
    local pos = (direction == 'down') and line_nr or line_nr - 1
    local data = magic or a.nvim_get_current_line()

    a.nvim_buf_set_lines(0, pos, pos, false, { data })
  end
end

-- Ctrl-d and Ctrl-f replicate lines in insert mode
keymap('i', '<C-k>', replication_fun('up'))
keymap('i', '<C-j>', replication_fun('down'))

-- C-k and C-j replicate lines in normal mode
keymap('n', '<C-k>', replication_fun('up'))
keymap('n', '<C-j>', replication_fun('down'))

-- <CR> in normal mode adds spaces around a line
keymap(
  'n',
  '<CR>',
  function()
    replication_fun('up', '')()
    replication_fun('down', '')()
  end,
  silent_noremap
)

-- quickfix shit, useful for Ggrep, GEdit and shi
keymap({ 'n', 'v' }, ']q', '<cmd>cnext<cr>')
keymap({ 'n', 'v' }, '[q', '<cmd>cprev<cr>')
keymap('n', ']Q', '<cmd>cnfile<cr>')
keymap('n', '[Q', '<cmd>cpfile<cr>')


local copy_to_plus_reg = function(data)
  vim.fn.setreg('+', data)
end
local expand = vim.fn.expand

-- <C-f><C-f> copies the filename
keymap({ 'n', 'v', 'i' }, '<C-f><C-f>', function() copy_to_plus_reg(expand('%:t')) end, with_desc(silent_noremap, 'Copy filename'))
-- <C-f><C-f> copies the full path
keymap({ 'n', 'v', 'i' }, '<C-f>p', function() copy_to_plus_reg(expand('%:p')) end, with_desc(silent_noremap, 'Copy full path'))
-- <C-f><C-f> copies the relative path
keymap({ 'n', 'v', 'i' }, '<C-f>r', function() copy_to_plus_reg(expand('%:.')) end, with_desc(silent_noremap, 'Copy relative path'))

local booga = function(a)
  local count = function(data, thing)
    local count = 0
    data:gsub(".", function(c) if c == thing then count = count + 1 end end)
    return count
  end

  local path = expand('%:p')

  while count(path, '/') ~= (a - 1) do
    local slash_pos = path:find('/')
    path = path:sub(slash_pos + 1, -1)
  end

  copy_to_plus_reg(path)
end

-- <C-f>2 copies 2 paths elements, so like core/keybinds.lua
keymap({ 'n', 'v', 'i' }, '<C-f>2', function() booga(2) end, with_desc(silent_noremap, 'Copy 2 path elems'))
-- <C-f>3 copies 3 paths elements, so like bridge/core/keybinds.lua
keymap({ 'n', 'v', 'i' }, '<C-f>3', function() booga(3) end, with_desc(silent_noremap, 'Copy 3 path elems'))
-- <C-f>4 copies 4 paths elements, so like b4mbus/bridge/core/keybinds.lua
keymap({ 'n', 'v', 'i' }, '<C-f>4', function() booga(4) end, with_desc(silent_noremap, 'Copy 4 path elems'))
-- <C-f>+ copies + paths elements, so like home/b4mbus/bridge/core/keybinds.lua
keymap({ 'n', 'v', 'i' }, '<C-f>5', function() booga(5) end, with_desc(silent_noremap, 'Copy 5 path elems'))

-- a simple mapping that executes lua code in current line
keymap(
  'n',
  ',',
  function()
    local line = vim.api.nvim_get_current_line()
    vim.pretty_print(vim.api.nvim_exec(line, true))
  end
)

-- hitting J doesnt change the cursor pos
keymap({ 'n' }, 'J', 'mxJ`x')

-- ; reindents last changed text (so e.g. pasted)
keymap('n', ';', '=`]')

-- + acts as <C-a> since I use <C-a> in tmux
keymap({ 'n','x' }, '+', '<C-a>')

-- g+ acts the same as g<C-a>
keymap('x', 'g+', 'g<C-a>')

-- searches inside a visual selection
keymap('x', '/', '<Esc>/\\%V')

-- dD deletes matching region
keymap({ 'x', 'n' }, 'dD', 'd%')
-- yY yanks matching region
keymap({ 'x', 'n' }, 'yY', 'y%')
-- vv selects matching region
keymap({ 'n' }, 'vv', 'v%o')

-- selecting something in insert mode and going back doesnt change the cursor poz
keymap('n', 'v', 'mzv', silent_noremap)
keymap('n', 'V', 'mzV', silent_noremap)
keymap('x', '<C-c>', '<Esc>`z', silent_noremap)
