return {
	'nvim-treesitter/nvim-treesitter-textobjects',
	config = function()
		require'nvim-treesitter.configs'.setup {
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						af = '@function.outer',
						['if'] = '@function.inner',

						ac = '@class.outer',
						ic = '@class.inner',

						ab = '@block.outer',
						ib = '@block.inner',

						as = '@statement.outer', 
						is = '@statement.inner'
					},
					selection_modes = {
						['@parameter.outer'] = 'v', -- charwise
						['@function.outer'] = 'V', -- linewise
						['@class.outer'] = '<c-v>', -- blockwise
					}
				}
			}
		}
	end
}
