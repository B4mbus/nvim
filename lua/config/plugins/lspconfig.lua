return {
	'neovim/nvim-lspconfig',
	config = function()
		local lsp = require 'lspconfig'

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
			keymap('n', 'K', vim.lsp.buf.hover, common)
			keymap('n', 'gi', vim.lsp.buf.implementation, common)
			keymap('n', 'gr', vim.lsp.buf.rename, common)
			keymap('n', 'gr', vim.lsp.buf.references, common)
		end

		local client_capabilities = vim.lsp.protocol.make_client_capabilities()
		local capabilities = require 'cmp_nvim_lsp'.update_capabilities(client_capabilities)

		local default_config = {
			capabilities = capabilities,
			on_attach = custom_on_attach
		}


		lsp.clangd.setup(
			vim.tbl_extend('keep', default_config, {
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
			})
		)

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
