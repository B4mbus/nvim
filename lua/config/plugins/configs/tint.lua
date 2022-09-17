return {
  'levouh/tint.nvim',
  config = function ()
    require 'tint'.setup {
      bg = false,
      amt = -60,
      window_ignore_function = function(winid)
        local bufid = vim.api.nvim_win_get_buf(winid)
        local buftype = vim.api.nvim_buf_get_option(bufid, "buftype")
        local floating = vim.api.nvim_win_get_config(winid).relative ~= ""

        return
          buftype == "terminal"
          or buftype == "nofile"
          or floating
      end
    }
  end
}
