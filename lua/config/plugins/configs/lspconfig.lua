return {
	'neovim/nvim-lspconfig',
	config = function()
		local lsp = require('lspconfig')

		local custom_on_attach =  function(client, bufnr)
			require('nvim-navic').attach(client, bufnr)
			require('lsp_signature').on_attach({
				bind = true,
				handler_opts = {
					border = 'rounded'
				}
			}, bufnr)

			local keymap = vim.keymap.set
			local common = { buffer = bufnr, noremap = true, silent = true }

      local preview_location_callback = function(_, result, method, _)
        if result == nil or vim.tbl_isempty(result) then
          vim.lsp.log.info(method, 'No location found')
          return nil
        end

        if vim.tbl_islist(result) then
          vim.lsp.util.preview_location(result[1])
        else
          vim.lsp.util.preview_location(result)
        end
      end

      local peek_definition = function()
        local params = vim.lsp.util.make_position_params()
        return vim.lsp.buf_request(0, 'textDocument/definition', params, preview_location_callback)
      end

      keymap('n', 'gp', peek_definition)
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

		local capabilities = require('cmp_nvim_lsp').default_capabilities()

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
			vim.tbl_deep_extend('keep', sumneko_lua_settings, default_config)
		)

		lsp.hls.setup(default_config)

		-- Disable virtual text so that it doesn't collide with lsp_lines
		vim.diagnostic.config {
			update_in_insert = false,
			virtual_text = false
		}
	end
}
