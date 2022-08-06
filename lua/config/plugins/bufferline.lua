return {
	'akinsho/bufferline.nvim',
	tag = '2.*',
	config = function() 
		require 'bufferline'.setup {
			options = {
				diagnostics = 'nvim_lsp',
			},
			offsets = {
				filetype = 'NvimTree',
				highlight = 'Directory',
			}
		}
	end
}
