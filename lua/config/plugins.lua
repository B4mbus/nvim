local notify_error = function(err)
	vim.notify('[ERROR] Cannot find plugin\n' .. err, vim.log.levels.ERROR)
end

local use = function(name)
	local plugin_path = 'config.plugins.' .. name
	local status, mod = xpcall(require, notify_error, plugin_path)
	if status then
		return mod
	end
end

local plugins = {
	use 'todo-comments',
	use 'lightspeed',
	use 'indent-blankline',
	use 'nvim-tree',
	use 'nvim-colorizer',
	use 'fidget',
	use 'true-zen',
	use 'nvim-treesitter',
	use 'lsp_lines',
	use 'comment',
	use 'toggleterm',
	use 'gitsigns',
	use 'wilder',
	use 'autopairs',
	use 'nvim-surround',
	use 'bufferline',
	use 'scope',
	use 'telescope',
	use 'lsp_signature',
	use 'nvim-cmp',
	use 'lspconfig',
	use 'refactoring',
	use 'tresitter-textobjects',
	use 'navic',
	use 'which-key',

	-- Meta 
	'antoinemadec/FixCursorHold.nvim',
	'nvim-lua/plenary.nvim',
	'nvim-lua/popup.nvim',
	'kevinhwang91/promise-async',
	'tpope/vim-repeat',
	'rktjmp/lush.nvim',
	'wbthomason/packer.nvim',

	'hrsh7th/cmp-nvim-lsp-document-symbol',
	'hrsh7th/cmp-nvim-lua',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-nvim-lsp',
	'saadparwaiz1/cmp_luasnip',

	'folke/lua-dev.nvim',
	'kyazdani42/blue-moon',
	'L3MON4D3/LuaSnip',
	'romainl/vim-cool',
	'onsails/lspkind.nvim',
	'famiu/bufdelete.nvim',
	'andymass/vim-matchup',
	'rebelot/kanagawa.nvim',
	'editorconfig/editorconfig-vim',
	'mcchrish/zenbones.nvim',
	'mcauley-penney/tidy.nvim',
	'hauleth/vim-backscratch',
	'B4mbus/oxocarbon-lua.nvim',
	'kyazdani42/nvim-web-devicons',
}

local packer = require 'packer'

packer.startup {
	function(use)
		for _, plugin in ipairs(plugins) do
			use(plugin)
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
