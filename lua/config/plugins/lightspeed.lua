return {
	'ggandor/lightspeed.nvim', 
	config = function()
		require'lightspeed'.setup {
			jump_to_unique_chars = { safety_timeout = 200 },
		}
	end
}
