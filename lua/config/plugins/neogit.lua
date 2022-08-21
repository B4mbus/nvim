return {
	'TimUntersberger/neogit',
	config = function()
		require 'neogit'.setup {
			integrations = {
				diffview = true
			},
			sections = {
				recent = {
					folded = false
				},
			}
		}
	end
}
