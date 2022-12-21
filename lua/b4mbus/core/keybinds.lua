local keymap = vim.keymap.set

local silent_noremap = { silent = true, noremap = true }

local silent_remap = { silent = true, remap = true }
local with_desc = function(opts, description)
  return vim.tbl_extend('force', opts, { desc = description })
end

-- NOTE: LEADER IS SET TO SPACE

-- Ctrl + C as Esc
keymap('i', '<C-c>', '<Esc>', silent_noremap)

-- Ctrl + q goes into normal mode in terminal
keymap('t', '<C-q>', '<C-\\><C-n>', silent_noremap)

-- Tab specific keymaps
keymap('n', '<C-n>', '<cmd>tabnew<cr>', silent_noremap)
keymap('n', '<C-h>', '<cmd>tabprev<cr>', silent_noremap)
keymap('n', '<C-l>', '<cmd>tabnext<cr>', silent_noremap)

-- j and k use gj and gk
keymap({'n', 'v'}, 'k', 'gk', silent_noremap)
keymap({'n', 'v'}, 'j', 'gj', silent_noremap)

-- <C-w>n opens a new split, let <C-w>N open a new vsplit
keymap('n', '<C-w>N', '<cmd>vnew<cr>', silent_noremap)

-- <C-w>T moves current window to a new tab, let <C-w>t replicate current window in a new tab
keymap('n', '<C-w>t', '<cmd>tabnew%<cr>', silent_noremap)

-- <C-e> invokes emmet
keymap('i', '<C-s>', '<C-y>,', silent_remap)

-- Shit dont work lmao
-- keymap('v', 'I', '<c-v>$o0<s-i>', silent_noremap)
-- keymap('v', 'A', '<c-v>$o0<s-a>', silent_noremap)

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
keymap('i', '<C-k>', replication_fun('up'), silent_noremap)
keymap('i', '<C-j>', replication_fun('down'), silent_noremap)

-- C-k and C-j replicate lines in normal mode
keymap('n', '<C-k>', replication_fun('up'), silent_noremap)
keymap('n', '<C-j>', replication_fun('down'), silent_noremap)


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

-- <CR> in insert mode adds spaces around a line
keymap(
  'i',
  '<C-CR>',
  function()
    replication_fun('up', '')()
    replication_fun('down', '')()
  end,
  silent_noremap
)

-- quickfix shit, useful for Ggrep, GEdit and shi
keymap({ 'n', 'v' }, ']q', '<cmd>cnext<cr>', silent_noremap)
keymap({ 'n', 'v' }, '[q', '<cmd>cprev<cr>', silent_noremap)
keymap('n', ']Q', '<cmd>cnfile<cr>', silent_noremap)
keymap('n', '[Q', '<cmd>cpfile<cr>', silent_noremap)


local copy_to_plus_reg = function(data)
  vim.fn.setreg('+', data)
end
local expand = vim.fn.expand

keymap({ 'n', 'v', 'i' }, '<C-f><C-f>', function() copy_to_plus_reg(expand('%:t')) end, with_desc(silent_noremap, 'Copy filename'))
keymap({ 'n', 'v', 'i' }, '<C-f>p', function() copy_to_plus_reg(expand('%:p')) end, with_desc(silent_noremap, 'Copy full path'))
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

keymap({ 'n', 'v', 'i' }, '<C-f>2', function() booga(2) end, with_desc(silent_noremap, 'Copy 2 path elems'))
keymap({ 'n', 'v', 'i' }, '<C-f>3', function() booga(3) end, with_desc(silent_noremap, 'Copy 3 path elems'))
keymap({ 'n', 'v', 'i' }, '<C-f>4', function() booga(4) end, with_desc(silent_noremap, 'Copy 4 path elems'))
keymap({ 'n', 'v', 'i' }, '<C-f>5', function() booga(5) end, with_desc(silent_noremap, 'Copy 5 path elems'))

keymap(
  'n',
  ',',
  function()
    local line = vim.api.nvim_get_current_line();
    vim.pretty_print(vim.api.nvim_exec(line, true))
  end,
  with_desc(silent_remap, 'Execute vim code')
)

keymap(
  "x",
  "g?",
  function()
    local ok, pantran = pequire('pantran')
    if ok then
      return pantran.motion_translate()
    end
  end,
  { remap = true, silent = true, expr = true }
)

keymap(
  { 'n', 'x' },
  'p',
  'p=`]',
  silent_remap
)

keymap(
  { 'n', 'x' },
  'P',
  'P=`]',
  silent_remap
)
