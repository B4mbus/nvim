-- Switch switches

vim.b.switch_custom_definitions = {
	{ ' const&', '&'  }
}

local ls = require("luasnip")
local snippet = ls.snippet
local indent = ls.indent_snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamic = ls.dynamic_node
local restore = ls.restore_node

local ac_snippet = snippet(
	'ac',
	{
		text 'auto const ',
		choice(
			1,
			{
				insert(1, '<name>'),
				{
					insert(1, '<name>'),
					text ' = ',
					insert(2, '<value>'),
					text ';',
				}
			}
		)
	}
)


ls.add_snippets(
  'cpp',
	{
		ac_snippet,
	}
)
