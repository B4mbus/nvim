return {
	'RRethy/nvim-treesitter-textsubjects',
	event = { "BufRead", "BufNewFile" },
	config = function()
		require 'nvim-treesitter.configs'.setup {
			textsubjects = {
				enable = true,
				prev_selection = ',',
				keymaps = {
					['<cr>'] = 'textsubjects-smart',
					[';'] = 'textsubjects-container-outer',
					['i;'] = 'textsubjects-container-inner',
				},
			},
		}
	end
}
