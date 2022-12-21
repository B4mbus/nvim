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
			-- if #vim.v.argv <= 2 then
			-- 	if not vim.fn.isdirectory(vim.g.starting_directory) then
			-- 		vim.notify(string.format([[[ERROR] Directory "%s" doesnt exist!]], vim.g.starting_directory), vim.log.levels.ERROR)
      --     return
			-- 	end

			-- 	vim.api.nvim_set_current_dir(vim.g.starting_directory)
			-- end
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

-- autocmd(
--   { 'BufWinLeave' },
--   {
--     group = augroup('save_folds'),
--     pattern = '*',
--     command = 'mkview'
--   }
-- )
-- 
-- autocmd(
--   { 'BufWinEnter' },
--   {
--     group = augroup('save_folds'),
--     pattern = '*',
--     command = 'silent loadview'
--   }
-- )
