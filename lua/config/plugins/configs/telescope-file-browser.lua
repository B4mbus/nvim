return {
  'nvim-telescope/telescope-file-browser.nvim',
  config = function ()
    local telescope = require 'telescope'
    telescope.setup {
      extensions = {
        file_browser = {
          theme = "ivy",
          hijack_netrw = true,
        },
      },
    }

    telescope.load_extension 'file_browser'
  end
}
