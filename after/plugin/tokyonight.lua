local ok, tokyonight = pequire('tokyonight')

if not ok then
  vim.notify('Could not load the "colorizer" plugin')
  return
end

tokyonight.setup({
  on_highlights = function(hls)
    hls.CursorLineNr = {
      fg = '#ffffff',
      bold = true
    }
  end
})
