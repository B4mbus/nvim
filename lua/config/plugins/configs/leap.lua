return {
  'ggandor/leap.nvim',
  config = function()
    require('leap').set_default_keymaps()
    vim.api.nvim_set_hl(0, 'LeapBackdrop', { fg = '#707070' })
  end
}
