return {
	'nvim-treesitter/nvim-treesitter-context',
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

