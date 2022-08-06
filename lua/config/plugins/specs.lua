return {
	'edluffy/specs.nvim',
	config = function()
 	 	local specs = require 'specs'

		specs.setup()
		specs.toggle()
	end
}
