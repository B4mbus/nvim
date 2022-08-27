local use = function(name)
	local plugin_path = 'config.plugins.configs.' .. name
	local status, mod = pcall(require, plugin_path)

	if status then
		return mod
	else
		vim.notify(string.format('[ERROR] Cannot find plugin "%s".', name), vim.log.levels.ERROR)
		return nil
	end
end

local plugins = {
	'wbthomason/packer.nvim',

	use 'notify',
	use 'todo-comments',
	use 'lightspeed',
	use 'indent-blankline',
	use 'nvim-tree',
	use 'nvim-colorizer',
	use 'fidget',
	use 'true-zen',
	use 'nvim-treesitter',
	use 'treesitter-textobjects',
	use 'treesitter-textsubjects',
	use 'treesitter-context',
	use 'lsp_lines',
	use 'comment',
	use 'gitsigns',
	use 'autopairs',
	use 'nvim-surround',
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
	use 'project',
	use 'iswap',
	use 'cosmic-ui',
	use 'buffercd',
	use 'stay-in-place',
	use 'text-case',
	-- use 'wilder',
	use 'trevJ',
	use 'decay',
	use 'neogit',
	use 'diffview',
	use 'inc-rename',
	use 'luasnip',
	use 'neogen',
  use 'nvim-ts-autotag',
  use 'autolist',

	-- Meta
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
	'famiu/bufdelete.nvim',
	'andymass/vim-matchup',
	'rebelot/kanagawa.nvim',
	'NvChad/base46',
	'editorconfig/editorconfig-vim',
	'mcauley-penney/tidy.nvim',
	'hauleth/vim-backscratch',
	'F:/prv/dev/projects/oxocarbon-lua.nvim',
	'kyazdani42/nvim-web-devicons',

	'lewis6991/impatient.nvim',


  'F:\\prv\\dev\\projects\\nvim-headband'
}

local packer = require 'packer'

packer.startup {
	function(use)
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
