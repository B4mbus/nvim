vim.api.nvim_create_user_command(
  'Hologram',
  function()
    local ok, image = pequire('hologram.image')
    if ok then
      vim.api.nvim_buf_set_lines(vim.api.nvim_get_current_buf(), 1, -1, false, {''})

      image:new(
        vim.fn.expand('%:p'),
        {}
      ):display(1, 0, vim.api.nvim_get_current_buf(), {})

      vim.bo.modified = false
      vim.bo.modifiable = false
    end
  end,
  {}
)
