return {
  'cljoly/telescope-repo.nvim',
  config = function()
    require('telescope').load_extension('repo')
  end
}
