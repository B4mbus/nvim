return {
	'TimUntersberger/neogit',
	config = function()
		require 'neogit'.setup{
			integrations = {
				diffview = true
			}
		}
	end
}
