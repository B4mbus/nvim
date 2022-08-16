return {
	'CosmicNvim/cosmic-ui',
	config = function()
		require 'cosmic-ui'.setup {
			border_style = 'rounded',
			rename = {
				border = {
					style = 'rounded'
				},
				prompt = 'λ '
			},
			code_actions = {
				border = {
					style = 'rounded'
				}
			}
		}
	end
}
