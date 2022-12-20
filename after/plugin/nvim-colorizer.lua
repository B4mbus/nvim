local ok, colorizer = pequire('colorizer')

if not ok then
  vim.notify('Could not load the "colorizer" plugin')
  return
end

colorizer.setup()
