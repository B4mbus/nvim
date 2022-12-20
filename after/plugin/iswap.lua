local ok, iswap = pequire('iswap')

if not ok then
  vim.notify('Could not load the "iswap" plugin')
  return
end

iswap.setup({
  autoswap = true
})
