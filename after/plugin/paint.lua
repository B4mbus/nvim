local ok, paint = b4.pequire('paint')
if not ok then
  vim.notify('Could not load the "paint" plugin')
  return
end

paint.setup({
  highlights = {
    {
      filter = { filetype = 'tmux'  },
      pattern = "%s*#%s*(%[.-]:)",
      hl = "@method",
    },
    {
      filter = { filetype = 'tmux'  },
      pattern = "%s*#%s*@(.*)",
      hl = "Constant",
    },
    {
      filter = { filetype = 'tmux'  },
      pattern = "<prefix>",
      hl = "@attribute",
    },
    {
      filter = { filetype = 'tmux'  },
      pattern = "<prefix> (%+)",
      hl = "@constructor",
    },
    {
      filter = { filetype = 'tmux'  },
      pattern = "<prefix> %+ (.+)",
      hl = "@character",
    },
  },
})
