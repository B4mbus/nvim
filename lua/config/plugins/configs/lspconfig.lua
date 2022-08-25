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
					l = {
						r = { [[ <cmd>lua require('cosmic-ui').rename()<cr> ]], 'LSP Rename' }
					}
				},
				{ prefix = '<leader>' }
			)
		end

		local capabilities = tweak_capabilities(vim.lsp.protocol.make_client_capabilities())

		local default_config = {
			capabilities = capabilities,
			on_attach = custom_on_attach
		}

		require 'clangd_extensions'.setup {
			server = vim.tbl_extend('keep', default_config, {
				cmd = {
					'clangd',
					'--background-index',
					'--clang-tidy',
					'--completion-style=detailed',
					'--header-insertion=never',
					'--header-insertion-decorators',

					'--compile-commands-dir=F:\\prv\\dev\\forks\\rigc-lang',

					'--enable-config',
					'--pch-storage=disk',

					'--log=info',
				}
			}) ,
			inlay_hints = {
				show_parameter_hints = false
			},
			extensions = {
				other_hints_prefix = '⫸',
				memory_usage = {
					border = 'rounded'
				}
			}
		}

		local sumneko_lua_settings = {
			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
					},
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = {
							vim.fn.stdpath('data') .. "/site/pack/packer/opt/emmylua-nvim",
							vim.fn.stdpath('config'),
						},
						maxPreload = 2000,
						preloadFileSize = 50000,
					},
				},
			}
		}

		lsp.sumneko_lua.setup(
			vim.tbl_extend('force', sumneko_lua_settings, default_config)
		)

		lsp.hls.setup(default_config)

    require 'typescript'.setup {
      disble_commands = false,
      server = default_config
    }

		-- Disable virtual text so that it doesn't collide with lsp_lines
		vim.diagnostic.config {
			update_in_insert = false,
			virtual_text = false
		}
	end
}
