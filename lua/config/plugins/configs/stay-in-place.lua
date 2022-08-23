return {
	'gbprod/stay-in-place.nvim',
	config = function()
		require 'stay-in-place'.setup {
			set_keymaps = true,
			preserve_visual_selection = true
		}
	end
}
