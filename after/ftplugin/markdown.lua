local ls = require 'luasnip'
local snippet = ls.snippet
local text = ls.text_node
local func = ls.function_node
local insert = ls.insert_node
local fmt = require 'luasnip.extras.fmt'.fmt

ls.add_snippets(
  'fennel',
	{
		snippet(
			'link',
			{
				text('['),
				insert(1),
				text(']('),
				func(function(_, snip)
					return snip.env.TM_SELECTED_TEXT[1] or {}
				end, {}),
				text(')'),
				insert(0),
			}
		)
	}
)
