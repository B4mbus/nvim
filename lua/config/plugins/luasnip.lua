return {
	'L3MON4D3/luasnip',
	event = 'InsertEnter',
	config = function ()
		local ls = require 'luasnip'
		local types = require 'luasnip.util.types'

		ls.config.set_config {
			history = true,

			updateevents = 'TextChanged,TextChangedI',
			region_check_events = 'CursorMoved,CursorHold,InsertEnter',
			delete_check_events = 'InsertLeave',

			ext_opts = {
				[types.choiceNode] = {
					active = {
						hl_mode = 'combine',
						virt_text = { { '●', 'Operator' } },
					},
				},
				[types.insertNode] = {
					active = {
						hl_mode = 'combine',
						virt_text = { { '●', 'Type' } },
					},
				},
			}
		}

		local make_ls_executor = function(func)
			return function() func(require 'luasnip') end
		end

		vim.keymap.set(
			{ 'i', 's' },
			'<c-k>',
			make_ls_executor(function(ls)
				if ls.expand_or_jumpable() then
					ls.expand_or_jump()
				end
			end)
		)

		vim.keymap.set(
			{ 'i', 's' },
			'<c-j>',
			make_ls_executor(function(ls)
				if ls.jumpable() then
					ls.jump(-1)
				end
			end)
		)

		vim.keymap.set(
			{ 'i', 's' },
			'<c-space>',
			make_ls_executor(function(ls)
				if ls.choice_active() then
					ls.change_choice(1)
				end
			end)
		)
	end
}
