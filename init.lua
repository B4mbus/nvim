local prelude_mod = 'b4mbus.prelude'
package.loaded[prelude_mod] = nil
require(prelude_mod)

b4.load_config()

-- Implement cursor going back in the terminal if cursor in normal mode is not at the end of line

--[[ Interesting plugins to try out:
- auto-session
- readline.nvim
- vim-bookmarks alongline telescope-vim-bookmarks.nvim
- harpoon
- nvim-luapad, later
- nvim-dap
- neotest (need to write neotest-cpp) ]]
