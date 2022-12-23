local ok, wk = pequire('which-key')

if not ok then
  vim.notify('Could not load the "which-key" plugin')
end

local ok_symbols, symbols = pequire('b4mbus.symbols')

if not ok then
  vim.notify('Could not load symbols for which key')
  return
end

wk.setup({
  window = {
    border = 'single'
  },
  icons = {
    separator = '⸬',
    group = symbols.horizontal_ellipsis .. ' '
  },
  show_help = false,
  show_keys = false
})

local telescope_mappings = {
  name = 'Telescope',
  f = { '<cmd>Telescope find_files<cr>', 'Find files' },
  F = { '<cmd>Telescope file_browser<cr>', 'File browser' },
  g = { '<cmd>Telescope live_grep<cr>', 'Live grep' },
  h = { '<cmd>Telescope help_tags<cr>', 'Help' },
  k = { '<cmd>Telescope keymaps<cr>', 'Mappings' },
  c = { '<cmd>Telescope commands<cr>', 'Commands' },
  C = { '<cmd>Telescope find_files search_dirs=~/.config<cr>', 'Commands' },
  H = { '<cmd>Telescope highlights<cr>', 'Highlights' },
  p = { '<cmd>Telescope projects<cr>', 'Projects' },
  b = { '<cmd>Telescope buffers<cr>', 'Buffers' },
  r = { '<cmd>Telescope resume<cr>', 'Resume' },
  o = { '<cmd>Telescope oldfiles<cr>', 'Oldfiles' }
}

local terminal_mappings = {
  name = 'Terminal',
  t = { '<cmd>tabnew +term<cr>', 'Open terminal in new tab' },
  v = { '<cmd>vnew +term<cr>', 'Open terminal in vsplit' },
  n = { '<cmd>new +term<cr>', 'Open terminal in split' },
  c = { '<cmd>term<cr>', 'Open terminal in current buffer' },
}

local lsp_mappings = {
  name = 'LSP',
  ['<space>'] = {
    name = 'Meta',
    i = { '<cmd>LspInfo<cr>', 'Info' },
    l = { '<cmd>LspLog<cr>', 'Log' },
    r = { '<cmd>LspRestart<cr>', 'Restart' },
    s = { '<cmd>LspStart<cr>', 'Start' },
    S = { '<cmd>LspStop<cr>', 'Stop' }
  },
  c = {
    name = 'Calls',
    i = { '<cmd>Telescope lsp_incoming_calls<cr>', 'Incoming'},
    o = { '<cmd>Telescope lsp_outgoing_calls<cr>', 'Outgoing'},
  },
  R = { '<cmd>Telescope lsp_references<cr>', 'References' },
  a = { '<cmd>lua require "cosmic-ui".code_actions()<cr>', 'Code actions' },
  d = { '<cmd>Telescope lsp_definitions<cr>', 'Definitions' },
  D = { '<cmd>lua vim.diagnostic.open_float()<cr>', 'Diagnostics float' },
  i = { '<cmd>Telescope lsp_implementations<cr>', 'Implementations' },
  s = { '<cmd>Telescope lsp_document_symbols<cr>', 'Local symbols' },
  S = { '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>', 'Symbols' },
  l = { '<cmd>lua require "lsp_lines".toggle()<cr>', 'Toggle lsp_lines' },
  v = {
    function()
      local opts = {
        prefix = '◉ '
      }

      local virtual_text_enabled = vim.diagnostic.config().virtual_text

      vim.diagnostic.config({
        virtual_text = (not virtual_text_enabled) and opts or false
      })
    end,
    'Toggle virtual_text',
  }
}

local neogen_mappings = {
  name = 'Neogen',
  a = { function() require 'neogen'.generate() end, 'Generate' },
  f = { function() require 'neogen'.generate { type = 'func' } end, 'Generate for function' },
  t = { function() require 'neogen'.generate { type = 'type' } end, 'Generate for type' },
  c = { function() require 'neogen'.generate { type = 'class' } end, 'Generate for class' },
  F = { function() require 'neogen'.generate { type = 'file' } end, 'Generate for file' },
}

local git_mappings = {
  name = 'Git',
  b = { '<cmd>G branch<cr>', 'Branches' },
  s = { '<cmd>Telescope git_status<cr>', 'Status' },
  c = { '<cmd>Telescope git_bcommits<cr>', 'Local commits' },
  C = { '<cmd>Telescope git_commits<cr>', 'Commits' },
  d = { '<cmd>DiffviewOpen<cr>', 'Diffview' },
  l = { '<cmd>G log --oneline --decorate --graph -50<cr>', 'Small log (50)' },
  L = { '<cmd>G log --oneline --decorate --graph<cr>', 'Log' },
}

local buffer_mappings = {
  name = 'Buffers',
  l = { '<cmd>BufferLineCloseRight<cr>', 'Close to the right' },
  h = { '<cmd>BufferLineCloseLeft<cr>', 'Close to the left' },
  H = { '<cmd>hide<cr>', 'Hide' },
  p = { '<cmd>BufferLineTogglePin<cr>', 'Toggle pin' },
  P = {
    name = 'Pick',
    p = { '<cmd>BufferLinePick<cr>', 'Open' },
    c = { '<cmd>BufferLinePickClose<cr>', 'Close' }
  }
}

local iswap_mappings = {
  name = 'ISwap',
  i = { '<cmd>ISwap<cr>', 'General' },
  w = { '<cmd>ISwapWith<cr>', 'With' },
  n = { '<cmd>ISwapNode<cr>', 'Node' },
  h = { '<cmd>ISwapNodeWithLeft<cr>', 'With left' },
  l = { '<cmd>ISwapNodeWithRight<cr>', 'With right' },
}

-- All the default keymapings
wk.register(
  {
    [' '] = { '<cmd>e $MYVIMRC<cr>', 'Open config'},
    y = { '<cmd>silent :%y<cr>', 'Yank buffer'},
    e = { '<c-w>v<cmd>Dirbuf<cr>', 'Open dirbuf' },
    ["ss"] = {
      function()
        if vim.bo.ft == 'vim' or vim.bo.ft == 'lua' then vim.cmd.so('%') end
      end,
      'Source current file'
    },
    w = { '<cmd>silent :w<cr>', 'Save' },
    W = { '<cmd>silent :w!<cr>', 'Force save' },
    q = { '<cmd>silent :q<cr>', 'Save and quit' },
    Q = { '<cmd>silent :q!<cr>', 'Force save and quit' },
    b = buffer_mappings,
    l = lsp_mappings,
    s = telescope_mappings,
    t = terminal_mappings,
    g = git_mappings,
    i = iswap_mappings
  },
  { prefix = '<leader>' }
)

local visual_refactoring_mappings = {
  name = 'Refactoring',
  e = {
    name = 'Extract',
    f = { [[ <esc><cmd>lua require('refactoring').refactor('Extract Function')<cr> ]], 'Function' },
    F = { [[ <esc><cmd>lua require('refactoring').refactor('Extract Function To File')<cr> ]], 'Function to other file' },
    v = { [[ <esc><cmd>lua require('refactoring').refactor('Extract Variable')<cr> ]], 'Variable' },
  },
  i = { [[ <esc><cmd>lua require('refactoring').refactor('Inline varaible')<cr> ]], 'Inline variable' },
  d = {
    name = 'Debug',
    v = { [[ <cmd>lua require('refactoring').debug.print_var({})<cr> ]], 'Variable' },
  }
}

wk.register(
{
  r = visual_refactoring_mappings,
  n = '<cmd>norm! @a<cr>'
},
{ prefix = '<leader>', mode = 'v' }
)
