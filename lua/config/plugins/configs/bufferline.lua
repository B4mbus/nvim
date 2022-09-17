return {
	'akinsho/bufferline.nvim',
	tag = '2.*',
	event = 'BufEnter',
	config = function()
		require 'bufferline'.setup {
      highlights = {
        buffer_selected = {
          italic = false
        }
      },
			options = {
        close_icon = '',
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
