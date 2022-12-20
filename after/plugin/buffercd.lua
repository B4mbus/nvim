local ok, buffercd = pequire('buffercd')

if not ok then
  vim.notify('Could not load the "buffercd" plugin')
  return
end

buffercd.setup()
