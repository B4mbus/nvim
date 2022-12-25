local ok, telescope = pequire('telescope')

if not ok then
  vim.notify('Could not load the "telescope" plugin')
  return
end

local actions = require('telescope.actions')

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ['<C-c>'] = false,
        ['<C-n>'] = false,

        ['<C-k>'] = actions.move_selection_previous,
        ['<C-j>'] = actions.move_selection_next,
        ['<C-h>'] = { '<C-o>0', type = 'command' },
        ['<C-l>'] = { '<C-o>$', type = 'command' },

        ['<C-p>'] = { '<C-r>+', type = 'command' },
      },
      n = {
        ['<C-c>'] = actions.close,
        ['<C-p>'] = { 'i<C-r>+', type = 'command' },
      }
    }
  },
  extensions = {
    lazy = {
      theme = "ivy",
      show_icon = true,
      mappings = {
        open_in_browser = "<C-o>",
        open_in_find_files = "<C-f>",
        open_in_live_grep = "<C-g>",
        open_plugins_picker = "<C-b>",
      },
    },
  }
})

telescope.load_extension('lazy')
