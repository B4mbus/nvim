return {
  'abecodes/tabout.nvim',
  wants = { 'nvim-treesitter' },
  after = { 'nvim-cmp' },
  config = function ()
    require('tabout').setup {
      tabkey = '<Tab>',
      backwards_tabkey = '<S-Tab>',
      act_as_tab = true,
      act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
      default_tab = '<C-t>', -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
      default_shift_tab = '<C-d>', -- reverse shift default action,
      enable_backwards = true, -- well ...
      completion = false, -- if the tabkey is used in a completion pum
      tabouts = {
        { open = "'", close = "'" },
        { open = '"', close = '"' },
        { open = '`', close = '`' },
        { open = '(', close = ')' },
        { open = '[', close = ']' },
        { open = '{', close = '}' },
        { open = '*', close = '*' },
        { open = '_', close = '_' },
      },
      ignore_beginning = false,
    }
  end
}
