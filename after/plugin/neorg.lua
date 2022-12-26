local ok, neorg = b4.pequire('neorg')

if not ok then
  vim.notify('Could not load the "neorg" plugin')
  return
end

neorg.setup({
  load = {
    ['core.defaults'] = {},
    ['core.export'] = {},
    ['core.export.markdown'] = {},
    ['core.norg.completion'] = { config = { engine = 'nvim-cmp' } },
    ['core.norg.concealer'] = {
      config = { dim_code_blocks = { conceal = false } },
    }
  }
})
