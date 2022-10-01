local utils = require 'config.utils.utils'

utils.set_vim_globals {
	starting_directory = 'F:/prv',

  neovide_cursor_vfx_mode = '',
  neovide_remember_window_size = true,
  neovide_cursor_animation_length = 0,
  neovide_cursor_trail_length = 0,

	mapleader = ' '
}

_G.b4_fork = function(name)
  return 'F:\\prv\\dev\\forks\\' .. name
end
