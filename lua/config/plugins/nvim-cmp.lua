return {
	'hrsh7th/nvim-cmp',
	config = function()
		local cmp = require 'cmp'

		cmp.setup {
			enabled = function()
				local context = require 'cmp.config.context'
				if vim.api.nvim_get_mode().mode == 'c' then
					return true
				else
					return not context.in_treesitter_capture("comment") 
					and not context.in_syntax_group("Comment")
				end
			end,
			snippet = {
				expand = function(args)
					require 'luasnip'.lsp_expand(args.body)
				end
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert{
				['<C-d>'] = function(fallback)
					if cmp.visible() then
						cmp.mapping.scroll_docs(-4)
					else
						fallback()
					end
				end,
				['<C-u>'] = function(fallback)
					if cmp.visible() then
						cmp.mapping.scroll_docs(4)
					else
						fallback()
					end
				end,
				['<C-Space>'] = cmp.mapping.complete(),
				['<C-e>'] = cmp.mapping.abort(),
				['<CR>'] = cmp.mapping.confirm { select = true }, 
				['<Tab>'] = cmp.mapping.select_next_item(),
				['<S-Tab>'] = cmp.mapping.select_prev_item(),
			},
			sources = cmp.config.sources {
				{ name = 'nvim_lsp', keyword_length = 3},
				{ name = 'luasnip' },
				{ name = 'path' },
				{ name = 'buffer', keyword_length = 3}
			},
			formatting = {
				format = require 'lspkind'.cmp_format {
					mode = 'symbol',
					maxwidth = 40,
				}
			}
		}
	end
}
