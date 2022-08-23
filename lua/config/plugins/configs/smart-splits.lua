return {
	'mrjones2014/smart-splits.nvim',
	config = function()
		require 'smart-splits'.setup {
			resize_mode = {
				silent = true
			}
		}
	end
}
