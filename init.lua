_G.__luacache_config = {
  chunks = {
    enable = true,
    path = vim.fn.stdpath('cache')..'/luacache_chunks',
  },
  modpaths = {
    enable = true,
    path = vim.fn.stdpath('cache')..'/luacache_modpaths',
  }
}
require 'impatient'.enable_profile()

require 'config.core' -- core editor configuration (autocommands, keybindings, etc.)
require 'config.theming' -- colorscheme, lsp signs and shit
require 'config.plugins' -- plugins

-- Implement cursor going back in the terminal if cursor in normal mode is not at the end of line
--
-- Interesting plugins to try out:
-- -- auto-session
-- -- readline.nvim
-- -- vim-bookmarks alongline telescope-vim-bookmarks.nvim
-- -- harpoon
-- -- nvim-luapad, later
-- -- nvim-dap
-- -- neotest (need to wrtite neotest-cpp)
-- -- nvim-FeMaco.lua
-- -- dired.nvim
-- -- projectlaunch.nvim

-- Plugins to watch:
-- decay.nvim
