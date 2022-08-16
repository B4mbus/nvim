return {
	'folke/which-key.nvim',
	config = function()
		local wk = require 'which-key'
		wk.setup {
			window = {
				border = 'single'
			}
		}

		local neovide_mappings = {
			f = {
				function()
					vim.cmd [[
						if g:neovide_fullscreen == v:true
							let g:neovide_fullscreen = v:false
						else
							let g:neovide_fullscreen = v:true
						endif
					]]
				end,
				'Toggle fullscreen'
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

		local open_terminal = function(command, split)
			return function()
				if split then
					vim.cmd(string.format('exe "%s"', split))
				end
				vim.fn.termopen(command)
			end
		end
		local open_shell = function(split) return open_terminal(vim.opt.shell:get(), split) end
		local open_wsl = function(split) return open_terminal('wsl', split) end

		-- temporary fix
		local open_nu = function(split) return open_terminal('nu', split) end

		local terminal_mappings = {
			name = 'Terminal',
			n = { open_shell('tabnew'), 'Open terminal in new tab' },
			v = { open_shell('vnew'), 'Open terminal in vsplit' },
			x = { open_shell('new'), 'Open terminal in split' },
			c = { open_shell(), 'Open terminal in current buffer' },
			n = { 
				name = 'NUShell',
				n = { open_nu('tabnew'), 'Open nu in new tab' },
				v = { open_nu('vnew'), 'Open nu in vsplit' },
				x = { open_nu('new'), 'Open nu in split' },
				c = { open_nu(), 'Open nu in current buffer' }
			},
			w = { 
				name = 'WSL',
				n = { open_wsl('tabnew'), 'Open wsl in new tab' },
				v = { open_wsl('vnew'), 'Open wsl in vsplit' },
				x = { open_wsl('new'), 'Open wsl in split' },
				c = { open_wsl(), 'Open wsl in current buffer' }
			}
		}

		local lsp_mappings = {
			name = 'LSP',
			['<space>'] = {
				name = 'Meta',
				i = { '<cmd>LspInfo<cr>', 'Info' },
				l = { '<cmd>LspLog<cr>', 'Log' },
				r = { '<cmd>LspRestart<cr>', 'Restart' },
				s = { '<cmd>LspStart<cr>', 'Start' },
				S = { '<cmd>LspStop<cr>', 'Stop' }
			},
			c = {
				name = 'Copilot',
				e = { '<cmd>Copilot enable<cr>', 'Enable'},
				d = { '<cmd>Copilot disable<cr>', 'Disable'},
				s = { '<cmd>Copilot status<cr>', 'Status'}
			},
			R = { '<cmd>Telescope lsp_references<cr>', 'References' },
			a = { '<cmd>lua require "cosmic-ui".code_actions()<cr>', 'Code actions' },
			d = { '<cmd>Telescope lsp_definitions<cr>', 'Definitions' },
			i = { '<cmd>Telescope lsp_implementations<cr>', 'Implementations' },
			s = { '<cmd>Telescope lsp_document_symbols<cr>', 'Local symbols' },
			S = { '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>', 'Symbols' },
			l = { '<cmd>lua require "lsp_lines".toggle()<cr>', 'Symbols' }
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
			S = { '<cmd>PackerStatus<cr>', 'Status' },
		}

		local buffer_mappings = {
			name = 'Buffers',
			l = { '<cmd>BufferLineCloseRight<cr>', 'Close to the right' },
			h = { '<cmd>BufferLineCloseLeft<cr>', 'Close to the left' },
			H = { '<cmd>h<cr>', 'Close to the left' },
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

		local iswap_mappings = {
			name = 'ISwap',
			i = { '<cmd>ISwap<cr>', 'General' },
			w = { '<cmd>ISwapWith<cr>', 'With' },
			n = { '<cmd>ISwapNode<cr>', 'Node' },
			h = { '<cmd>ISwapNodeWithLeft<cr>', 'With left' },
			l = { '<cmd>ISwapNodeWithRight<cr>', 'With right' },
		}

		-- All the default keymapings
		wk.register(
		{
			y = { '<cmd>%y<cr>', 'Yank buffer'},
			c = { '<cmd>e $MYVIMRC<cr>', 'Open config'},
			d = { '<cmd>tabclose<cr>', 'Close tab' },
			e = { '<cmd>NvimTreeToggle<cr>', 'Open file tree' },
			["ss"] = { '<cmd>w<cr><cmd>so %<cr>', 'Source current file' },
			q = { '<cmd>wqa<cr>', 'Save and quit' },
			Q = { '<cmd>wqa!<cr>', 'Force save and quit' },
			n = neovide_mappings,
			b = buffer_mappings,
			l = lsp_mappings,
			s = telescope_mappings,
			t = terminal_mappings,
			g = git_mappings,
			p = packer_mappings,
			z = truezen_mappings,
			i = iswap_mappings
		},
		{ prefix = '<leader>' }
		)

		wk.register(
		{
			["zn"] = {
				function()
					local first = vim.fn.line('v')
					local last = vim.fn.line('.')
					require 'true-zen'.narrow(first, last)
				end, 
				'Narrow' 
			},
		},
		{ prefix = '<leader>', mode = 'v' }
		)

	end
}
