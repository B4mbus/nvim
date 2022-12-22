_G.pequire = function(name) return pcall(require, name) end
_G.xpnequire = function(name)
  return xpcall(
    function() return require(name) end,
    function(err)
      local debuginfo = debug.getinfo(1,'S')
      local filename = vim.fn.fnamemodify(debuginfo.source:sub(2, -1), ':.')
      vim.notify(
        ('Internal module "%s" could not be loaded.\nCalled from %s\n\n%s'):format(name, filename, err),
        vim.log.levels.ERROR
      )
    end
  )
end
_G.P = function(...) vim.pretty_print(...) end


xpnequire('b4mbus.core')
xpnequire('b4mbus.plugins')
xpnequire('b4mbus.theming')

-- Implement cursor going back in the terminal if cursor in normal mode is not at the end of line

-- Interesting plugins to try out:
-- -- auto-session
-- -- readline.nvim
-- -- vim-bookmarks alongline telescope-vim-bookmarks.nvim
-- -- harpoon
-- -- nvim-luapad, later
-- -- nvim-dap
-- -- neotest (need to write neotest-cpp)
