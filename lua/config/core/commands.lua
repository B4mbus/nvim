vim.api.nvim_create_user_command(
  'CP',
  function()
    local line = vim.api.nvim_get_current_line()
    local bbeg, bend = vim.regex([['\(.*\)',]]):match_str(line)
    local filename = line:sub(bbeg + 2, bend - 2)

    local path = vim.fn.expand('%:p:h') .. '\\configs\\' .. filename .. '.lua'
    vim.fn.execute(':e ' .. path)
  end,
  {}
)
