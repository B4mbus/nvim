require('b4mbus.plugins.lazy_bootstrap')

require('lazy').setup(
  {
    {
      'folke/tokyonight.nvim',
      lazy = false
    },

    'ggandor/leap.nvim',
    'ggandor/flit.nvim',
    'rcarriga/nvim-notify',
    'folke/todo-comments.nvim',
    'norcalli/nvim-colorizer.lua',
    'j-hui/fidget.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-treesitter/playground',
    'JoosepAlviste/nvim-ts-context-commentstring',
    'windwp/nvim-ts-autotag',
    'tiagovla/scope.nvim',
    'tiagovla/buffercd.nvim',
    {
      'lukas-reineke/indent-blankline.nvim',
      event = { 'BufEnter', 'BufNewFile' }
    },
    {
      'lewis6991/gitsigns.nvim',
      event = 'BufRead'
    },
    {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.0',
    },
    {
      'numToStr/Comment.nvim',
      event = 'BufRead',
    },
    'ray-x/lsp_signature.nvim',
    {
      'hrsh7th/nvim-cmp',
      event = 'BufRead',
      dependencies = {
        'onsails/lspkind.nvim',
        'p00f/clangd_extensions.nvim',
        'L3MON4D3/luasnip'
      },
    },
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
      cmd = 'Dirbuf',
      keys = '-'
    },
    {
      'rktjmp/paperplanes.nvim'
    },
    {
      'rest-nvim/rest.nvim',
      requires = { 'nvim-lua/plenary.nvim' },
    },
    {
      'Wansmer/treesj',
      requires = { 'nvim-treesitter' }
    },
    {
      'ahmedkhalf/project.nvim',
      lazy = false
    },
    {
      'echasnovski/mini.nvim',
      event = 'BufRead'
    },
    'B4mbus/nvim-headband',
    {
      'michaelb/sniprun',
      build = 'bash ./install.sh'
    },
    'folke/noice.nvim',
    { 'potamides/pantran.nvim' },
    {
      'kevinhwang91/nvim-ufo',
      requires = 'kevinhwang91/promise-async',
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

    'hrsh7th/cmp-nvim-lsp-document-symbol',
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lsp',

    'bhurlow/vim-parinfer',
    'vim-utils/vim-man',
    'AndrewRadev/switch.vim',
    'wakatime/vim-wakatime',
    'mzlogin/vim-markdown-toc',
    'airblade/vim-rooter',
    'tommcdo/vim-exchange',
    'gabrielpoca/replacer.nvim',
    'rafamadriz/friendly-snippets',
    'samjwill/nvim-unception',
    'tpope/vim-eunuch',
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb',
    'tpope/vim-dispatch',
    'p00f/clangd_extensions.nvim',
    'onsails/lspkind.nvim',
    'matze/vim-move',
    'andymass/vim-matchup',
    'editorconfig/editorconfig-vim',
    'mattn/emmet-vim',
    'kyazdani42/nvim-web-devicons',
    { 'b4mbus/macro-status.nvim', dev = true }

    -- Themes
  },
  {
    defaults = {
      lazy = true,
      version = nil,
    },
    dev = {
      path = "~/dev/projects",
      patterns = {
        'b4mbus',
        'B4mbus'
      },
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
          'matchparen'
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
