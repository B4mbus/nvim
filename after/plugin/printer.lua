local ok, printer = pequire('printer')

if not ok then
  vim.notify('Could not load the "printer" plugin')
  return
end

require('printer').setup({
  keymap = 'gp',
  behavior = 'insert_below',
  formatters = {
    lua = function(inside, variable)
      return string.format('print("%s: " .. %s)', inside, variable)
    end,
    cpp = function(inside, variable)
      return string.format([[(std::cout << "%s: " << %s << '\n')]], inside, variable)
    end,
  },
  add_to_text = function(text)
    return string.format("[%s:%s] %s", vim.fn.expand("%"), vim.fn.line("."), text)
  end,
})
