local pu = require 'config.utils.plugin'

local use_plugins = pu.use_plugins
local with_config = pu.with_config
local with_plain_setup = pu.with_plain_setup
local with_setup = pu.with_setup

use_plugins {
	with_config('wbthomason/packer.nvim'),
	with_plain_setup('folke/todo-comments.nvim'),
	with_setup('lukas-reineke/indent-blankline.nvim', {
		space_char_blankline = ' ',
		show_current_context = true,
		show_current_context_start = true,
	}),
	with_setup('ggandor/lightspeed.nvim', {
		jump_to_unique_chars = { safety_timeout = 200 },
	}),
	'nvim-lua/plenary.nvim',
	'andymass/vim-matchup',
	'antoinemadec/FixCursorHold.nvim',
	'tpope/vim-repeat',
	'rebelot/kanagawa.nvim',
	'editorconfig/editorconfig-vim',
	'MaxMEllon/vim-jsx-pretty',
	'mcauley-penney/tidy.nvim',
	'hauleth/vim-backscratch',
}
