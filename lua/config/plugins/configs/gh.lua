return {
  'ldelossa/gh.nvim',
  requires = { { 'ldelossa/litee.nvim' } },
  config = function ()
    require 'litee.lib'.setup()
    require 'litee.gh'.setup()
  end
}
