local ok, treesitter = pequire('nvim-treesitter.configs')

if not ok then
  vim.notify('Could not load the "treesitter" plugin')
  return
end

treesitter.setup({
  ensure_installed = {
    'norg',
    'norg_meta',
    'cpp',
    'json',
    'html',
    'help',
    'lua',
    'fennel',
    'query',
    'markdown',
    'markdown_inline',
    'haskell',
    'vim',
    'regex',
    'bash',
    'fish',
  },

  sync_install = false,

  highlight = {
    enable = true,
    disable = function(lang, buf)
      if lang == 'comment' then return true end

      local max_filesize = 10 * 1024 -- 10 KB
      local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
      if ok and stats and stats.size > max_filesize then
        return true
      end
    end,
    additional_vim_regex_highlighting = false,
  },

  matchparen = {
    enable = true
  },

  indent = {
    enable = true
  },

  playground = {
    enable = true,
  },

  context_commentstring = {
    enable = true,
    enable_autocmd = false
  }
})
