return {
	'kyazdani42/nvim-tree.lua',
	config = function()
		require 'nvim-tree'.setup {
			sync_root_with_cwd = true,
			respect_buf_cwd = true,
			reload_on_bufenter = true,

			hijack_directories = {
				enable = true,
			},

			update_focused_file = {
				enable = true,
				update_root = true
			},

      view = {
        hide_root_folder = true,
        adaptive_size = true
			}
		}
	end
}
