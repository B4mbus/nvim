return {
	'akinsho/toggleterm.nvim',
	config = function()
		require 'toggleterm'.setup {
			open_mapping = '<Nop>',
			hide_numbers = true,
			start_in_insert = true,
			persist_size = true,
			persist_mode = true,
			direction = 'float',
			close_on_exit = true,
			shell = vim.o.shell,
			float_opts = {
				border = 'single'
			}
		}
	end,
	tag = '2.*'
}
