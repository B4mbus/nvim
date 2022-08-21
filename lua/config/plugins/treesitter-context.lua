return {
	'nvim-treesitter/nvim-treesitter-context',
	event = { "BufRead", "BufNewFile" },
	config = function()
		patterns = {
			default = {
				'class',
				'function',
				'method',
				'for',
				'while',
				'if',
				'switch',
				'case',
			},
			zindex = 696969,
			separator = '•'
		}
	end
}

