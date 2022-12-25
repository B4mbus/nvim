local ok, _ = pequire('b4mbus.plugins.lazy_bootstrap')

if not ok then
  vim.notify([[Could not find and bootstrap lazy. Plugins can't be loaded]])
  return
end

require('lazy').setup(
  {
    {
      'folke/tokyonight.nvim',
      lazy = false,
      config = function()
        require('tokyonight').setup({
          on_highlights = function(hls)
            hls.CursorLineNr = {
              fg = '#ffffff',
              bold = true
            }
          end
        })

        vim.cmd.colorscheme('tokyonight-night')
      end
    },

    'ggandor/leap.nvim',
    'ggandor/flit.nvim',
    'rcarriga/nvim-notify',
    'folke/todo-comments.nvim',
    'NvChad/nvim-colorizer.lua',
    'j-hui/fidget.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-treesitter/playground',
    'JoosepAlviste/nvim-ts-context-commentstring',
    'windwp/nvim-ts-autotag',
    {
      'nvim-neorg/neorg',
      dependencies = { 'nvim-lua/plenary.nvim' },
    },
    {
      'tiagovla/scope.nvim',
      lazy = false,
    },
    {
      'tiagovla/buffercd.nvim',
      lazy = false,
    },
    {
      'lukas-reineke/indent-blankline.nvim',
      event = { 'BufEnter', 'BufNewFile' }
    },
    {
      'lewis6991/gitsigns.nvim',
      event = 'BufRead'
    },
    {
      'b4mbus/telescope-lazy.nvim',
      dependencies = { 'nvim-telescope/telescope.nvim' }
    },
    {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.0',
    },
    {
      'numToStr/Comment.nvim',
      keys = { 'gc', 'gcc', 'gbc' },
      dependencies = { 'JoosepAlviste/nvim-ts-context-commentstring' },
    },
    'ray-x/lsp_signature.nvim',
    {
      'hrsh7th/nvim-cmp',
      lazy = false,
      dependencies = {
        'onsails/lspkind.nvim',
        'p00f/clangd_extensions.nvim',
        'L3MON4D3/luasnip'
      },
    },
    'rareitems/printer.nvim',
    'neovim/nvim-lspconfig',
    {
      'SmiteshP/nvim-navic',
      event = 'BufRead'
    },
    { 'folke/which-key.nvim', lazy = false },
    {
      'mizlan/iswap.nvim',
      event = 'BufRead'
    },
    'gbprod/stay-in-place.nvim',
    'johmsalas/text-case.nvim',
    {
      'sindrets/diffview.nvim',
      cmd = {
        'DiffviewOpen',
        'DiffviewFileHistory'
      }
    },
    {
      'L3MON4D3/luasnip',
      event = 'InsertEnter'
    },
    {
      'elihunter173/dirbuf.nvim',
      event = 'BufEnter',
      cmd = 'Dirbuf',
      keys = '-'
    },
    {
      'rktjmp/paperplanes.nvim'
    },
    {
      'rest-nvim/rest.nvim',
      dependencies = { 'nvim-lua/plenary.nvim' },
    },
    {
      'Wansmer/treesj',
      dependencies = { 'nvim-treesitter/nvim-treesitter' }
    },
    {
      'ahmedkhalf/project.nvim',
      lazy = false
    },
    {
      'echasnovski/mini.nvim',
      event = 'BufRead'
    },
    -- 'B4mbus/nvim-headband',
    {
      'michaelb/sniprun',
      build = 'bash ./install.sh'
    },
    'folke/noice.nvim',
    { 'potamides/pantran.nvim' },
    {
      'kevinhwang91/nvim-ufo',
      dependencies = 'kevinhwang91/promise-async',
    },
    -- {
    --   'akinsho/bufferline.nvim',
    --   tag = '2.*',
    --   event = 'BufEnter'
    -- }
    -- 'nvim-treesitter/nvim-treesitter-context',
    -- 'Maan2003/lsp_lines.nvim',

    -- Meta
    'ldelossa/litee.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-lua/popup.nvim',
    'kevinhwang91/promise-async',
    'tpope/vim-repeat',
    'rktjmp/lush.nvim',
    'MunifTanjim/nui.nvim',

    {
      'hrsh7th/cmp-nvim-lua',
      event = 'BufRead'
    },
    {
      'hrsh7th/cmp-buffer',
      event = 'BufRead'
    },
    {
      'hrsh7th/cmp-path',
      event = 'BufRead'
    },
    {
      'hrsh7th/cmp-nvim-lsp',
      event = 'BufRead'
    },
    'bhurlow/vim-parinfer',
    {
      'vim-utils/vim-man',
      cmd = 'Man',
      keys = 'g/'
    },
    {
      'AndrewRadev/switch.vim',
      cmd = 'Switch'
    },
    {
      'wakatime/vim-wakatime',
      event = 'BufRead'
    },
    'mzlogin/vim-markdown-toc',
    {
      'tommcdo/vim-exchange',
      keys = 'cx'
    },
    'gabrielpoca/replacer.nvim',
    'rafamadriz/friendly-snippets',
    {
      'samjwill/nvim-unception',
      lazy = false
    },
    {
      'tpope/vim-eunuch',
      cmd = {
        'Remove', 'Delete',
        'Move', 'Rename',
        'Copy', 'Duplicate',
        'Chmod', 'Mkdir',
        'Cfind', 'Wall',
        'SudoWrite', 'SudoEdit'
      }
    },
    {
      'tpope/vim-fugitive',
      cmd = { 'G', 'Git' }
    },
    {
      'tpope/vim-rhubarb',
      cmd = 'GBrowse'
    },
    'p00f/clangd_extensions.nvim',
    'onsails/lspkind.nvim',
    {
      'matze/vim-move',
      event = 'BufRead'
    },
    {
      'andymass/vim-matchup',
      event = 'BufRead'
    },
    {
      'editorconfig/editorconfig-vim',
      lazy = false
    },
    {
      'mattn/emmet-vim',
      event = 'BufRead'
    },
    'kyazdani42/nvim-web-devicons',
    { 'b4mbus/macro-status.nvim', dev = true }
  },
  {
    defaults = {
      lazy = true,
      version = nil,
    },
    install = {
      missing = true
    },
    performance = {
      cache = {
        enabled = true,
        path = vim.fn.stdpath("state") .. "/lazy/cache",
        disable_events = { "VimEnter", "BufReadPre" },
      },
      reset_packpath = true, -- reset the package path to improve startup time
      rtp = {
        reset = true,
        disabled_plugins = {
          '2html_plugin', 'getscript',
          'getscriptPlugin', 'gzip',
          'logipat', 'matchit',
          'loaded_remote_plugins',
          'loaded_tutor_mode_plugin',
          'rrhelper', 'spellfile_plugin',
          'tar', 'tarPlugin', 'vimball',
          'vimballPlugin', 'zip', 'zipPlugin',
          'matchparen', 'netrw'
        },
      },
    },
    readme = {
      root = vim.fn.stdpath("state") .. "/lazy/readme",
      files = { "README.md" },
      skip_if_doc_exists = true,
    },
  }
  )
