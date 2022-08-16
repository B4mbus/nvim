return {
	'neovim/nvim-lspconfig',
	config = function()
		local lsp = require 'lspconfig'

		local tweak_capabilities = function(original_caps)
			local tweaked_capabilities = require 'cmp_nvim_lsp'.update_capabilities(original_caps)

			tweaked_capabilities.textDocument.foldingRange = { -- nvim ufo requires this
				dynamicRegistration = false,
				lineFoldingOnly = true
			}

			return tweaked_capabilities
		end

		local custom_on_attach =  function(client, bufnr)
			require 'nvim-navic'.attach(client, bufnr)
			require 'lsp_signature'.on_attach({
				bind = true,
				handler_opts = {
					border = 'rounded'
				}
			}, bufnr)
		
			local keymap = vim.keymap.set
			local common = { buffer = bufnr, noremap = true, silent = true }

			keymap('n', 'gD', vim.lsp.buf.declaration, common)
			keymap('n', 'gd', vim.lsp.buf.definition, common)
			keymap('n', 'gi', vim.lsp.buf.implementation, common)
			keymap('n', 'K', vim.lsp.buf.hover, common)
			require 'which-key'.register(
				{
					['lr'] = { '<cmd>lua require("cosmic-ui").rename()<cr>', 'LSP Rename' }
				},
				{ prefix = '<leader>' }
			)
		end

		local capabilities = tweak_capabilities(vim.lsp.protocol.make_client_capabilities())

		local default_config = {
			capabilities = capabilities,
			on_attach = custom_on_attach
		}

		local clangd_extensions = require 'clangd_extensions'.setup {
			server = vim.tbl_extend('keep', default_config, {
				cmd = { 
					'clangd',
					'--background-index',
					'--clang-tidy',
					'--completion-style=detailed',
					'--header-insertion=never',
					'--header-insertion-decorators',

					'--enable-config',
					'--pch-storage=disk',

					'--log=info',

					'--offset-encoding=utf-16'
				}
			}) ,
			extensions = {
				parameter_hints_prefix = '⫷',
				other_hints_prefix = '⫸',
				memory_usage = {
					border = 'rounded'
				}
			}
		}

		local lua_dev = require 'lua-dev'.setup {
			runtime_path = true,
			lspconfig = {
				cmd = 'lua-language-server'
			}
		}

		-- lsp.sumneko_lua.setup(vim.tbl_extend('force', lua_dev, default_config))

		lsp.hls.setup(default_config)

		-- Disable virtual text so that it doesn't collide with lsp_lines
		vim.diagnostic.config { 
			update_in_insert = false,
			virtual_text = false 
		}
	end
}
