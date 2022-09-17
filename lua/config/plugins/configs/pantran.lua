return {
  'potamides/pantran.nvim',
  config = function()
    require 'pantran'.setup {
      default_engine = 'deepl'
    }
  end
}
