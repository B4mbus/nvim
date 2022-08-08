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
			H = { '<cmd>Telescope highlights<cr>', 'Highlights' },
			p = { '<cmd>Telescope projects<cr>', 'Projects' },
			b = { '<cmd>Telescope buffers<cr>', 'Buffers' }
		}

		local terminal_mappings = {
			name = 'Terminal',
			n = { '<cmd>tabnew<cr><cmd>term<cr>' , 'Open terminal in new tab' },
			v = { '<cmd>vsplit<cr><cmd>term<cr>' , 'Open terminal in vsplit' },
			x = { '<cmd>split<cr><cmd>term<cr>' , 'Open terminal in split' },
			c = { '<cmd>term<cr>' , 'Open terminal in current buffer' },
			-- w = { 
			-- 	name = 'WSL',
			-- 	n = { open_wsl('tabnew'), 'Open terminal in new tab' },
			-- 	v = { open_wsl('vsplit'), 'Open terminal in vsplit' },
			-- 	x = { open_wsl('split'), 'Open terminal in split' },
			-- 	c = { open_wsl, 'Open terminal in current buffer' }
			-- }
		}

		local lsp_mappings = {
			name = 'LSP',
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
			c = { '<cmd>PackerCompile<cr>', 'Compile' },
			C = { '<cmd>PackerClean<cr>', 'Clean' },
			u = { '<cmd>PackerUpdate<cr>', 'Update' },
			S = { '<cmd>PackerStatus<cr>', 'Status' }
		}

		local buffer_mappings = {
			name = 'Buffers',
			l = { '<cmd>BufferLineCloseRight<cr>', 'Close to the right' },
			h = { '<cmd>BufferLineCloseLeft<cr>', 'Close to the left' },
			p = { '<cmd>BufferLineTogglePin<cr>', 'Toggle pin' },
			P = { 
				name = 'Pick',
				p = { '<cmd>BufferLinePick<cr>', 'Open' },
				c = { '<cmd>BufferLinePickClose<cr>', 'Close' }
			}
		}

		local truezen_mappings = {
			name = 'TrueZen',
			a = { '<cmd>TZAtaraxis<cr>', 'Ataraxis' },
			m = { '<cmd>TZMinimalist<cr>', 'Minimalist' },
			f = { '<cmd>TZFocus<cr>', 'Focus' },
			n = { '<cmd>TZNarrow<cr>', 'Narrow' }
		}

		wk.register(
			{
				y = { '<cmd>%y<cr>', 'Yank buffer'},
				c = { '<cmd>e $MYVIMRC<cr><cmd>NvimTreeToggle<cr>', 'Open config'},
				e = { '<cmd>NvimTreeToggle<cr>', 'Open file tree' },
				["ss"] = { '<cmd>w<cr><cmd>so %<cr>', 'Source current file' },
				q = { '<cmd>wqa<cr>', 'Save and quit' },
				Q = { '<cmd>wqa!<cr>', 'Force save and quit' },
				b = buffer_mappings,
				l = lsp_mappings,
				s = telescope_mappings,
				t = terminal_mappings,
				g = git_mappings,
				p = packer_mappings,
				z = truezen_mappings,
			},
			{ prefix = '<leader>' }
		)
		wk.register(
			{ ["zn"] = { "<cmd>'<,'>TZNarrow<cr>", 'Narrow' }, },
			{ prefix = '<leader>', mode = 'v' }
		)

	end
}
