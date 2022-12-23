local ok, treesitter = pequire('nvim-treesitter.configs')

if not ok then
  vim.notify('Could not load the "treesitter" plugin')
  return
end

treesitter.setup({
  ensure_installed = {
    'norg',
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
    disable = { 'comment' },
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
