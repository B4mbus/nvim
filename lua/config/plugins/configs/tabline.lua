return {
  'kdheepak/tabline.nvim',
  config = function ()
    require 'tabline'.setup {
      modified_icon = require 'config.symbols'.big_dot .. '  '
    }
  end
}
