vim.api.nvim_create_autocmd(
  { 'ColorScheme' },
  {
    pattern = '*',
    callback = function()
      local ok, colorizer = pequire('colorizer')

      if not ok then
        vim.notify('Could not load the "colorizer" plugin')
        return
      end

      package.loaded['colorizer'] = nil;
      colorizer.setup({
        user_default_options = {
          RGB = true, -- #RGB hex codes
          RRGGBB = true, -- #RRGGBB hex codes
          names = false, -- "Name" codes like Blue or blue
          RRGGBBAA = true, -- #RRGGBBAA hex codes
          AARRGGBB = false, -- 0xAARRGGBB hex codes
          rgb_fn = true, -- CSS rgb() and rgba() functions
          hsl_fn = true, -- CSS hsl() and hsla() functions
          css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
          css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
          mode = "background", -- Set the display mode.
          virtualtext = "■",
        },
      })
      colorizer.attach_to_buffer(0)
    end
  }
)
