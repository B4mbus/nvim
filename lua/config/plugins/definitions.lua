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

  use 'tabout',
	use 'notify',
	use 'todo-comments',
  use 'leap',
	use 'indent-blankline',
	-- use 'nvim-tree',
	use 'nvim-colorizer',
	use 'fidget',
	use 'nvim-treesitter',
	use 'treesitter-textobjects',
	use 'treesitter-context',
  use 'treesitter-commentstring',
  use 'nvim-ts-autotag',
	use 'lsp_lines',
	use 'gitsigns',
	use 'bufferline',
	use 'scope',
	use 'telescope',
	use 'lsp_signature',
	use 'nvim-cmp',
	use 'lspconfig',
	use 'refactoring',
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
	use 'inc-rename',
	use 'luasnip',
	use 'neogen',
  use 'autolist',
  use 'dirbuf',
  use 'gh',
  use 'spread',
  use 'project',
  use 'mini-nvim',
  use 'flit',
  use 'lualine',
  use 'structlog',

	-- Meta
  'ldelossa/litee.nvim',
	'antoinemadec/FixCursorHold.nvim',
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

  'airblade/vim-rooter',
  'tommcdo/vim-exchange',
  'gabrielpoca/replacer.nvim',
  'nocksock/bloop.nvim',
  'zah/nim.vim',
  'projekt0n/github-nvim-theme' ,
  'rafamadriz/friendly-snippets',
  'jose-elias-alvarez/typescript.nvim',
  'mattn/emmet-vim',
  'tpope/vim-fugitive',
	'antoyo/vim-licenses',
	'AndrewRadev/switch.vim',
	'p00f/clangd_extensions.nvim',
	'm-demare/hlargs.nvim',
	'kyazdani42/blue-moon',
	'romainl/vim-cool',
	'onsails/lspkind.nvim',
	'andymass/vim-matchup',
	'rebelot/kanagawa.nvim',
	'NvChad/base46',
	'editorconfig/editorconfig-vim',
	'mcauley-penney/tidy.nvim',
	'F:/prv/dev/projects/oxocarbon-lua.nvim',
	'kyazdani42/nvim-web-devicons',

	'lewis6991/impatient.nvim',
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

vim.cmd.packadd 'nvim-headband'

-- local color = '#A7C7E7'
-- vim.api.nvim_set_hl(0, 'NvimHeadbandPath', { bg = color })
-- vim.api.nvim_set_hl(0, 'NvimHeadbandFilename', { fg = '#000000', bg = color })
-- vim.api.nvim_set_hl(0, 'NvimHeadbandLocSeparator', { fg = '#6d8086', bg = color })
-- vim.api.nvim_set_hl(0, 'NvimHeadbandLocText', { fg = '#112233', bg = color })
--
-- vim.api.nvim_set_hl(0, 'BubblesFront', { fg = color })
--
-- local reverse_arrow = require 'nvim-headband.symbols'.reverse_nice_arrow
-- local bubbles_wrap = { '%#BubblesFront#', '%#BubblesFront#' }
--
require 'nvim-headband'.setup {
  file_section = {
    -- text = 'shortened_lower'
    -- wrap = bubbles_wrap
  },
  --
  -- location_section = {
  --   wrap = bubbles_wrap,
  --
  --   separator = reverse_arrow,
  --
  --   empty_symbol = '',
  --
  --   position = 'right',
  -- }
}
