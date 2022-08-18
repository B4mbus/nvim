local augroup = function(name)
	vim.api.nvim_create_augroup(name, { clear = true })
end
local autocmd = vim.api.nvim_create_autocmd

autocmd(
	{ 'VimEnter' },
	{
		group = augroup('init'),
		pattern = '*',
		callback = function()
			if #vim.v.argv <= 2 then
				if not vim.fn.isdirectory(vim.g.starting_directory) then
					vim.notify(string.format([[[ERROR] Directory "%s" doesnt exist!]], vim.g.starting_directory), vim.log.levels.ERROR)
				end

				vim.api.nvim_set_current_dir(vim.g.starting_directory)
			end
		end
	}
)

autocmd(
	{ 'BufEnter', 'BufWinEnter', 'BufNew' },
	{
		group = augroup('haskell_thingies'),
		pattern = '*.hs',
		command = 'setlocal expandtab'
	}
)

autocmd(
	{ 'BufEnter', 'BufWinEnter', 'BufNew' },
	{
		group = augroup('react_markdown_shit'),
		pattern = '*.mdx',
		command = 'setlocal ft=jsx'
	}
)

autocmd(
	{ 'CursorHold' },
	{
		group = augroup('automatic_file_refreshing'),
		pattern = '*',
		command = 'checktime'
	}
)

autocmd(
	{ 'BufWritePost', 'BufEnter', 'FocusGained', 'ShellCmdPost', 'VimResume'  },
	{
		group = augroup('neogit_automatic_refreshing'),
		pattern = '*',
		command = [[ call neogit#refresh_manually(expand('<afile>')) ]]
	}
)
