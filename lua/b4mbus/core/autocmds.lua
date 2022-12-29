local api = vim.api
local augroup = function(name)
	api.nvim_create_augroup(name, { clear = true })
end
local autocmd = api.nvim_create_autocmd

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

			-- 	api.nvim_set_current_dir(vim.g.starting_directory)
			-- end
		end
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
      api.nvim_create_autocmd(
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
autocmd('FileType', {
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
    api.nvim_buf_set_keymap(0, 'n', 'q', '<cmd>close<cr>', { silent = true })
    api.nvim_buf_set_option(0, 'buflisted', false)
  end,
})

--[[ autocmd(
  'BufWinEnter',
  {
    pattern = '*',
    callback = function()
      local bt = api.nvim_buf_get_option(0, 'bt')
      if bt ~= '' then return end

      local lines = api.nvim_buf_get_lines(0, 0, -1, true)

      local current = 1
      local markers = {}

      for line_nr, line in ipairs(lines) do
        if line:find('{{{') then
          markers[current] = { mbeg = line_nr }
        elseif line:find('}}}') then
          if not markers[current] then
            b4.nerror('Unbalanced opening brackets.')
            return
          end
          markers[current].mend = line_nr
          current = current + 1
        end
      end

      -- Here we are sure the markers are set correctly
      for _, marker in ipairs(markers) do
        local foldcmd = (':%s,%sfold'):format(marker.mbeg, marker.mend)

        vim.cmd(foldcmd)
        vim.cmd(foldcmd .. 'open')
      end
    end
  }
) ]]
