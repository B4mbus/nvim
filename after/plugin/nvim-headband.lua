local ok, headband = b4.pequire('nvim-headband')

if not ok then
  vim.notify('Could not load the "headband" plugin')
  return
end

headband.setup()
