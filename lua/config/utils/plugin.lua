return {

use_plugins = function(plugins)
	local status, packer_mod = xpcall(require, notify_error, 'packer')

	if status then
		packer_mod.startup {
			function(use)
				for _, plugin in ipairs(plugins) do
					use(plugin)
				end
			end,
			config = {
				display = {
					open_fn = function()
						return require('packer.util').float({ border = 'single' })
					end
				}
			}
		}
	end
end,

}
