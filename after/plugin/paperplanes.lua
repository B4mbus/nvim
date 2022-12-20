local ok, paperplanes = pequire('paperplanes')

if ok then
  paperplanes.setup({
    register = '+',
    provider = 'paste.rs',
    provider_options = {},
    notifier = vim.notify
  })
end
