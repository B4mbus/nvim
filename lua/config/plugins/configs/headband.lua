return {
  'F:\\prv\\dev\\projects\\nvim-headband',
  config = function ()
    -- local color = '#ffaaee' 
    -- vim.api.nvim_set_hl(0, 'BubblesFront', { fg = color })
    -- vim.api.nvim_set_hl(0, 'NvimHeadbandPath', { bg = color })
    -- vim.api.nvim_set_hl(0, 'NvimHeadbandFilename', { fg = '#000000', bg = color })
    --
    -- local reverse_arrow = require 'nvim-headband.symbols'.reverse_nice_arrow
    -- local bubbles_wrap = { '%#BubblesFront#%##', '%#BubblesFront#%##' }

    require 'nvim-headband'.setup {
      -- file_section = {
      --   wrap = bubbles_wrap
      -- },
      --
      -- location_section = {
      --   wrap = bubbles_wrap,
      --
      --   separator = reverse_arrow,
      --
      --   empty_symbol = '',
      --
      --   position = 'right',
      --   reversed = true
      -- }
    }
  end
}
