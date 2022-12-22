local ok, project_nvim = pequire('project_nvim')

if not ok then
  vim.notify('Could not load the "project.nvim" plugin')
  return
end

project_nvim.setup({
  patterns = {
    '.git',
    'Makefile',
    'CMakeLists.json',
    'compile_commands.json',
    'package.json',
  }
})

require('telescope').load_extension('projects')
