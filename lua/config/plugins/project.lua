return {
	'ahmedkhalf/project.nvim',
	config = function()
		require 'project_nvim'.setup {
			patterns = { '.git', 'Makefile', 'CMakeLists.json', 'compile_commands.json', 'package.json' }
		}

		require 'telescope'.load_extension('projects')
	end
}
