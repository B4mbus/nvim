_G.pequire = function(name) return pcall(require, name) end
_G.xpnequire = function(name)
  return xpcall(
    function() return require(name) end,
    function(err)
      local debuginfo = debug.getinfo(6, 'Sl')
      local error_location = ('%s:%s'):format(debuginfo.short_src, debuginfo.currentline)
      vim.notify(
        ('Internal module "%s" could not be loaded.\nCalled from %%s\n\n%s'):format(name, error_location, err),
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
