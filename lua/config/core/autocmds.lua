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
  { 'BufEnter' },
  {
    group = augroup('maaaaaaaaaaaaaaaaaaan'),
    pattern = '*',
    callback = function ()
      vim.defer_fn(
        function()
          local bt = vim.api.nvim_buf_get_option(0, 'bt') == 'nofile'
          local ft = vim.api.nvim_buf_get_option(0, 'ft') == 'vim'
          local cmdwintype = vim.fn.getcmdwintype() == ':'

          if bt and ft and cmdwintype then

            vim.api.nvim_buf_set_keymap(0, 'n', 'q', ':q', { silent = true })
          end
        end,
        500
      )
    end
  }
)
