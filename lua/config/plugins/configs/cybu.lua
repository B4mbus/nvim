return {
  'F:/prv/dev/forks/cybu.nvim',
  requires = { "kyazdani42/nvim-web-devicons", "nvim-lua/plenary.nvim"}, -- optional for icon support
  config = function ()
    require('cybu').setup({
      display_time = 400,
      position = {
        relative_to = 'editor',
        max_win_width = 0.8
      },
      style = {
        path = 'absolute',
        path_abbrievation = 'shortened'
      }
    })
  end
}
