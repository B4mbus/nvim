return {
	'neovim/nvim-lspconfig',
	config = function()
		local lsp = require 'lspconfig'

		local custom_on_attach =  function(client, bufnr)
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
			keymap('n', '<space>rn', vim.lsp.buf.rename, common)
			keymap('n', 'gr', vim.lsp.buf.references, common)
			keymap('n', '<space>e', vim.diagnostic.open_float, common)
		end

		local client_capabilities = vim.lsp.protocol.make_client_capabilities()
		local capabilities = require 'cmp_nvim_lsp'.update_capabilities(client_capabilities)

		local default_config = {
			capabilities = capabilities,
			on_attach = custom_on_attach
		}


		lsp.clangd.setup {
			on_attach = custom_on_attach,
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
		}

		lsp.hls.setup {
			on_attach = custom_on_attach
		}

		-- Disable virtual text so that it doesn't collide with lsp_lines
		vim.diagnostic.config { virtual_text = false }
	end
}
