return {
  b4_fork('mini.nvim'),
  config = function()
    require('mini.ai').setup({})

    require('mini.bufremove').setup({})
    require('mini.comment').setup({})
    require('mini.pairs').setup({})

    require('mini.starter').setup({})
    require('mini.surround').setup({
      mappings = {
        highlight = nil,
      },
    })

    require('mini.trailspace').setup({})

    require('mini.align').setup({
      mappings = {
        start = 'gA',
        start_with_preview = 'ga',
      },
    })

    require('mini.sessions').setup({
      -- directory = require('plenary.path')
      --               :new(vim.fn.stdpath('data'))
      --               :joinpath('sessions\\')
      --               .filename
    })
  end
}
