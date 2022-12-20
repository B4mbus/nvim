local ok, notify = pequire('notify')
if not ok then
  vim.notify('Could not load the "notify" plugin')
  return
end

notify.setup({
  timeout = 1000,
  stages = "slide",
  top_down = false,
  background_colour = "NormalFloat",

  max_width = function()
    return math.floor(vim.o.columns * 0.8)
  end,
  max_height = function()
    return math.floor(vim.o.lines * 0.8)
  end,
  render = function(...)
    local notif = select(2, ...)
    local style = notif.title[1] == "" and "minimal" or "default"
    require("notify.render")[style](...)
  end,
})
vim.notify = notify

local ok, telescope = pequire('telescope')
if ok then telescope.load_extension('notify') end
