return {
	'ggandor/lightspeed.nvim',
	event = 'BufEnter',
	config = function()
		require'lightspeed'.setup {
			jump_to_unique_chars = { safety_timeout = 200 },
		}
	end
}
