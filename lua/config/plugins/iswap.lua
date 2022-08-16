return {
	'mizlan/iswap.nvim',
	config = function()
		require 'iswap'.setup {
			autoswap = true
		}
	end
}
