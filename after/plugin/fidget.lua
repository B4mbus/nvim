local ok, fidget = pequire('fidget')

if not ok then
  vim.notify('Could not load the "fidget" plugin')
  return
end

fidget.setup()
