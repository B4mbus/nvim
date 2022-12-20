local telescope = require('telescope')
local actions = require('telescope.actions')
local layout = require('telescope.actions.layout')

telescope.setup({
  defaults = {
    -- selection_caret = '',
    -- prompt_prefix = ' ',
    preview = false,
    mappings = {
      i = {
        ['<C-c>'] = false,
        ['<C-n>'] = false,

        ['<C-k>'] = actions.move_selection_previous,
        ['<C-j>'] = actions.move_selection_next,
        ['<C-h>'] = { '<C-o>0', type = 'command' },
        ['<C-l>'] = { '<C-o>$', type = 'command' },

        ['<C-p>'] = { '<C-r>+', type = 'command' },

        ['<M-p>'] = layout.toggle_preview
      },
      n = {
        ['<C-c>'] = actions.close,
        ['<C-p>'] = { 'i<C-r>+', type = 'command' },
        ['<M-p>'] = layout.toggle_preview
      }
    }
  }
})
