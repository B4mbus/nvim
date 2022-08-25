return {
	'nvim-treesitter/nvim-treesitter',
	config = function()
		require 'nvim-treesitter.configs'.setup {
			ensure_installed = {
				'norg',
				'cpp',
				'json',
				'javascript',
				'lua',
				'fennel',
				'query',
				'markdown',
				'haskell'
			},

			sync_install = false,

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},

			matchparen = {
				enable = true
			}
		}
	end,
	run = function() 
		require('nvim-treesitter.install').update({ with_sync = true }) 
	end,
}
