local use = function(name)
	local plugin_path = 'config.plugins.configs.' .. name
	local status, data = pcall(require, plugin_path)

	if status then
		return data
	else
		vim.notify(string.format('[ERROR] Cannot find plugin "%s".', name), vim.log.levels.ERROR)
		return nil
	end
end

local plugins = {
	'wbthomason/packer.nvim',

	use 'notify',
	use 'todo-comments',
  use 'leap',
	use 'indent-blankline',
	use 'nvim-tree',
	use 'nvim-colorizer',
	use 'fidget',
	use 'true-zen',
	use 'nvim-treesitter',
	use 'treesitter-textobjects',
	use 'treesitter-textsubjects',
	use 'treesitter-context',
  use 'treesitter-commentstring',
	use 'lsp_lines',
	use 'comment',
	use 'gitsigns',
	use 'autopairs',
	use 'nvim-surround',
	use 'bufferline',
	use 'scope',
	use 'telescope',
  use 'telescope-file-browser',
	use 'lsp_signature',
	use 'nvim-cmp',
	use 'lspconfig',
	use 'refactoring',
	use 'navic',
	use 'which-key',
	use 'smart-splits',
	use 'project',
	use 'iswap',
	use 'cosmic-ui',
	use 'buffercd',
	use 'stay-in-place',
	use 'text-case',
	use 'decay',
	use 'neogit',
	use 'diffview',
	use 'inc-rename',
	use 'luasnip',
	use 'neogen',
  use 'nvim-ts-autotag',
  use 'autolist',
  use 'dirbuf',
  use 'pantran',
  use 'gh',
  use 'spread',

	-- Meta
  'ldelossa/litee.nvim',
	'antoinemadec/FixCursorHold.nvim',
	'nvim-lua/plenary.nvim',
	'nvim-lua/popup.nvim',
	'kevinhwang91/promise-async',
	'tpope/vim-repeat',
	'rktjmp/lush.nvim',
	'MunifTanjim/nui.nvim',

	'hrsh7th/cmp-nvim-lsp-document-symbol',
	'hrsh7th/cmp-nvim-lua',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-nvim-lsp',

  'tommcdo/vim-exchange',
  'gabrielpoca/replacer.nvim',
  'nocksock/bloop.nvim',
  'zah/nim.vim',
  'projekt0n/github-nvim-theme' ,
  'rafamadriz/friendly-snippets',
  'jose-elias-alvarez/typescript.nvim',
  'mattn/emmet-vim',
  'tpope/vim-fugitive',
	'antoyo/vim-licenses',
	'AndrewRadev/switch.vim',
	'p00f/clangd_extensions.nvim',
	'm-demare/hlargs.nvim',
	'kyazdani42/blue-moon',
	'romainl/vim-cool',
	'onsails/lspkind.nvim',
	'famiu/bufdelete.nvim',
	'andymass/vim-matchup',
	'rebelot/kanagawa.nvim',
	'NvChad/base46',
	'editorconfig/editorconfig-vim',
	'mcauley-penney/tidy.nvim',
	'F:/prv/dev/projects/oxocarbon-lua.nvim',
	'kyazdani42/nvim-web-devicons',

	'lewis6991/impatient.nvim',
}

local packer = require 'packer'

packer.startup {
	function(use)
    use {
      'F:\\prv\\dev\\projects\\nvim-headband',
      after = 'nvim-web-devicons'
    }
		for _, plugin in ipairs(plugins) do
			if plugin then
				use(plugin)
			end
		end
	end,
	config = {
		display = {
			open_fn = function()
				return require 'packer.util'.float({ border = 'single' })
			end
		}
	}
}

vim.cmd.packadd 'nvim-web-devicons'
vim.cmd.packadd 'nvim-headband'

-- local color = '#ffaaee'
-- vim.api.nvim_set_hl(0, 'BubblesFront', { fg = color })
-- vim.api.nvim_set_hl(0, 'BubblesBack', { bg = color })
-- vim.api.nvim_set_hl(0, 'NvimHeadbandPath', { bg = color })
-- vim.api.nvim_set_hl(0, 'NvimHeadbandFilename', { fg = '#000000', bg = color })
--
-- local opts = {
--   bg = color,
--   background = color
-- }
--
-- local file_icons_hls = vim.fn.getcompletion('NvimHeadbandFileIcon', 'highlight')
-- for _, hl in ipairs(file_icons_hls) do
--   local format_hl = function(hl_dec)
--     return vim.fn.printf('#%x', hl_dec)
--   end
--
--   local original_hl_opts = vim.api.nvim_get_hl_by_name(hl, true)
--   for name, val in pairs(original_hl_opts) do
--     original_hl_opts[name] = format_hl(val)
--   end
--
--   local extended_hl = vim.tbl_extend('force', original_hl_opts, opts)
--   vim.api.nvim_set_hl(0, hl, extended_hl)
-- end
--
-- vim.api.nvim_set_hl(0, 'NvimHeadbandFilename', { fg = '#000000', bg = color })
--
-- local reverse_arrow = require 'nvim-headband.symbols'.reverse_nice_arrow
-- local bubbles_wrap = { '%#BubblesFront#%##%#BubblesBack#', '%#BubblesFront#%##' }

require 'nvim-headband'.setup {
  file_section = {
    -- wrap = bubbles_wrap
  },

  location_section = {
    -- wrap = bubbles_wrap,
    --
    -- separator = reverse_arrow,
    --
    -- empty_symbol = '',
    --
    -- position = 'right',
  }
}
