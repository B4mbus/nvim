local augroup = function(name)
	vim.api.nvim_create_augroup(name, { clear = true })
end
local autocmd = vim.api.nvim_create_autocmd

autocmd(
	{ 'BufWritePost', 'BufEnter', 'FocusGained', 'ShellCmdPost', 'VimResume'  },
	{
		group = augroup('neogit_automatic_refreshing'),
		pattern = '*',
    command = [[ call neogit#refresh_manually(expand('<afile>')) ]]
  }
)
