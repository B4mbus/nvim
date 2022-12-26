local ok, bufferline = b4.pequire('bufferline')

if not ok then
  vim.notify('Could not load the "bufferline" plugin')
  return
end

bufferline.setup({
  highlights = {
    buffer_selected = {
      italic = false
    }
  },
  options = {
    close_icon = '',
    diagnostics = 'nvim_lsp',
    offsets = {
      {
        filetype = 'NvimTree',
        text = '📂 File Explorer',
        text_align = 'center'
      }
    }
  }
})
