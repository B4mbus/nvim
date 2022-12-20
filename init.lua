require('b4mbus.plugins.lazy_bootstrap')

_G.pequire = function(name) return pcall(require, name) end
_G.P = function(...) return vim.pretty_print(...) end

require('b4mbus.core') -- core editor configuration (autocommands, keybindings, etc.)
require('b4mbus.plugins') -- plugins
require('b4mbus.theming') -- colorscheme, lsp signs and shit

-- Implement cursor going back in the terminal if cursor in normal mode is not at the end of line
--
-- Interesting plugins to try out:
-- -- auto-session
-- -- readline.nvim
-- -- vim-bookmarks alongline telescope-vim-bookmarks.nvim
-- -- harpoon
-- -- nvim-luapad, later
-- -- nvim-dap
-- -- neotest (need to write neotest-cpp)
-- -- nvim-FeMaco.lua

-- Plugins to watch:
-- decay.nvim

--------------------------------------------------------------------------------------------------------
-- Dont use bufferline or cybu for buffers, instead use telescope with that bitch ass goofy ahh theme -h- ------------------------------------------------------------------------------------------------------
--
