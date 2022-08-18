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

						as = '@statement.outer',

						ip = '@parameter.inner',

						iC = '@conditional.inner',
						aC = '@conditional.outer',

						ic = '@call.inner',
						ac = '@call.outer',

						il = '@loop.inner',
						al = '@loop.outer'
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
