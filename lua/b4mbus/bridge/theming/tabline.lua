TablineMod = {}

TablineMod.tabline = function()
  local symbols = require('b4mbus.symbols')

  local tabpage = vim.fn.tabpagenr()
  local tabs = vim.tbl_map(
    function(tab)
      return '%#InactiveTab#' .. tab.tabnr
    end,
    vim.fn.gettabinfo()
  )
  local tabstring = table.concat(tabs, '%#TabSeparator# ' .. symbols.small_dot .. ' ');

  return
    vim.trim(
      '%#Normal#%= '
      .. tabstring:gsub(
        tostring(tabpage),
        '%%#ActiveTab#' .. tabpage
      )
      ..
      ' '
      .. '%#none#%='
    )
end

vim.opt.tabline = '%{%v:lua.TablineMod.tabline()%}'
