return {
	'folke/which-key.nvim',
	config = function()
		local wk = require 'which-key'
		local symbols = require 'config.symbols'
		wk.setup {
			window = {
				border = 'single'
			},
			icons = {
				separator = '⸬',
				group = symbols.horizontal_ellipsis .. ' '
			}
		}

		local neovide_mappings = {
			f = {
				function()
					vim.cmd [[
            let g:neovide_fullscreen = !g:neovide_fullscreen
					]]
				end,
				'Toggle fullscreen'
			}
		}

		local telescope_mappings = {
			name = 'Telescope',
			f = { '<cmd>Telescope find_files<cr>', 'Find files' },
			F = { '<cmd>Telescope file_browser<cr>', 'File browser' },
			g = { '<cmd>Telescope live_grep<cr>', 'Live grep' },
			h = { '<cmd>Telescope help_tags<cr>', 'Help' },
			k = { '<cmd>Telescope keymaps<cr>', 'Mappings' },
			c = { '<cmd>Telescope commands<cr>', 'Commands' },
			H = { '<cmd>Telescope highlights<cr>', 'Highlights' },
			p = { '<cmd>Telescope projects<cr>', 'Projects' },
			b = { '<cmd>Telescope buffers<cr>', 'Buffers' },
			r = { '<cmd>Telescope resume<cr>', 'Resume' },
      o = { '<cmd>Telescope oldfiles<cr>', 'Oldfiles' }
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
				name = 'Calls',
				i = { '<cmd>Telescope lsp_incoming_calls<cr>', 'Incoming'},
				o = { '<cmd>Telescope lsp_outgoing_calls<cr>', 'Outgoing'},
			},
			R = { '<cmd>Telescope lsp_references<cr>', 'References' },
			a = { '<cmd>lua require "cosmic-ui".code_actions()<cr>', 'Code actions' },
			d = { '<cmd>Telescope lsp_definitions<cr>', 'Definitions' },
			D = { '<cmd>lua vim.diagnostic.open_float()<cr>', 'Diagnostics float' },
			i = { '<cmd>Telescope lsp_implementations<cr>', 'Implementations' },
			s = { '<cmd>Telescope lsp_document_symbols<cr>', 'Local symbols' },
			S = { '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>', 'Symbols' },
			l = { '<cmd>lua require "lsp_lines".toggle()<cr>', 'Toggle lsp_lines' },
			v = {
        function()
          local opts = {
            prefix = '◉ '
          }

          local virtual_text_enabled = vim.diagnostic.config().virtual_text

          vim.diagnostic.config({
            virtual_text = (not virtual_text_enabled) and opts or false
          })
        end,
        'Toggle virtual_text',
      }
		}

		local neogen_mappings = {
			name = 'Neogen',
			a = { function() require 'neogen'.generate() end, 'Generate' },
			f = { function() require 'neogen'.generate { type = 'func' } end, 'Generate for function' },
			t = { function() require 'neogen'.generate { type = 'type' } end, 'Generate for type' },
			c = { function() require 'neogen'.generate { type = 'class' } end, 'Generate for class' },
			F = { function() require 'neogen'.generate { type = 'file' } end, 'Generate for file' },
		}

		local git_mappings = {
			name = 'Git',
			b = { '<cmd>Telescope git_branches<cr>', 'Branches' },
			s = { '<cmd>Telescope git_status<cr>', 'Status' },
			c = { '<cmd>Telescope git_bcommits<cr>', 'Local commits' },
			C = { '<cmd>Telescope git_commits<cr>', 'Commits' },
			d = { '<cmd>DiffviewOpen<cr>', 'Diffview' },
      l = { '<cmd>G log --oneline --decorate --graph -50', 'Small log (50)' },
      L = { '<cmd>G log --oneline --decorate --graph', 'Log' },
			n = {
				name = 'Neogit',
				o = { '<cmd>Neogit<cr>', 'Open' },
				l = { '<cmd>Neogit log<cr>', 'Log' },
      },
      h = {
        name = "Github",
        c = {
          name = "Commits",
          c = { "<cmd>GHCloseCommit<cr>", "Close" },
          e = { "<cmd>GHExpandCommit<cr>", "Expand" },
          o = { "<cmd>GHOpenToCommit<cr>", "Open To" },
          p = { "<cmd>GHPopOutCommit<cr>", "Pop Out" },
          z = { "<cmd>GHCollapseCommit<cr>", "Collapse" },
        },
        i = {
          name = "Issues",
          p = { "<cmd>GHOpenIssue<cr>", "Preview" },
        },
        l = {
          name = "Litee",
          t = { "<cmd>LTPanel<cr>", "Toggle Panel" },
        },
        r = {
          name = "Review",
          b = { "<cmd>GHStartReview<cr>", "Begin" },
          c = { "<cmd>GHCloseReview<cr>", "Close" },
          d = { "<cmd>GHDeleteReview<cr>", "Delete" },
          e = { "<cmd>GHExpandReview<cr>", "Expand" },
          s = { "<cmd>GHSubmitReview<cr>", "Submit" },
          z = { "<cmd>GHCollapseReview<cr>", "Collapse" },
        },
        p = {
          name = "Pull Request",
          c = { "<cmd>GHClosePR<cr>", "Close" },
          d = { "<cmd>GHPRDetails<cr>", "Details" },
          e = { "<cmd>GHExpandPR<cr>", "Expand" },
          o = { "<cmd>GHOpenPR<cr>", "Open" },
          p = { "<cmd>GHPopOutPR<cr>", "PopOut" },
          r = { "<cmd>GHRefreshPR<cr>", "Refresh" },
          t = { "<cmd>GHOpenToPR<cr>", "Open To" },
          z = { "<cmd>GHCollapsePR<cr>", "Collapse" },
        },
        t = {
          name = "Threads",
          c = { "<cmd>GHCreateThread<cr>", "Create" },
          n = { "<cmd>GHNextThread<cr>", "Next" },
          t = { "<cmd>GHToggleThread<cr>", "Toggle" },
        },
      },
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
			H = { '<cmd>hide<cr>', 'Hide' },
			p = { '<cmd>BufferLineTogglePin<cr>', 'Toggle pin' },
			P = {
				name = 'Pick',
				p = { '<cmd>BufferLinePick<cr>', 'Open' },
				c = { '<cmd>BufferLinePickClose<cr>', 'Close' }
			}
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
        [' '] = { '<cmd>e $MYVIMRC<cr>', 'Open config'},
				y = { '<cmd>%y<cr>', 'Yank buffer'},
				e = { '<cmd>NvimTreeToggle<cr>', 'Open file tree' },
				["ss"] = { '<cmd>w<cr><cmd>so %<cr>', 'Source current file' },
				S = { '<cmd>so ~/AppData/Local/nvim/after/ftplugin/cpp.lua<cr>', 'Source snippets' },
				w = { '<cmd>w<cr>', 'Save' },
				W = { '<cmd>w!<cr>', 'Force save' },
				q = { '<cmd>q<cr>', 'Save and quit' },
				Q = { '<cmd>q!<cr>', 'Force save and quit' },
				n = neovide_mappings,
				b = buffer_mappings,
				a = neogen_mappings,
				l = lsp_mappings,
				s = telescope_mappings,
				t = terminal_mappings,
				g = git_mappings,
				p = packer_mappings,
				i = iswap_mappings
			},
			{ prefix = '<leader>' }
		)

		local visual_refactoring_mappings = {
			name = 'Refactoring',
			e = {
				name = 'Extract',
				f = { [[ <esc><cmd>lua require('refactoring').refactor('Extract Function')<cr> ]], 'Function' },
				F = { [[ <esc><cmd>lua require('refactoring').refactor('Extract Function To File')<cr> ]], 'Function to other file' },
				v = { [[ <esc><cmd>lua require('refactoring').refactor('Extract Variable')<cr> ]], 'Variable' },
			},
			i = { [[ <esc><cmd>lua require('refactoring').refactor('Inline varaible')<cr> ]], 'Inline variable' },
			d = {
				name = 'Debug',
				v = { [[ <cmd>lua require('refactoring').debug.print_var({})<cr> ]], 'Variable' },
			}
		}

		wk.register(
			{
				r = visual_refactoring_mappings,
        n = '<cmd>norm! @a<cr>'
			},
			{ prefix = '<leader>', mode = 'v' }
		)

	end
}
