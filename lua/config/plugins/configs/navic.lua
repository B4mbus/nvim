return {
	'SmiteshP/nvim-navic',
	config = function()
		require 'nvim-navic'.setup {
      highlight = true,
			separator = ' ' .. require 'config.symbols'.nice_arrow .. ' '
    }
	end
}
