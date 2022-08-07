return {
	'folke/which-key.nvim',
	config = function()
		local wk = require 'which-key'
		wk.setup {
			window = {
				border = 'single'
			}
		}

		local telescope_mappings = {
			name = 'Telescope',
			f = { '<cmd>Telescope find_files<cr>', 'Find files' },
			g = { '<cmd>Telescope live_grep<cr>', 'Live grep' },
			h = { '<cmd>Telescope help_tags<cr>', 'Help' },
			k = { '<cmd>Telescope keymaps<cr>', 'Mappings' },
			c = { '<cmd>Telescope commands<cr>', 'Commands' },
			H = { '<cmd>Telescope highlights<cr>', 'Highlights' }
		}

		local terminal_mappings = {
			name = 'Terminal',
			t = { '<cmd>tabnew<cr><cmd>term<cr>' , 'Open terminal in new tab' },
			v = { '<cmd>vsplit<cr><cmd>term<cr>' , 'Open terminal in vsplit' },
			x = { '<cmd>split<cr><cmd>term<cr>' , 'Open terminal in split' },
			c = { '<cmd>term<cr>' , 'Open terminal in current buffer' }
		}

		local lsp_mappings = {
			name = 'Lsp',
			r = { '<cmd>Telescope lsp_references<cr>', 'References' },
			d = { '<cmd>Telescope lsp_definitions<cr>', 'References' },
			i = { '<cmd>Telescope lsp_implementations<cr>', 'References' },
			s = { '<cmd>Telescope lsp_document_symbols<cr>', 'Local symbols' },
			S = { '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>', 'Symbols' }
		}

		local git_mappings = {
			name = 'Git',
			b = { '<cmd>Telescope git_branches<cr>', 'Branches' },
			s = { '<cmd>Telescope git_status<cr>', 'Status' },
			c = { '<cmd>Telescope git_bcommits<cr>', 'Local commits' },
			C = { '<cmd>Telescope git_commits<cr>', 'Commits' }
		}

		local packer_mappings = {
			name = 'Packer',
			s = { '<cmd>PackerSync<cr>', 'Sync' },
			u = { '<cmd>PackerUpdate<cr>', 'Update' },
			S = { '<cmd>PackerStatus<cr>', 'Status' }
		}

		local buffer_mappings = {
			r = { '<cmd>BufferLineCloseRight', 'Close to the right' },
			l = { '<cmd>BufferLineCloseLeft', 'Close to the left' },
			p = { '<cmd>BufferLineTogglePin', 'Toggle pin' },
		}

		local truezen_mappings = {
			a = '<cmd>TZAtaraxis<cr>',
			m = '<cmd>TZMinimalist<cr>',
			f = '<cmd>TZFoucs<cr>'
		}

		wk.register(
			{
				b = buffer_mappings,
				l = lsp_mappings,
				s = telescope_mappings,
				t = terminal_mappings,
				g = git_mappings,
				p = packer_mappings,
				z = truezen_mappings,
				e = { '<cmd>NvimTreeToggle<cr>', 'Open file tree' },
				["ss"] = { '<cmd>w<cr><cmd>so %<cr>', 'Source current file' },
				q = { '<cmd>wqa<cr>', 'Save and quit' },
				Q = { '<cmd>wqa!<cr>', 'Force save and quit' }
			},
			{ prefix = '<leader>' }
		)
		wk.register(
			{ ["zn"] = ':\'<,\'>TZNarrow<cr>', },
			{ prefix = '<leader>', mode = 'v' }
		)

	end
}
