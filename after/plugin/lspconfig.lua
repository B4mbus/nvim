local neodev_ok, neodev = pequire("neodev")
neodev.setup({
  experimental = {
    pathStrict = true,
  },
  library = {
    runtime = '~/Executable/storage/nvim-linux64/share/nvim/runtime',
  },
})

if not neodev_ok then
  vim.notify('Could not load the "neodev" plugin')
  return
end

local lsp_ok, lsp = pequire('lspconfig')

if not lsp_ok then
  vim.notify('Could not load the "lsp" plugin')
  return
end

require('lspconfig.configs').fennel_language_server = ({
  default_config = {
    -- replace it with true path
    cmd = { '/home/b4mbus/.cargo/bin/fennel-language-server' },
    filetypes = { 'fennel' },
    single_file_support = true,
    -- source code resides in directory `fnl/`
    root_dir = lsp.util.root_pattern("fnl"),
    settings = {
      fennel = {
        workspace = {
          -- If you are using hotpot.nvim or aniseed,
          -- make the server aware of neovim runtime files.
          library = vim.api.nvim_list_runtime_paths(),
        },
        diagnostics = {
          globals = { 'vim' },
        },
      },
    },
  },
})

local custom_on_attach =  function(client, bufnr)
  require('nvim-navic').attach(client, bufnr)
  require('lsp_signature').on_attach(
    {
      bind = true,
      handler_opts = { border = 'rounded' },
    },
    bufnr
  )

  local wk_ok, wk = pequire('which-key')
  if wk_ok then
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
      r = { function() vim.lsp.buf.rename() end, 'Toggle lsp_lines' },
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

    wk.register(
      {
        l = lsp_mappings,
        [']d'] =  { vim.diagnostic.goto_prev, 'Goto next diag' },
        ['[d'] =  { vim.diagnostic.goto_next, 'Goto prev diag' },
        g = {
          D = { vim.lsp.buf.declaration, 'Declaration' },
          d = { vim.lsp.buf.definition, 'Definition' },
          i = { vim.lsp.buf.implementation, 'Implementation' }
        }
      },
      { prefix = '<leader>' }
    )
  end
end

local server_caps = vim.lsp.protocol.make_client_capabilities()
local caps = require('cmp_nvim_lsp').default_capabilities(server_caps)
caps.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true
}

local default_config = {
  capabilities = caps,
  on_attach = custom_on_attach
}

lsp.clangd.setup(
  vim.tbl_extend('keep', default_config, {
    cmd = {
      'clangd',
      '--background-index',
      '--clang-tidy',
      '--completion-style=detailed',
      '--header-insertion=never',
      '--header-insertion-decorators',

      '--compile-commands-dir=F:\\prv\\dev\\forks\\rigc-lang',

      '--enable-config',
      '--pch-storage=disk',

      '--log=info',
    }
  })
)

local sumneko_lua_settings = {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          vim.fn.stdpath('data') .. "/site/pack/packer/opt/emmylua-nvim",
          vim.fn.stdpath('config'),
        },
        maxPreload = 2000,
        preloadFileSize = 50000,
      },
    },
  }
}

lsp.sumneko_lua.setup(
  vim.tbl_deep_extend('keep', sumneko_lua_settings, default_config)
)

lsp.hls.setup(default_config)
lsp.tsserver.setup(default_config)
lsp.fennel_language_server.setup(default_config)
lsp.teal_ls.setup(default_config)

vim.diagnostic.config {
  update_in_insert = false,
  virtual_text = false
}
