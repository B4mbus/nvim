return {
	'rcarriga/nvim-notify',
	event = 'BufEnter',
	config = function()
		vim.notify = require("notify")

		require 'telescope'.load_extension('notify')
	end
}
