return {
  'lewis6991/gitsigns.nvim',
	event = 'BufRead',
	config = function()
		require('gitsigns').setup {
			current_line_blame = false,
			current_line_blame_opts = {
				virt_text = true,
				virt_text_pos = 'eol',
				delay = 100,
			}
		}
	end
}
