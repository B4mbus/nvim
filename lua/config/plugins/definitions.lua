local use = function(name)
  local plugin_path = 'config.plugins.configs.' .. name
  local status, data = pcall(require, plugin_path)

  if status then
    return data
  else
    vim.notify('[ERROR] Cannot find plugin ' .. name, vim.log.levels.ERROR)
    return nil
  end
end

local plugins = {
  'wbthomason/packer.nvim',
  'lewis6991/impatient.nvim',

  use 'leap',
  use 'notify',
  use 'todo-comments',
  use 'indent-blankline',
  -- use 'nvim-tree',
  use 'nvim-colorizer',
  use 'fidget',
  use 'nvim-treesitter',
  use 'treesitter-textobjects',
  use 'treesitter-context',
  use 'treesitter-commentstring',
  use 'nvim-ts-autotag',
  -- use 'lsp_lines',
  use 'gitsigns',
  use 'bufferline',
  use 'scope',
  use 'telescope',
  use 'lsp_signature',
  use 'nvim-cmp',
  use 'lspconfig',
  use 'navic',
  use 'which-key',
  use 'smart-splits',
  use 'iswap',
  use 'cosmic-ui',
  use 'buffercd',
  use 'stay-in-place',
  use 'text-case',
  use 'decay',
  use 'neogit',
  use 'diffview',
  use 'luasnip',
  use 'dirbuf',
  use 'spread',
  use 'project',
  use 'mini-nvim',
  use 'flit',
  -- use 'lualine',

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

  'mzlogin/vim-markdown-toc',
  'tpope/vim-abolish',
  'airblade/vim-rooter',
  'tommcdo/vim-exchange',
  'gabrielpoca/replacer.nvim',
  'zah/nim.vim',
  'rafamadriz/friendly-snippets',
  'tpope/vim-fugitive',
  'AndrewRadev/switch.vim',
  'p00f/clangd_extensions.nvim',
  'm-demare/hlargs.nvim',
  'romainl/vim-cool',
  'onsails/lspkind.nvim',
  -- 'andymass/vim-matchup',
  'editorconfig/editorconfig-vim',
  'kyazdani42/nvim-web-devicons',

  -- Themes
  'F:/prv/dev/projects/oxocarbon-lua.nvim',
  'F:/prv/dev/projects/macro-status.nvim',
  'rebelot/kanagawa.nvim',
  'nocksock/bloop.nvim',
  'projekt0n/github-nvim-theme' ,
}

local packer = require 'packer'

packer.startup {
  function(use)
    use {
      'F:\\prv\\dev\\projects\\nvim-headband',
      after = 'nvim-web-devicons'
    }
    for _, plugin in ipairs(plugins) do
      if plugin then
        use(plugin)
      end
    end
  end,
  config = {
    display = {
      open_fn = function()
        return require 'packer.util'.float({ border = 'single' })
      end
    }
  }
}
