local use = function(name)
	local plugin_path = 'config.plugins.' .. name
	local status, mod = pcall(require, plugin_path)

	if status then
		return mod
	else
		vim.notify(string.format('[ERROR] Cannot find plugin "%s".', name), vim.log.levels.ERROR)
		return nil
	end
end

local plugins = {
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
	use 'wilder',
	use 'trevJ',
	use 'decay',
	-- use 'nvim-ufo',

	-- Meta
	'antoinemadec/FixCursorHold.nvim',
	'nvim-lua/plenary.nvim',
	'nvim-lua/popup.nvim',
	'kevinhwang91/promise-async',
	'tpope/vim-repeat',
	'rktjmp/lush.nvim',
	'wbthomason/packer.nvim',
	'MunifTanjim/nui.nvim',

	'hrsh7th/cmp-nvim-lsp-document-symbol',
	'hrsh7th/cmp-nvim-lua',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-nvim-lsp',
	'saadparwaiz1/cmp_luasnip',

	'F:\\prv\\dev\\projects\\nvim-shorty',
	'github/copilot.vim',
	'p00f/clangd_extensions.nvim',
	'm-demare/hlargs.nvim',
	'mxw/vim-jsx',
	'folke/lua-dev.nvim',
	'kyazdani42/blue-moon',
	'L3MON4D3/LuaSnip',
	'romainl/vim-cool',
	'onsails/lspkind.nvim',
	'famiu/bufdelete.nvim',
	'andymass/vim-matchup',
	'rebelot/kanagawa.nvim',
	'NvChad/base46',
	'editorconfig/editorconfig-vim',
	'mcauley-penney/tidy.nvim',
	'hauleth/vim-backscratch',
	'B4mbus/oxocarbon-lua.nvim',
	'kyazdani42/nvim-web-devicons',

	'lewis6991/impatient.nvim'
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
				return require('packer.util').float({ border = 'single' })
			end
		}
	}
}

packer.compile()
