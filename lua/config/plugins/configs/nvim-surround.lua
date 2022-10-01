return {
	'kylechui/nvim-surround',
	config = function()
		require 'nvim-surround'.setup({
      keymaps = {
        normal = '<C-s>',
        normal_cur = '<C-s>s',
        normal_line = '<C-s><C-s>',
        normal_cur_line = '<C-s><CR>',
      },

      move_cursor = false
    })
	end
}

