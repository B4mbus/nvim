local utils = require 'config.utils.utils'

utils.use_plugins {
	'nvim-lua/plenary.nvim',
	{
		'wbthomason/packer.nvim'
	},
	'tpope/vim-repeat',
	'rebelot/kanagawa.nvim',
	'editorconfig/editorconfig-vim',
	'MaxMEllon/vim-jsx-pretty',
	'mcauley-penney/tidy.nvim',
	'hauleth/vim-backscratch',
	{
		'folke/todo-comments.nvim',
		config = function()
			require 'todo-comments'.setup()
		end
	},
	'andymass/vim-matchup',
	{
		'lukas-reineke/indent-blankline.nvim',
		config = function()
			require 'indent_blankline'.setup {
				space_char_blankline = ' ',
				show_current_context = true,
				show_current_context_start = true,
			}
		end
	},
	'antoinemadec/FixCursorHold.nvim',
	{
		'ggandor/lightspeed.nvim',
		config = function()
			require 'lightspeed'.setup {
				ignore_case = false,
				--- s/x ---
				jump_to_unique_chars = { safety_timeout = 200 },
				match_only_the_start_of_same_char_seqs = true,
				force_beacons_into_match_width = false,
				-- Display characters in a custom way in the highlighted matches.
				substitute_chars = { ['\r'] = '¬', },
				special_keys = {
					next_match_group = '<space>',
					prev_match_group = '<tab>',
				},
				--- f/t ---
				limit_ft_matches = 4,
				repeat_ft_with_target_char = false,
			}
		end,
		requires = { { 'tpope/vim-repeat', opt = false } }
	}
}
