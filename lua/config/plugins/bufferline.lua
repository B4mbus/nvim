return {
	'akinsho/bufferline.nvim',
	tag = '2.*',
	config = function() 
		require 'bufferline'.setup {
			options = {
				diagnostics = 'nvim_lsp',
				offsets = {
					{
						filetype = 'NvimTree', 
						text = '📂 File Explorer',
						text_align = 'center'
					}
				}
			}
		}
	end
}