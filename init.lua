package.loaded['b4mbus.global'] = nil
require('b4mbus.global')

b4.reload_config()
-- b4.xpnequire('b4mbus.bridge')

-- Implement cursor going back in the terminal if cursor in normal mode is not at the end of line

--[[ Interesting plugins to try out:
- auto-session
- readline.nvim
- vim-bookmarks alongline telescope-vim-bookmarks.nvim
- harpoon
- nvim-luapad, later
- nvim-dap
- neotest (need to write neotest-cpp) ]]
