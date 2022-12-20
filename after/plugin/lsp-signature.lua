local ok, lsp_signature = pequire('lsp_signature')

if not ok then
  vim.notify('Could not load the "lsp_signature" plugin')
  return
end

lsp_signature.setup({
  hint_enable = false
})
