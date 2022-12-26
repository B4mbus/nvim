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

-- yoinked and modified from folke's dots
autocmd(
  'BufWritePre',
  {
    group = augroup('auto_create_dir'),
    callback = function(event)
      local file = vim.loop.fs_realpath(event.match) or event.match

      vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")

      local backup = vim.fn.fnamemodify(file, ":p:~:h")

      backup = backup:gsub("[/\\]", "%%")
      vim.go.backupext = backup
    end,
  }
)

-- yoinked and modified from folke's dots
autocmd(
  'BufReadPre',
  {
    pattern = "*",
    callback = function()
      vim.api.nvim_create_autocmd(
        "FileType",
        {
          pattern = "<buffer>",
          once = true,
          callback = function()
            vim.cmd([[if &ft !~# 'commit\|rebase' && line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal! g`"' | endif]])
          end,
        }
      )
    end,
  }
)

-- yoinked and modified from folke's dots
autocmd(
  'TextYankPost',
  {
    pattern = '*',
    callback = function()
      vim.highlight.on_yank({ higroup = 'YankPost' })
    end
  }
)

-- yoinked and modified from folke's dots
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = {
    "qf",
    "help",
    "man",
    "notify",
    "lspinfo",
    "spectre_panel",
    "startuptime",
    "tsplayground",
    "PlenaryTestPopup",
  },
  callback = function()
    vim.api.nvim_buf_set_keymap(0, 'n', 'q', '<cmd>close<cr>', { silent = true })
    vim.api.nvim_buf_set_option(0, 'buflisted', false)
  end,
})
