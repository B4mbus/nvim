-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\B4mbus\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\B4mbus\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\B4mbus\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\B4mbus\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\B4mbus\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  base46 = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\base46",
    url = "https://github.com/NvChad/base46"
  },
  ["blue-moon"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\blue-moon",
    url = "https://github.com/kyazdani42/blue-moon"
  },
  ["bufdelete.nvim"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\bufdelete.nvim",
    url = "https://github.com/famiu/bufdelete.nvim"
  },
  ["buffercd.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rbuffercd\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\buffercd.nvim",
    url = "https://github.com/tiagovla/buffercd.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\næ\1\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0004\4\3\0005\5\4\0>\5\1\4=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\3\ttext\23üìÇ File Explorer\rfiletype\rNvimTree\15text_align\vcenter\1\0\1\16diagnostics\rnvim_lsp\nsetup\15bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["clangd_extensions.nvim"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\clangd_extensions.nvim",
    url = "https://github.com/p00f/clangd_extensions.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-document-symbol"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp-document-symbol",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-document-symbol"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cosmic-ui"] = {
    config = { "\27LJ\2\n¡\1\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\0025\3\t\0005\4\b\0=\4\6\3=\3\n\2B\0\2\1K\0\1\0\17code_actions\1\0\0\1\0\1\nstyle\frounded\vrename\vborder\1\0\1\vprompt\bŒª \1\0\1\nstyle\frounded\1\0\1\17border_style\frounded\nsetup\14cosmic-ui\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cosmic-ui",
    url = "https://github.com/CosmicNvim/cosmic-ui"
  },
  decay = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\decay",
    url = "https://github.com/decaycs/decay.nvim"
  },
  ["diffview.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rdiffview\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vfidget\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nô\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\28current_line_blame_opts\1\0\3\ndelay\3d\14virt_text\2\18virt_text_pos\beol\1\0\1\23current_line_blame\1\nsetup\rgitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hlargs.nvim"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\hlargs.nvim",
    url = "https://github.com/m-demare/hlargs.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["inc-rename.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15inc_rename\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\inc-rename.nvim",
    url = "https://github.com/smjonas/inc-rename.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\né\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\31show_current_context_start\2\25show_current_context\2\25space_char_blankline\6 \nsetup\21indent_blankline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["iswap.nvim"] = {
    config = { "\27LJ\2\nD\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\rautoswap\2\nsetup\niswap\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\iswap.nvim",
    url = "https://github.com/mizlan/iswap.nvim"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lightspeed.nvim"] = {
    config = { "\27LJ\2\nq\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\25jump_to_unique_chars\1\0\0\1\0\1\19safety_timeout\3»\1\nsetup\15lightspeed\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\lightspeed.nvim",
    url = "https://github.com/ggandor/lightspeed.nvim"
  },
  ["lsp_lines.nvim"] = {
    config = { "\27LJ\2\ns\0\0\3\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0005\2\6\0B\0\2\1K\0\1\0\1\0\1\18virtual_lines\1\vconfig\15diagnostic\bvim\nsetup\14lsp_lines\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lsp_lines.nvim",
    url = "https://github.com/Maan2003/lsp_lines.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\16hint_enable\1\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  luasnip = {
    config = { "\27LJ\2\n1\0\0\5\1\2\0\6-\0\0\0006\2\0\0'\4\1\0B\2\2\0A\0\0\1K\0\1\0\0¿\fluasnip\frequire\20\1\1\2\0\1\0\0033\1\0\0002\0\0ÄL\1\2\0\0E\0\1\3\0\2\0\a9\1\0\0B\1\1\2\15\0\1\0X\2\2Ä9\1\1\0B\1\1\1K\0\1\0\19expand_or_jump\23expand_or_jumpable5\0\1\4\0\2\0\b9\1\0\0B\1\1\2\15\0\1\0X\2\3Ä9\1\1\0)\3ˇˇB\1\2\1K\0\1\0\tjump\rjumpableC\0\1\4\0\2\0\b9\1\0\0B\1\1\2\15\0\1\0X\2\3Ä9\1\1\0)\3\1\0B\1\2\1K\0\1\0\18change_choice\18choice_active’\5\1\0\v\0!\0A6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0009\2\4\0025\4\5\0004\5\0\b9\6\6\0015\a\n\0005\b\a\0004\t\3\0005\n\b\0>\n\1\t=\t\t\b=\b\v\a<\a\6\0059\6\f\0015\a\15\0005\b\r\0004\t\3\0005\n\14\0>\n\1\t=\t\t\b=\b\v\a<\a\6\5=\5\16\4B\2\2\0013\2\17\0006\3\18\0009\3\19\0039\3\20\0035\5\21\0'\6\22\0\18\a\2\0003\t\23\0B\a\2\0A\3\2\0016\3\18\0009\3\19\0039\3\20\0035\5\24\0'\6\25\0\18\a\2\0003\t\26\0B\a\2\0A\3\2\0016\3\18\0009\3\19\0039\3\20\0035\5\27\0'\6\28\0\18\a\2\0003\t\29\0B\a\2\0A\3\2\0016\3\0\0'\5\30\0B\3\2\0029\3\31\0035\5 \0B\3\2\1K\0\1\0\1\0\1\npaths\15./snippets\14lazy_load luasnip.loaders.from_vscode\0\n<c-l>\1\3\0\0\6i\6s\0\n<c-j>\1\3\0\0\6i\6s\0\n<c-k>\1\3\0\0\6i\6s\bset\vkeymap\bvim\0\rext_opts\1\0\0\1\3\0\0\b‚óè\tType\1\0\1\fhl_mode\fcombine\15insertNode\vactive\1\0\0\14virt_text\1\3\0\0\b‚óè\rOperator\1\0\1\fhl_mode\fcombine\15choiceNode\1\0\5\25store_selection_keys\n<c-s>\24delete_check_events\16InsertLeave\17updateevents\29TextChanged,TextChangedI\fhistory\2\24region_check_events'CursorMoved,CursorHold,InsertEnter\15set_config\vconfig\23luasnip.util.types\fluasnip\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\luasnip",
    url = "https://github.com/L3MON4D3/luasnip"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lush.nvim",
    url = "https://github.com/rktjmp/lush.nvim"
  },
  neogen = {
    config = { "\27LJ\2\n®\1\0\0\6\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\a\0005\4\5\0005\5\4\0=\5\6\4=\4\b\3=\3\t\2B\0\2\1K\0\1\0\14languages\blua\1\0\0\rtemplate\1\0\0\1\0\1\26annotation_convention\femmylua\1\0\1\19snippet_engine\fluasnip\nsetup\vneogen\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neogen",
    url = "https://github.com/danymat/neogen"
  },
  neogit = {
    config = { "\27LJ\2\nã\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\rsections\vrecent\1\0\0\1\0\1\vfolded\1\17integrations\1\0\0\1\0\1\rdiffview\2\nsetup\vneogit\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n¥\2\0\0\4\0\14\0'6\0\0\0009\0\1\0009\0\2\0B\0\1\0029\0\3\0\a\0\4\0X\0\3Ä+\0\2\0L\0\2\0X\0\28Ä6\0\0\0009\0\1\0009\0\5\0)\2\0\0'\3\6\0B\0\3\2\a\0\a\0X\0\3Ä+\0\1\0L\0\2\0X\0\17Ä6\0\b\0'\2\t\0B\0\2\0029\1\n\0'\3\v\0B\1\2\2\14\0\1\0X\1\5Ä9\1\f\0'\3\r\0B\1\2\2\19\1\1\0X\2\3Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0K\0\1\0\fComment\20in_syntax_group\fcomment\26in_treesitter_capture\23cmp.config.context\frequire\vprompt\fbuftype\24nvim_buf_get_option\6c\tmode\18nvim_get_mode\bapi\bvimC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequirev\0\1\a\0\a\0\0176\1\0\0009\1\1\0019\1\2\1B\1\1\2\6\1\3\0X\2\bÄ6\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0+\6\2\0B\2\4\1X\2\2Ä\18\2\0\0B\2\1\1K\0\1\0\6i\18nvim_feedkeys\bapi\5\19copilot#Accept\afn\bvimÀ\t\1\0\f\0G\0ä\0016\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0003\4\3\0=\4\5\0035\4\a\0003\5\6\0=\5\b\4=\4\t\0035\4\v\0005\5\n\0=\5\f\4=\4\r\0035\4\15\0005\5\14\0=\5\16\4=\4\17\0039\4\18\0009\4\19\0049\4\20\0045\6\26\0009\a\18\0005\t\22\0009\n\18\0009\n\21\nB\n\1\2=\n\23\t9\n\18\0009\n\24\nB\n\1\2=\n\25\tB\a\2\2=\a\27\0063\a\28\0=\a\29\0069\a\18\0009\t\18\0009\t\30\t)\v¸ˇB\t\2\0025\n\31\0B\a\3\2=\a \0069\a\18\0009\t\18\0009\t\30\t)\v\4\0B\t\2\0025\n!\0B\a\3\2=\a\"\0069\a\18\0009\a#\aB\a\1\2=\a$\0069\a\18\0009\a\21\aB\a\1\2=\a%\0069\a\18\0009\a&\a5\t'\0B\a\2\2=\a(\0069\a\18\0009\a)\aB\a\1\2=\a*\0069\a\18\0009\a+\aB\a\1\2=\a,\6B\4\2\2=\4\18\0039\4-\0009\4.\0044\6\5\0005\a/\0>\a\1\0065\a0\0>\a\2\0065\a1\0>\a\3\0065\a2\0>\a\4\6B\4\2\2=\4.\0035\0046\0006\5\0\0'\a3\0B\5\2\0029\0054\0055\a5\0B\5\2\2=\0057\4=\0048\0035\4B\0004\5\t\0009\6-\0009\0069\0069\6:\6>\6\1\0059\6-\0009\0069\0069\6;\6>\6\2\0059\6-\0009\0069\0069\6<\6>\6\3\0056\6\0\0'\b=\0B\6\2\2>\6\4\0059\6-\0009\0069\0069\6>\6>\6\5\0059\6-\0009\0069\0069\6?\6>\6\6\0059\6-\0009\0069\0069\6@\6>\6\a\0059\6-\0009\0069\0069\6A\6>\6\b\5=\5C\4=\4D\0035\4E\0=\4F\3B\1\2\1K\0\1\0\17experimental\1\0\1\15ghost_text\2\fsorting\16comparators\1\0\0\norder\vlength\14sort_text\tkind!clangd_extensions.cmp_scores\18recently_used\nexact\voffset\fcompare\15formatting\vformat\1\0\0\1\0\2\tmode\16symbol_text\rmaxwidth\3(\15cmp_format\flspkind\1\0\2\19keyword_length\3\3\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\tpath\1\0\2\19keyword_length\3\3\tname\rnvim_lsp\fsources\vconfig\f<S-Tab>\21select_prev_item\n<Tab>\21select_next_item\t<CR>\1\0\1\vselect\1\fconfirm\n<C-e>\14<C-Space>\rcomplete\n<C-u>\1\3\0\0\6i\6c\n<C-d>\1\3\0\0\6i\6c\16scroll_docs\n<C-f>\0\n<C-q>\1\0\0\6c\nclose\6i\1\0\0\nabort\vinsert\vpreset\fmapping\tview\fentries\1\0\0\1\0\2\20selection_order\16near_cursor\tname\vcustom\vwindow\18documentation\1\0\0\1\0\1\vborder\vsingle\fsnippet\vexpand\1\0\0\0\fenabled\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-headband"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18nvim-headband\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-headband",
    url = "F:\\prv\\dev\\projects\\nvim-headband"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nõ\1\0\1\4\0\6\0\n6\1\0\0'\3\1\0B\1\2\0029\1\2\1\18\3\0\0B\1\2\0029\2\3\0015\3\5\0=\3\4\2L\1\2\0\1\0\2\24dynamicRegistration\1\20lineFoldingOnly\2\17foldingRange\17textDocument\24update_capabilities\17cmp_nvim_lsp\frequireÃ\4\0\2\n\0 \0E6\2\0\0'\4\1\0B\2\2\0029\2\2\2\18\4\0\0\18\5\1\0B\2\3\0016\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\5\0005\5\6\0=\5\a\4\18\5\1\0B\2\3\0016\2\b\0009\2\t\0029\2\n\0025\3\v\0=\1\f\3\18\4\2\0'\6\r\0'\a\14\0006\b\b\0009\b\15\b9\b\16\b9\b\17\b\18\t\3\0B\4\5\1\18\4\2\0'\6\r\0'\a\18\0006\b\b\0009\b\15\b9\b\16\b9\b\19\b\18\t\3\0B\4\5\1\18\4\2\0'\6\r\0'\a\20\0006\b\b\0009\b\15\b9\b\16\b9\b\21\b\18\t\3\0B\4\5\1\18\4\2\0'\6\r\0'\a\22\0006\b\b\0009\b\15\b9\b\16\b9\b\23\b\18\t\3\0B\4\5\0016\4\0\0'\6\24\0B\4\2\0029\4\25\0045\6\29\0005\a\27\0005\b\26\0=\b\28\a=\a\30\0065\a\31\0B\4\3\1K\0\1\0\1\0\1\vprefix\r<leader>\6l\1\0\0\6r\1\0\0\1\3\0\0001 <cmd>lua require('cosmic-ui').rename()<cr> \15LSP Rename\rregister\14which-key\nhover\6K\19implementation\agi\15definition\agd\16declaration\bbuf\blsp\agD\6n\vbuffer\1\0\2\fnoremap\2\vsilent\2\bset\vkeymap\bvim\17handler_opts\1\0\1\vborder\frounded\1\0\1\tbind\2\14on_attach\18lsp_signature\vattach\15nvim-navic\frequireÙ\b\1\0\14\0004\1[6\0\0\0'\2\1\0B\0\2\0023\1\2\0003\2\3\0\18\3\1\0006\5\4\0009\5\5\0059\5\6\0059\5\a\5B\5\1\0A\3\0\0025\4\b\0=\3\t\4=\2\n\0046\5\0\0'\a\v\0B\5\2\0029\5\f\0055\a\18\0006\b\4\0009\b\r\b'\n\14\0\18\v\4\0005\f\16\0005\r\15\0=\r\17\fB\b\4\2=\b\19\a5\b\20\0=\b\21\a5\b\22\0005\t\23\0=\t\24\b=\b\25\aB\5\2\0015\5+\0005\6)\0005\a\27\0005\b\26\0=\b\28\a5\b\30\0005\t\29\0=\t\31\b=\b \a5\b&\0004\t\3\0006\n\4\0009\n!\n9\n\"\n'\f#\0B\n\2\2'\v$\0&\n\v\n>\n\1\t6\n\4\0009\n!\n9\n\"\n'\f%\0B\n\2\0?\n\0\0=\t'\b=\b(\a=\a*\6=\6,\0059\6-\0009\6\f\0066\b\4\0009\b\r\b'\n.\0\18\v\5\0\18\f\4\0B\b\4\0A\6\0\0019\6/\0009\6\f\6\18\b\4\0B\6\2\0016\6\0\0'\b0\0B\6\2\0029\6\f\0065\b1\0=\4\19\bB\6\2\0016\6\4\0009\0062\0069\6%\0065\b3\0B\6\2\1K\0\1\0\1\0\2\17virtual_text\1\21update_in_insert\1\15diagnostic\1\0\1\20disble_commands\1\15typescript\bhls\nforce\16sumneko_lua\rsettings\1\0\0\bLua\1\0\0\14workspace\flibrary\1\0\2\15maxPreload\3–\15\20preloadFileSize\3–Ü\3\vconfig'/site/pack/packer/opt/emmylua-nvim\tdata\fstdpath\afn\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\15extensions\17memory_usage\1\0\1\vborder\frounded\1\0\1\23other_hints_prefix\b‚´∏\16inlay_hints\1\0\1\25show_parameter_hints\1\vserver\1\0\0\bcmd\1\0\0\1\v\0\0\vclangd\23--background-index\17--clang-tidy --completion-style=detailed\29--header-insertion=never\"--header-insertion-decorators6--compile-commands-dir=F:\\prv\\dev\\forks\\rigc-lang\20--enable-config\23--pch-storage=disk\15--log=info\tkeep\15tbl_extend\nsetup\22clangd_extensions\14on_attach\17capabilities\1\0\0\29make_client_capabilities\rprotocol\blsp\bvim\0\0\14lspconfig\frequire\5ÄÄ¿ô\4\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    config = { "\27LJ\2\nê\1\0\0\a\0\b\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0'\3\4\0006\4\0\0'\6\5\0B\4\2\0029\4\6\4'\5\4\0&\3\5\3=\3\a\2B\0\2\1K\0\1\0\14separator\15nice_arrow\19config.symbols\6 \1\0\1\14highlight\2\nsetup\15nvim-navic\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\nc\0\0\4\0\5\0\f6\0\0\0006\1\2\0'\3\1\0B\1\2\2=\1\1\0006\0\2\0'\2\3\0B\0\2\0029\0\4\0'\2\1\0B\0\2\1K\0\1\0\19load_extension\14telescope\frequire\vnotify\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nÇ\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\tview\1\0\2\21hide_root_folder\2\18adaptive_size\2\24update_focused_file\1\0\2\venable\2\16update_root\2\23hijack_directories\1\0\1\venable\2\1\0\3\23sync_root_with_cwd\2\23reload_on_bufenter\2\20respect_buf_cwd\2\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nê\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\15matchparen\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\1\17sync_install\1\1\n\0\0\tnorg\bcpp\tjson\15javascript\blua\vfennel\nquery\rmarkdown\fhaskell\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    config = { "\27LJ\2\n{\0\0\2\0\4\0\0055\0\1\0005\1\0\0=\1\2\0007\0\3\0K\0\1\0\rpatterns\fdefault\1\0\2\vzindex\3â≈*\14separator\b‚Ä¢\1\t\0\0\nclass\rfunction\vmethod\bfor\nwhile\aif\vswitch\tcase\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-treesitter-textobjects"] = {
    config = { "\27LJ\2\n¥\3\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\b\0005\4\3\0005\5\4\0=\5\5\0045\5\6\0=\5\a\4=\4\t\3=\3\v\2B\0\2\1K\0\1\0\16textobjects\1\0\0\vselect\1\0\0\20selection_modes\1\0\3\21@parameter.outer\6v\20@function.outer\6V\17@class.outer\n<c-v>\fkeymaps\1\0\v\ail\16@loop.inner\aiC\23@conditional.inner\aal\16@loop.outer\aip\21@parameter.inner\aaC\23@conditional.outer\aas\21@statement.outer\aab\17@block.outer\aac\16@call.outer\aic\16@call.inner\aif\20@function.inner\aaf\20@function.outer\1\0\2\14lookahead\2\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-treesitter-textsubjects"] = {
    config = { "\27LJ\2\nÁ\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\17textsubjects\1\0\0\fkeymaps\1\0\3\ai;!textsubjects-container-inner\t<cr>\23textsubjects-smart\6;!textsubjects-container-outer\1\0\2\venable\2\19prev_selection\6,\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-treesitter-textsubjects",
    url = "https://github.com/RRethy/nvim-treesitter-textsubjects"
  },
  ["nvim-trevJ.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ntrevj\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-trevJ.lua",
    url = "https://github.com/AckslD/nvim-trevJ.lua"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["oxocarbon-lua.nvim"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\oxocarbon-lua.nvim",
    url = "F:\\prv\\dev\\projects\\oxocarbon-lua.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\n—\1\0\0\4\0\t\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0029\0\a\0'\2\b\0B\0\2\1K\0\1\0\rprojects\19load_extension\14telescope\rpatterns\1\0\0\1\6\0\0\t.git\rMakefile\20CMakeLists.json\26compile_commands.json\17package.json\nsetup\17project_nvim\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["promise-async"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\promise-async",
    url = "https://github.com/kevinhwang91/promise-async"
  },
  ["refactoring.nvim"] = {
    config = { "\27LJ\2\nﬁ\3\0\0\5\0\15\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\t\0005\4\b\0=\4\n\3=\3\v\0025\3\r\0005\4\f\0=\4\n\3=\3\14\2B\0\2\1K\0\1\0\25print_var_statements\1\0\0\1\3\0\0001(std::cout << \"{{ %s [\" << (%s) << \"] }}\n\");0(fmt::print(\"{{ {} [{}] }}\n\", (%s), (%s)));\22printf_statements\bcpp\1\0\0\1\3\0\0I(std::cout << \"{{ [\" << (%s) << \"] called in [\" << (%s) << \"] }}\n\");<(fmt::print(\"{{ [{}] called in [{}] }}\n\", (%s), (%s)));\27prompt_func_param_type\1\0\5\bhpp\2\6h\2\bcxx\2\6c\2\bcpp\2\28prompt_func_return_type\1\0\0\1\0\5\bhpp\2\6h\2\bcxx\2\6c\2\bcpp\2\nsetup\16refactoring\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\refactoring.nvim",
    url = "https://github.com/ThePrimeagen/refactoring.nvim"
  },
  ["scope.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nscope\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\scope.nvim",
    url = "https://github.com/tiagovla/scope.nvim"
  },
  ["smart-splits.nvim"] = {
    config = { "\27LJ\2\n`\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\16resize_mode\1\0\0\1\0\1\vsilent\2\nsetup\17smart-splits\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\smart-splits.nvim",
    url = "https://github.com/mrjones2014/smart-splits.nvim"
  },
  ["stay-in-place.nvim"] = {
    config = { "\27LJ\2\nj\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\16set_keymaps\2\30preserve_visual_selection\2\nsetup\18stay-in-place\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\stay-in-place.nvim",
    url = "https://github.com/gbprod/stay-in-place.nvim"
  },
  ["switch.vim"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\switch.vim",
    url = "https://github.com/AndrewRadev/switch.vim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["text-case.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rtextcase\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\text-case.nvim",
    url = "https://github.com/johmsalas/text-case.nvim"
  },
  ["tidy.nvim"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tidy.nvim",
    url = "https://github.com/mcauley-penney/tidy.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\todo-comments.nvim",
    url = "https://github.com/B4mbus/todo-comments.nvim"
  },
  ["true-zen.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rtrue-zen\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\true-zen.nvim",
    url = "https://github.com/Pocco81/true-zen.nvim"
  },
  ["typescript.nvim"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\typescript.nvim",
    url = "https://github.com/jose-elias-alvarez/typescript.nvim"
  },
  ["vim-backscratch"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-backscratch",
    url = "https://github.com/hauleth/vim-backscratch"
  },
  ["vim-cool"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-cool",
    url = "https://github.com/romainl/vim-cool"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-licenses"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-licenses",
    url = "https://github.com/antoyo/vim-licenses"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nf\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0G            let g:neovide_fullscreen = !g:neovide_fullscreen\n\t\t\t\t\t\bcmd\bvimz\0\0\6\2\a\0\17-\0\0\0\15\0\0\0X\1\bÄ6\0\0\0009\0\1\0006\2\2\0009\2\3\2'\4\4\0-\5\0\0B\2\3\0A\0\0\0016\0\0\0009\0\5\0009\0\6\0-\2\1\0B\0\2\1K\0\1\0\1¿\0¿\rtermopen\afn\rexe \"%s\"\vformat\vstring\bcmd\bvim\20\1\2\3\0\1\0\0033\2\0\0002\0\0ÄL\2\2\0\0?\0\1\6\1\4\0\t-\1\0\0006\3\0\0009\3\1\0039\3\2\3\18\5\3\0009\3\3\3B\3\2\2\18\4\0\0D\1\3\0\4¿\bget\nshell\bopt\bvim\29\0\1\5\1\1\0\4-\1\0\0'\3\0\0\18\4\0\0D\1\3\0\4¿\bwsl\28\0\1\5\1\1\0\4-\1\0\0'\3\0\0\18\4\0\0D\1\3\0\4¿\anu7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\rgenerate\vneogen\frequireH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ttype\tfunc\rgenerate\vneogen\frequireH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ttype\ttype\rgenerate\vneogen\frequireI\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ttype\nclass\rgenerate\vneogen\frequireH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ttype\tfile\rgenerate\vneogen\frequirew\0\0\6\0\b\0\0186\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\2\1'\3\4\0B\1\2\0026\2\5\0'\4\6\0B\2\2\0029\2\a\2\18\4\0\0\18\5\1\0B\2\3\1K\0\1\0\vnarrow\rtrue-zen\frequire\6.\6v\tline\afn\bvim°,\1\0\23\0∂\1\0æ\0026\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0009\6\b\1'\a\t\0&\6\a\6=\6\n\5=\5\v\4B\2\2\0015\2\14\0005\3\r\0003\4\f\0>\4\1\3=\3\15\0025\3\16\0005\4\17\0=\4\15\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\0033\4 \0003\5!\0003\6\"\0003\a#\0005\b$\0005\t&\0\18\n\5\0'\f%\0B\n\2\2>\n\1\t=\t'\b5\t)\0\18\n\5\0'\f(\0B\n\2\2>\n\1\t=\t*\b5\t,\0\18\n\5\0'\f+\0B\n\2\2>\n\1\t=\t-\b5\t.\0\18\n\5\0B\n\1\2>\n\1\t=\t\25\b5\t/\0005\n0\0\18\v\a\0'\r%\0B\v\2\2>\v\1\n=\n'\t5\n1\0\18\v\a\0'\r(\0B\v\2\2>\v\1\n=\n*\t5\n2\0\18\v\a\0'\r+\0B\v\2\2>\v\1\n=\n-\t5\n3\0\18\v\a\0B\v\1\2>\v\1\n=\n\25\t=\t'\b5\t4\0005\n5\0\18\v\6\0'\r%\0B\v\2\2>\v\1\n=\n'\t5\n6\0\18\v\6\0'\r(\0B\v\2\2>\v\1\n=\n*\t5\n7\0\18\v\6\0'\r+\0B\v\2\2>\v\1\n=\n-\t5\n8\0\18\v\6\0B\v\1\2>\v\1\n=\n\25\t=\t9\b5\t:\0005\n;\0005\v<\0=\v=\n5\v>\0=\v?\n5\v@\0=\vA\n5\vB\0=\vC\n5\vD\0=\vE\n=\nF\t5\nG\0005\vH\0=\vI\n5\vJ\0=\vK\n5\vL\0=\vC\n=\n\25\t5\nM\0=\nN\t5\nO\0=\nP\t5\nQ\0=\nK\t5\nR\0=\n=\t5\nS\0=\nC\t5\nT\0=\nE\t5\nU\0=\n?\t5\nV\0005\vX\0003\fW\0>\f\1\v=\vP\n5\vZ\0003\fY\0>\f\1\v=\v\15\n5\v\\\0003\f[\0>\f\1\v=\v]\n5\v_\0003\f^\0>\f\1\v=\v\25\n5\va\0003\f`\0>\f\1\v=\vb\n5\vc\0005\fd\0=\f\31\v5\fe\0=\fC\v5\ff\0=\f\25\v5\fg\0=\fh\v5\fi\0=\fK\v5\fj\0005\rk\0=\rl\f5\rm\0=\r?\f=\f'\v5\fn\0005\ro\0=\rC\f5\rp\0=\r\25\f5\rq\0=\rh\f5\rr\0=\rs\f5\rt\0=\rE\f5\ru\0005\14v\0=\14?\r5\14w\0=\14\21\r5\14x\0=\14\27\r5\14y\0=\14\29\r5\14z\0005\15{\0=\15\29\0145\15|\0=\15\25\14=\14}\r5\14~\0005\15\127\0=\15P\0145\15Ä\0=\15Å\0145\15Ç\0=\15\15\0145\15É\0=\15'\0145\15Ñ\0005\16Ö\0=\16=\0155\16Ü\0=\0169\0155\16á\0=\16'\0155\16à\0=\16\21\0155\16â\0=\16?\0155\16ä\0005\17ã\0005\18å\0=\18\31\0175\18ç\0=\18é\17=\17I\0165\17è\0=\17=\0165\17ê\0005\18ë\0=\18*\0175\18í\0=\18\29\0175\18ì\0=\18\25\17=\17K\0169\17î\0005\19ñ\0005\20ï\0=\20ó\0195\20ò\0=\20\25\0195\20ô\0=\20h\0195\20ö\0=\20õ\0195\20ú\0=\20I\0195\20ù\0=\20û\0195\20ü\0=\20E\0195\20†\0=\0209\0195\20°\0=\20¢\0195\20£\0=\20§\0195\20•\0=\20¶\19=\2'\19=\r\31\19=\nP\19=\t?\19=\16A\19=\3C\19=\b]\19=\v\19\19=\f\29\19=\14ß\19=\15=\0195\20®\0B\17\3\0015\17©\0005\18™\0005\19´\0=\19\15\0185\19¨\0=\19b\0185\19≠\0=\19*\18=\18I\0175\18Æ\0=\18=\0175\18Ø\0005\19∞\0=\19*\18=\18K\0175\18±\0005\19≥\0003\20≤\0>\20\1\19=\19'\0189\19î\0005\21¥\0=\18ß\21=\17A\0215\22µ\0B\19\3\0012\0\0ÄK\0\1\0\1\0\2\tmode\6v\vprefix\r<leader>\1\0\0\1\3\0\0\0\vNarrow\0\1\0\1\tname\fTrueZen\1\3\0\0> <cmd>lua require('refactoring').debug.print_var({})<cr> \rVariable\1\0\1\tname\nDebug\1\3\0\0K <esc><cmd>lua require('refactoring').refactor('Inline varaible')<cr> \20Inline variable\1\3\0\0L <esc><cmd>lua require('refactoring').refactor('Extract Variable')<cr> \rVariable\1\3\0\0T <esc><cmd>lua require('refactoring').refactor('Extract Function To File')<cr> \27Function to other file\1\3\0\0L <esc><cmd>lua require('refactoring').refactor('Extract Function')<cr> \rFunction\1\0\1\tname\fExtract\1\0\1\tname\16Refactoring\1\0\1\vprefix\r<leader>\6z\6Q\1\3\0\0\17<cmd>wq!<cr>\24Force save and quit\6q\1\3\0\0\16<cmd>wq<cr>\18Save and quit\6W\1\3\0\0\16<cmd>w!<cr>\15Force save\1\3\0\0\15<cmd>w<cr>\tSave\1\3\0\0<<cmd>so ~/AppData/Local/nvim/after/ftplugin/cpp.lua<cr>\20Source snippets\ass\1\3\0\0\28<cmd>w<cr><cmd>so %<cr>\24Source current file\1\3\0\0\28<cmd>NvimTreeToggle<cr>\19Open file tree\6D\1\3\0\0\22<cmd>tabclose<cr>\14Close tab\1\3\0\0\21<cmd>Bdelete<cr>\17Close buffer\1\3\0\0\24<cmd>e $MYVIMRC<cr>\16Open config\6y\1\0\0\1\3\0\0\16<cmd>%y<cr>\16Yank buffer\rregister\1\3\0\0< <cmd>lua require('refactoring').debug.cleanup({})<cr> \fCleanup\1\3\0\0I <cmd>lua require('refactoring').debug.printf({ below = true })<cr> \vPrintf\1\3\0\0M <cmd>lua require('refactoring').debug.print_var({ normal = true })<cr> \rVariable\1\0\1\tname\nDebug\1\3\0\0F <cmd>lua require('refactoring').refactor('Inline variable')<cr> \20Inline variable\6B\1\3\0\0L <cmd>lua require('refactoring').refactor('Extract Block To File')<cr> \24Block to other file\1\3\0\0D <cmd>lua require('refactoring').refactor('Extract Block')<cr> \nBlock\1\0\1\tname\fExtract\1\0\1\tname\16Refactoring\1\3\0\0 <cmd>ISwapNodeWithRight<cr>\15With right\1\3\0\0\31<cmd>ISwapNodeWithLeft<cr>\14With left\1\3\0\0\23<cmd>ISwapNode<cr>\tNode\1\3\0\0\23<cmd>ISwapWith<cr>\tWith\1\3\0\0\19<cmd>ISwap<cr>\fGeneral\1\0\1\tname\nISwap\1\3\0\0\22<cmd>TZNarrow<cr>\vNarrow\1\3\0\0\21<cmd>TZFocus<cr>\nFocus\6m\1\3\0\0\26<cmd>TZMinimalist<cr>\15Minimalist\1\3\0\0\24<cmd>TZAtaraxis<cr>\rAtaraxis\1\0\1\tname\fTrueZen\6P\1\3\0\0!<cmd>BufferLinePickClose<cr>\nClose\1\3\0\0\28<cmd>BufferLinePick<cr>\tOpen\1\0\1\tname\tPick\1\3\0\0!<cmd>BufferLineTogglePin<cr>\15Toggle pin\1\3\0\0\15<cmd>h<cr>\22Close to the left\1\3\0\0!<cmd>BufferLineCloseLeft<cr>\22Close to the left\1\3\0\0\"<cmd>BufferLineCloseRight<cr>\23Close to the right\1\0\1\tname\fBuffers\1\3\0\0\26<cmd>PackerStatus<cr>\vStatus\6u\1\3\0\0\26<cmd>PackerUpdate<cr>\vUpdate\1\3\0\0\25<cmd>PackerClean<cr>\nClean\1\3\0\0\27<cmd>PackerCompile<cr>\fCompile\1\3\0\0\24<cmd>PackerSync<cr>\tSync\1\0\1\tname\vPacker\1\3\0\0\24<cmd>Neogit log<cr>\bLog\6o\1\3\0\0\20<cmd>Neogit<cr>\tOpen\1\0\1\tname\vNeogit\1\3\0\0\26<cmd>DiffviewOpen<cr>\rDiffview\6C\1\3\0\0#<cmd>Telescope git_commits<cr>\fCommits\1\3\0\0$<cmd>Telescope git_bcommits<cr>\18Local commits\1\3\0\0\"<cmd>Telescope git_status<cr>\vStatus\1\3\0\0$<cmd>Telescope git_branches<cr>\rBranches\1\0\1\tname\bGit\6F\1\3\0\0\0\22Generate for file\0\1\3\0\0\0\23Generate for class\0\6t\1\3\0\0\0\22Generate for type\0\1\3\0\0\0\26Generate for function\0\1\3\0\0\0\rGenerate\0\1\0\1\tname\vNeogen\1\3\0\0.<cmd>lua require \"lsp_lines\".toggle()<cr>\fSymbols\1\3\0\0005<cmd>Telescope lsp_dynamic_workspace_symbols<cr>\fSymbols\1\3\0\0,<cmd>Telescope lsp_document_symbols<cr>\18Local symbols\1\3\0\0+<cmd>Telescope lsp_implementations<cr>\20Implementations\1\3\0\0'<cmd>Telescope lsp_definitions<cr>\16Definitions\6a\1\3\0\0004<cmd>lua require \"cosmic-ui\".code_actions()<cr>\17Code actions\6R\1\3\0\0&<cmd>Telescope lsp_references<cr>\15References\1\3\0\0\28<cmd>Copilot status<cr>\vStatus\6d\1\3\0\0\29<cmd>Copilot disable<cr>\fDisable\6e\1\3\0\0\28<cmd>Copilot enable<cr>\vEnable\1\0\1\tname\fCopilot\f<space>\6S\1\3\0\0\21<cmd>LspStop<cr>\tStop\6s\1\3\0\0\22<cmd>LspStart<cr>\nStart\6r\1\3\0\0\24<cmd>LspRestart<cr>\fRestart\6l\1\3\0\0\20<cmd>LspLog<cr>\bLog\6i\1\3\0\0\21<cmd>LspInfo<cr>\tInfo\1\0\1\tname\tMeta\1\0\1\tname\bLSP\6w\1\3\0\0\0\31Open wsl in current buffer\1\3\0\0\0\22Open wsl in split\1\3\0\0\0\23Open wsl in vsplit\1\3\0\0\0\24Open wsl in new tab\1\0\1\tname\bWSL\1\3\0\0\0\30Open nu in current buffer\1\3\0\0\0\21Open nu in split\1\3\0\0\0\22Open nu in vsplit\1\3\0\0\0\23Open nu in new tab\1\0\1\tname\fNUShell\1\3\0\0\0$Open terminal in current buffer\6x\1\3\0\0\0\27Open terminal in split\bnew\6v\1\3\0\0\0\28Open terminal in vsplit\tvnew\6n\1\3\0\0\0\29Open terminal in new tab\vtabnew\1\0\1\tname\rTerminal\0\0\0\0\6b\1\3\0\0\31<cmd>Telescope buffers<cr>\fBuffers\6p\1\3\0\0 <cmd>Telescope projects<cr>\rProjects\6H\1\3\0\0\"<cmd>Telescope highlights<cr>\15Highlights\6c\1\3\0\0 <cmd>Telescope commands<cr>\rCommands\6k\1\3\0\0\31<cmd>Telescope keymaps<cr>\rMappings\6h\1\3\0\0!<cmd>Telescope help_tags<cr>\tHelp\6g\1\3\0\0!<cmd>Telescope live_grep<cr>\14Live grep\1\3\0\0\"<cmd>Telescope find_files<cr>\15Find files\1\0\1\tname\14Telescope\6f\1\0\0\1\3\0\0\0\22Toggle fullscreen\0\nicons\ngroup\6 \24horizontal_ellipsis\1\0\1\14separator\b‚∏¨\vwindow\1\0\0\1\0\1\vborder\vsingle\nsetup\19config.symbols\14which-key\frequire\0" },
    loaded = true,
    path = "C:\\Users\\B4mbus\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nõ\1\0\1\4\0\6\0\n6\1\0\0'\3\1\0B\1\2\0029\1\2\1\18\3\0\0B\1\2\0029\2\3\0015\3\5\0=\3\4\2L\1\2\0\1\0\2\24dynamicRegistration\1\20lineFoldingOnly\2\17foldingRange\17textDocument\24update_capabilities\17cmp_nvim_lsp\frequireÃ\4\0\2\n\0 \0E6\2\0\0'\4\1\0B\2\2\0029\2\2\2\18\4\0\0\18\5\1\0B\2\3\0016\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\5\0005\5\6\0=\5\a\4\18\5\1\0B\2\3\0016\2\b\0009\2\t\0029\2\n\0025\3\v\0=\1\f\3\18\4\2\0'\6\r\0'\a\14\0006\b\b\0009\b\15\b9\b\16\b9\b\17\b\18\t\3\0B\4\5\1\18\4\2\0'\6\r\0'\a\18\0006\b\b\0009\b\15\b9\b\16\b9\b\19\b\18\t\3\0B\4\5\1\18\4\2\0'\6\r\0'\a\20\0006\b\b\0009\b\15\b9\b\16\b9\b\21\b\18\t\3\0B\4\5\1\18\4\2\0'\6\r\0'\a\22\0006\b\b\0009\b\15\b9\b\16\b9\b\23\b\18\t\3\0B\4\5\0016\4\0\0'\6\24\0B\4\2\0029\4\25\0045\6\29\0005\a\27\0005\b\26\0=\b\28\a=\a\30\0065\a\31\0B\4\3\1K\0\1\0\1\0\1\vprefix\r<leader>\6l\1\0\0\6r\1\0\0\1\3\0\0001 <cmd>lua require('cosmic-ui').rename()<cr> \15LSP Rename\rregister\14which-key\nhover\6K\19implementation\agi\15definition\agd\16declaration\bbuf\blsp\agD\6n\vbuffer\1\0\2\fnoremap\2\vsilent\2\bset\vkeymap\bvim\17handler_opts\1\0\1\vborder\frounded\1\0\1\tbind\2\14on_attach\18lsp_signature\vattach\15nvim-navic\frequireÙ\b\1\0\14\0004\1[6\0\0\0'\2\1\0B\0\2\0023\1\2\0003\2\3\0\18\3\1\0006\5\4\0009\5\5\0059\5\6\0059\5\a\5B\5\1\0A\3\0\0025\4\b\0=\3\t\4=\2\n\0046\5\0\0'\a\v\0B\5\2\0029\5\f\0055\a\18\0006\b\4\0009\b\r\b'\n\14\0\18\v\4\0005\f\16\0005\r\15\0=\r\17\fB\b\4\2=\b\19\a5\b\20\0=\b\21\a5\b\22\0005\t\23\0=\t\24\b=\b\25\aB\5\2\0015\5+\0005\6)\0005\a\27\0005\b\26\0=\b\28\a5\b\30\0005\t\29\0=\t\31\b=\b \a5\b&\0004\t\3\0006\n\4\0009\n!\n9\n\"\n'\f#\0B\n\2\2'\v$\0&\n\v\n>\n\1\t6\n\4\0009\n!\n9\n\"\n'\f%\0B\n\2\0?\n\0\0=\t'\b=\b(\a=\a*\6=\6,\0059\6-\0009\6\f\0066\b\4\0009\b\r\b'\n.\0\18\v\5\0\18\f\4\0B\b\4\0A\6\0\0019\6/\0009\6\f\6\18\b\4\0B\6\2\0016\6\0\0'\b0\0B\6\2\0029\6\f\0065\b1\0=\4\19\bB\6\2\0016\6\4\0009\0062\0069\6%\0065\b3\0B\6\2\1K\0\1\0\1\0\2\17virtual_text\1\21update_in_insert\1\15diagnostic\1\0\1\20disble_commands\1\15typescript\bhls\nforce\16sumneko_lua\rsettings\1\0\0\bLua\1\0\0\14workspace\flibrary\1\0\2\15maxPreload\3–\15\20preloadFileSize\3–Ü\3\vconfig'/site/pack/packer/opt/emmylua-nvim\tdata\fstdpath\afn\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\15extensions\17memory_usage\1\0\1\vborder\frounded\1\0\1\23other_hints_prefix\b‚´∏\16inlay_hints\1\0\1\25show_parameter_hints\1\vserver\1\0\0\bcmd\1\0\0\1\v\0\0\vclangd\23--background-index\17--clang-tidy --completion-style=detailed\29--header-insertion=never\"--header-insertion-decorators6--compile-commands-dir=F:\\prv\\dev\\forks\\rigc-lang\20--enable-config\23--pch-storage=disk\15--log=info\tkeep\15tbl_extend\nsetup\22clangd_extensions\14on_attach\17capabilities\1\0\0\29make_client_capabilities\rprotocol\blsp\bvim\0\0\14lspconfig\frequire\5ÄÄ¿ô\4\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: scope.nvim
time([[Config for scope.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nscope\frequire\0", "config", "scope.nvim")
time([[Config for scope.nvim]], false)
-- Config for: iswap.nvim
time([[Config for iswap.nvim]], true)
try_loadstring("\27LJ\2\nD\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\rautoswap\2\nsetup\niswap\frequire\0", "config", "iswap.nvim")
time([[Config for iswap.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: refactoring.nvim
time([[Config for refactoring.nvim]], true)
try_loadstring("\27LJ\2\nﬁ\3\0\0\5\0\15\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\t\0005\4\b\0=\4\n\3=\3\v\0025\3\r\0005\4\f\0=\4\n\3=\3\14\2B\0\2\1K\0\1\0\25print_var_statements\1\0\0\1\3\0\0001(std::cout << \"{{ %s [\" << (%s) << \"] }}\n\");0(fmt::print(\"{{ {} [{}] }}\n\", (%s), (%s)));\22printf_statements\bcpp\1\0\0\1\3\0\0I(std::cout << \"{{ [\" << (%s) << \"] called in [\" << (%s) << \"] }}\n\");<(fmt::print(\"{{ [{}] called in [{}] }}\n\", (%s), (%s)));\27prompt_func_param_type\1\0\5\bhpp\2\6h\2\bcxx\2\6c\2\bcpp\2\28prompt_func_return_type\1\0\0\1\0\5\bhpp\2\6h\2\bcxx\2\6c\2\bcpp\2\nsetup\16refactoring\frequire\0", "config", "refactoring.nvim")
time([[Config for refactoring.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nÇ\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\tview\1\0\2\21hide_root_folder\2\18adaptive_size\2\24update_focused_file\1\0\2\venable\2\16update_root\2\23hijack_directories\1\0\1\venable\2\1\0\3\23sync_root_with_cwd\2\23reload_on_bufenter\2\20respect_buf_cwd\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: neogit
time([[Config for neogit]], true)
try_loadstring("\27LJ\2\nã\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\rsections\vrecent\1\0\0\1\0\1\vfolded\1\17integrations\1\0\0\1\0\1\rdiffview\2\nsetup\vneogit\frequire\0", "config", "neogit")
time([[Config for neogit]], false)
-- Config for: nvim-trevJ.lua
time([[Config for nvim-trevJ.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ntrevj\frequire\0", "config", "nvim-trevJ.lua")
time([[Config for nvim-trevJ.lua]], false)
-- Config for: nvim-ts-autotag
time([[Config for nvim-ts-autotag]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0", "config", "nvim-ts-autotag")
time([[Config for nvim-ts-autotag]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\n—\1\0\0\4\0\t\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0029\0\a\0'\2\b\0B\0\2\1K\0\1\0\rprojects\19load_extension\14telescope\rpatterns\1\0\0\1\6\0\0\t.git\rMakefile\20CMakeLists.json\26compile_commands.json\17package.json\nsetup\17project_nvim\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: buffercd.nvim
time([[Config for buffercd.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rbuffercd\frequire\0", "config", "buffercd.nvim")
time([[Config for buffercd.nvim]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\16hint_enable\1\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: nvim-headband
time([[Config for nvim-headband]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18nvim-headband\frequire\0", "config", "nvim-headband")
time([[Config for nvim-headband]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nf\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0G            let g:neovide_fullscreen = !g:neovide_fullscreen\n\t\t\t\t\t\bcmd\bvimz\0\0\6\2\a\0\17-\0\0\0\15\0\0\0X\1\bÄ6\0\0\0009\0\1\0006\2\2\0009\2\3\2'\4\4\0-\5\0\0B\2\3\0A\0\0\0016\0\0\0009\0\5\0009\0\6\0-\2\1\0B\0\2\1K\0\1\0\1¿\0¿\rtermopen\afn\rexe \"%s\"\vformat\vstring\bcmd\bvim\20\1\2\3\0\1\0\0033\2\0\0002\0\0ÄL\2\2\0\0?\0\1\6\1\4\0\t-\1\0\0006\3\0\0009\3\1\0039\3\2\3\18\5\3\0009\3\3\3B\3\2\2\18\4\0\0D\1\3\0\4¿\bget\nshell\bopt\bvim\29\0\1\5\1\1\0\4-\1\0\0'\3\0\0\18\4\0\0D\1\3\0\4¿\bwsl\28\0\1\5\1\1\0\4-\1\0\0'\3\0\0\18\4\0\0D\1\3\0\4¿\anu7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\rgenerate\vneogen\frequireH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ttype\tfunc\rgenerate\vneogen\frequireH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ttype\ttype\rgenerate\vneogen\frequireI\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ttype\nclass\rgenerate\vneogen\frequireH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ttype\tfile\rgenerate\vneogen\frequirew\0\0\6\0\b\0\0186\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\2\1'\3\4\0B\1\2\0026\2\5\0'\4\6\0B\2\2\0029\2\a\2\18\4\0\0\18\5\1\0B\2\3\1K\0\1\0\vnarrow\rtrue-zen\frequire\6.\6v\tline\afn\bvim°,\1\0\23\0∂\1\0æ\0026\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0009\6\b\1'\a\t\0&\6\a\6=\6\n\5=\5\v\4B\2\2\0015\2\14\0005\3\r\0003\4\f\0>\4\1\3=\3\15\0025\3\16\0005\4\17\0=\4\15\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\0033\4 \0003\5!\0003\6\"\0003\a#\0005\b$\0005\t&\0\18\n\5\0'\f%\0B\n\2\2>\n\1\t=\t'\b5\t)\0\18\n\5\0'\f(\0B\n\2\2>\n\1\t=\t*\b5\t,\0\18\n\5\0'\f+\0B\n\2\2>\n\1\t=\t-\b5\t.\0\18\n\5\0B\n\1\2>\n\1\t=\t\25\b5\t/\0005\n0\0\18\v\a\0'\r%\0B\v\2\2>\v\1\n=\n'\t5\n1\0\18\v\a\0'\r(\0B\v\2\2>\v\1\n=\n*\t5\n2\0\18\v\a\0'\r+\0B\v\2\2>\v\1\n=\n-\t5\n3\0\18\v\a\0B\v\1\2>\v\1\n=\n\25\t=\t'\b5\t4\0005\n5\0\18\v\6\0'\r%\0B\v\2\2>\v\1\n=\n'\t5\n6\0\18\v\6\0'\r(\0B\v\2\2>\v\1\n=\n*\t5\n7\0\18\v\6\0'\r+\0B\v\2\2>\v\1\n=\n-\t5\n8\0\18\v\6\0B\v\1\2>\v\1\n=\n\25\t=\t9\b5\t:\0005\n;\0005\v<\0=\v=\n5\v>\0=\v?\n5\v@\0=\vA\n5\vB\0=\vC\n5\vD\0=\vE\n=\nF\t5\nG\0005\vH\0=\vI\n5\vJ\0=\vK\n5\vL\0=\vC\n=\n\25\t5\nM\0=\nN\t5\nO\0=\nP\t5\nQ\0=\nK\t5\nR\0=\n=\t5\nS\0=\nC\t5\nT\0=\nE\t5\nU\0=\n?\t5\nV\0005\vX\0003\fW\0>\f\1\v=\vP\n5\vZ\0003\fY\0>\f\1\v=\v\15\n5\v\\\0003\f[\0>\f\1\v=\v]\n5\v_\0003\f^\0>\f\1\v=\v\25\n5\va\0003\f`\0>\f\1\v=\vb\n5\vc\0005\fd\0=\f\31\v5\fe\0=\fC\v5\ff\0=\f\25\v5\fg\0=\fh\v5\fi\0=\fK\v5\fj\0005\rk\0=\rl\f5\rm\0=\r?\f=\f'\v5\fn\0005\ro\0=\rC\f5\rp\0=\r\25\f5\rq\0=\rh\f5\rr\0=\rs\f5\rt\0=\rE\f5\ru\0005\14v\0=\14?\r5\14w\0=\14\21\r5\14x\0=\14\27\r5\14y\0=\14\29\r5\14z\0005\15{\0=\15\29\0145\15|\0=\15\25\14=\14}\r5\14~\0005\15\127\0=\15P\0145\15Ä\0=\15Å\0145\15Ç\0=\15\15\0145\15É\0=\15'\0145\15Ñ\0005\16Ö\0=\16=\0155\16Ü\0=\0169\0155\16á\0=\16'\0155\16à\0=\16\21\0155\16â\0=\16?\0155\16ä\0005\17ã\0005\18å\0=\18\31\0175\18ç\0=\18é\17=\17I\0165\17è\0=\17=\0165\17ê\0005\18ë\0=\18*\0175\18í\0=\18\29\0175\18ì\0=\18\25\17=\17K\0169\17î\0005\19ñ\0005\20ï\0=\20ó\0195\20ò\0=\20\25\0195\20ô\0=\20h\0195\20ö\0=\20õ\0195\20ú\0=\20I\0195\20ù\0=\20û\0195\20ü\0=\20E\0195\20†\0=\0209\0195\20°\0=\20¢\0195\20£\0=\20§\0195\20•\0=\20¶\19=\2'\19=\r\31\19=\nP\19=\t?\19=\16A\19=\3C\19=\b]\19=\v\19\19=\f\29\19=\14ß\19=\15=\0195\20®\0B\17\3\0015\17©\0005\18™\0005\19´\0=\19\15\0185\19¨\0=\19b\0185\19≠\0=\19*\18=\18I\0175\18Æ\0=\18=\0175\18Ø\0005\19∞\0=\19*\18=\18K\0175\18±\0005\19≥\0003\20≤\0>\20\1\19=\19'\0189\19î\0005\21¥\0=\18ß\21=\17A\0215\22µ\0B\19\3\0012\0\0ÄK\0\1\0\1\0\2\tmode\6v\vprefix\r<leader>\1\0\0\1\3\0\0\0\vNarrow\0\1\0\1\tname\fTrueZen\1\3\0\0> <cmd>lua require('refactoring').debug.print_var({})<cr> \rVariable\1\0\1\tname\nDebug\1\3\0\0K <esc><cmd>lua require('refactoring').refactor('Inline varaible')<cr> \20Inline variable\1\3\0\0L <esc><cmd>lua require('refactoring').refactor('Extract Variable')<cr> \rVariable\1\3\0\0T <esc><cmd>lua require('refactoring').refactor('Extract Function To File')<cr> \27Function to other file\1\3\0\0L <esc><cmd>lua require('refactoring').refactor('Extract Function')<cr> \rFunction\1\0\1\tname\fExtract\1\0\1\tname\16Refactoring\1\0\1\vprefix\r<leader>\6z\6Q\1\3\0\0\17<cmd>wq!<cr>\24Force save and quit\6q\1\3\0\0\16<cmd>wq<cr>\18Save and quit\6W\1\3\0\0\16<cmd>w!<cr>\15Force save\1\3\0\0\15<cmd>w<cr>\tSave\1\3\0\0<<cmd>so ~/AppData/Local/nvim/after/ftplugin/cpp.lua<cr>\20Source snippets\ass\1\3\0\0\28<cmd>w<cr><cmd>so %<cr>\24Source current file\1\3\0\0\28<cmd>NvimTreeToggle<cr>\19Open file tree\6D\1\3\0\0\22<cmd>tabclose<cr>\14Close tab\1\3\0\0\21<cmd>Bdelete<cr>\17Close buffer\1\3\0\0\24<cmd>e $MYVIMRC<cr>\16Open config\6y\1\0\0\1\3\0\0\16<cmd>%y<cr>\16Yank buffer\rregister\1\3\0\0< <cmd>lua require('refactoring').debug.cleanup({})<cr> \fCleanup\1\3\0\0I <cmd>lua require('refactoring').debug.printf({ below = true })<cr> \vPrintf\1\3\0\0M <cmd>lua require('refactoring').debug.print_var({ normal = true })<cr> \rVariable\1\0\1\tname\nDebug\1\3\0\0F <cmd>lua require('refactoring').refactor('Inline variable')<cr> \20Inline variable\6B\1\3\0\0L <cmd>lua require('refactoring').refactor('Extract Block To File')<cr> \24Block to other file\1\3\0\0D <cmd>lua require('refactoring').refactor('Extract Block')<cr> \nBlock\1\0\1\tname\fExtract\1\0\1\tname\16Refactoring\1\3\0\0 <cmd>ISwapNodeWithRight<cr>\15With right\1\3\0\0\31<cmd>ISwapNodeWithLeft<cr>\14With left\1\3\0\0\23<cmd>ISwapNode<cr>\tNode\1\3\0\0\23<cmd>ISwapWith<cr>\tWith\1\3\0\0\19<cmd>ISwap<cr>\fGeneral\1\0\1\tname\nISwap\1\3\0\0\22<cmd>TZNarrow<cr>\vNarrow\1\3\0\0\21<cmd>TZFocus<cr>\nFocus\6m\1\3\0\0\26<cmd>TZMinimalist<cr>\15Minimalist\1\3\0\0\24<cmd>TZAtaraxis<cr>\rAtaraxis\1\0\1\tname\fTrueZen\6P\1\3\0\0!<cmd>BufferLinePickClose<cr>\nClose\1\3\0\0\28<cmd>BufferLinePick<cr>\tOpen\1\0\1\tname\tPick\1\3\0\0!<cmd>BufferLineTogglePin<cr>\15Toggle pin\1\3\0\0\15<cmd>h<cr>\22Close to the left\1\3\0\0!<cmd>BufferLineCloseLeft<cr>\22Close to the left\1\3\0\0\"<cmd>BufferLineCloseRight<cr>\23Close to the right\1\0\1\tname\fBuffers\1\3\0\0\26<cmd>PackerStatus<cr>\vStatus\6u\1\3\0\0\26<cmd>PackerUpdate<cr>\vUpdate\1\3\0\0\25<cmd>PackerClean<cr>\nClean\1\3\0\0\27<cmd>PackerCompile<cr>\fCompile\1\3\0\0\24<cmd>PackerSync<cr>\tSync\1\0\1\tname\vPacker\1\3\0\0\24<cmd>Neogit log<cr>\bLog\6o\1\3\0\0\20<cmd>Neogit<cr>\tOpen\1\0\1\tname\vNeogit\1\3\0\0\26<cmd>DiffviewOpen<cr>\rDiffview\6C\1\3\0\0#<cmd>Telescope git_commits<cr>\fCommits\1\3\0\0$<cmd>Telescope git_bcommits<cr>\18Local commits\1\3\0\0\"<cmd>Telescope git_status<cr>\vStatus\1\3\0\0$<cmd>Telescope git_branches<cr>\rBranches\1\0\1\tname\bGit\6F\1\3\0\0\0\22Generate for file\0\1\3\0\0\0\23Generate for class\0\6t\1\3\0\0\0\22Generate for type\0\1\3\0\0\0\26Generate for function\0\1\3\0\0\0\rGenerate\0\1\0\1\tname\vNeogen\1\3\0\0.<cmd>lua require \"lsp_lines\".toggle()<cr>\fSymbols\1\3\0\0005<cmd>Telescope lsp_dynamic_workspace_symbols<cr>\fSymbols\1\3\0\0,<cmd>Telescope lsp_document_symbols<cr>\18Local symbols\1\3\0\0+<cmd>Telescope lsp_implementations<cr>\20Implementations\1\3\0\0'<cmd>Telescope lsp_definitions<cr>\16Definitions\6a\1\3\0\0004<cmd>lua require \"cosmic-ui\".code_actions()<cr>\17Code actions\6R\1\3\0\0&<cmd>Telescope lsp_references<cr>\15References\1\3\0\0\28<cmd>Copilot status<cr>\vStatus\6d\1\3\0\0\29<cmd>Copilot disable<cr>\fDisable\6e\1\3\0\0\28<cmd>Copilot enable<cr>\vEnable\1\0\1\tname\fCopilot\f<space>\6S\1\3\0\0\21<cmd>LspStop<cr>\tStop\6s\1\3\0\0\22<cmd>LspStart<cr>\nStart\6r\1\3\0\0\24<cmd>LspRestart<cr>\fRestart\6l\1\3\0\0\20<cmd>LspLog<cr>\bLog\6i\1\3\0\0\21<cmd>LspInfo<cr>\tInfo\1\0\1\tname\tMeta\1\0\1\tname\bLSP\6w\1\3\0\0\0\31Open wsl in current buffer\1\3\0\0\0\22Open wsl in split\1\3\0\0\0\23Open wsl in vsplit\1\3\0\0\0\24Open wsl in new tab\1\0\1\tname\bWSL\1\3\0\0\0\30Open nu in current buffer\1\3\0\0\0\21Open nu in split\1\3\0\0\0\22Open nu in vsplit\1\3\0\0\0\23Open nu in new tab\1\0\1\tname\fNUShell\1\3\0\0\0$Open terminal in current buffer\6x\1\3\0\0\0\27Open terminal in split\bnew\6v\1\3\0\0\0\28Open terminal in vsplit\tvnew\6n\1\3\0\0\0\29Open terminal in new tab\vtabnew\1\0\1\tname\rTerminal\0\0\0\0\6b\1\3\0\0\31<cmd>Telescope buffers<cr>\fBuffers\6p\1\3\0\0 <cmd>Telescope projects<cr>\rProjects\6H\1\3\0\0\"<cmd>Telescope highlights<cr>\15Highlights\6c\1\3\0\0 <cmd>Telescope commands<cr>\rCommands\6k\1\3\0\0\31<cmd>Telescope keymaps<cr>\rMappings\6h\1\3\0\0!<cmd>Telescope help_tags<cr>\tHelp\6g\1\3\0\0!<cmd>Telescope live_grep<cr>\14Live grep\1\3\0\0\"<cmd>Telescope find_files<cr>\15Find files\1\0\1\tname\14Telescope\6f\1\0\0\1\3\0\0\0\22Toggle fullscreen\0\nicons\ngroup\6 \24horizontal_ellipsis\1\0\1\14separator\b‚∏¨\vwindow\1\0\0\1\0\1\vborder\vsingle\nsetup\19config.symbols\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: lsp_lines.nvim
time([[Config for lsp_lines.nvim]], true)
try_loadstring("\27LJ\2\ns\0\0\3\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0005\2\6\0B\0\2\1K\0\1\0\1\0\1\18virtual_lines\1\vconfig\15diagnostic\bvim\nsetup\14lsp_lines\frequire\0", "config", "lsp_lines.nvim")
time([[Config for lsp_lines.nvim]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: nvim-treesitter-context
time([[Config for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\n{\0\0\2\0\4\0\0055\0\1\0005\1\0\0=\1\2\0007\0\3\0K\0\1\0\rpatterns\fdefault\1\0\2\vzindex\3â≈*\14separator\b‚Ä¢\1\t\0\0\nclass\rfunction\vmethod\bfor\nwhile\aif\vswitch\tcase\0", "config", "nvim-treesitter-context")
time([[Config for nvim-treesitter-context]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nê\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\15matchparen\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\1\17sync_install\1\1\n\0\0\tnorg\bcpp\tjson\15javascript\blua\vfennel\nquery\rmarkdown\fhaskell\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-navic
time([[Config for nvim-navic]], true)
try_loadstring("\27LJ\2\nê\1\0\0\a\0\b\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0'\3\4\0006\4\0\0'\6\5\0B\4\2\0029\4\6\4'\5\4\0&\3\5\3=\3\a\2B\0\2\1K\0\1\0\14separator\15nice_arrow\19config.symbols\6 \1\0\1\14highlight\2\nsetup\15nvim-navic\frequire\0", "config", "nvim-navic")
time([[Config for nvim-navic]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n¥\2\0\0\4\0\14\0'6\0\0\0009\0\1\0009\0\2\0B\0\1\0029\0\3\0\a\0\4\0X\0\3Ä+\0\2\0L\0\2\0X\0\28Ä6\0\0\0009\0\1\0009\0\5\0)\2\0\0'\3\6\0B\0\3\2\a\0\a\0X\0\3Ä+\0\1\0L\0\2\0X\0\17Ä6\0\b\0'\2\t\0B\0\2\0029\1\n\0'\3\v\0B\1\2\2\14\0\1\0X\1\5Ä9\1\f\0'\3\r\0B\1\2\2\19\1\1\0X\2\3Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0K\0\1\0\fComment\20in_syntax_group\fcomment\26in_treesitter_capture\23cmp.config.context\frequire\vprompt\fbuftype\24nvim_buf_get_option\6c\tmode\18nvim_get_mode\bapi\bvimC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequirev\0\1\a\0\a\0\0176\1\0\0009\1\1\0019\1\2\1B\1\1\2\6\1\3\0X\2\bÄ6\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0+\6\2\0B\2\4\1X\2\2Ä\18\2\0\0B\2\1\1K\0\1\0\6i\18nvim_feedkeys\bapi\5\19copilot#Accept\afn\bvimÀ\t\1\0\f\0G\0ä\0016\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0003\4\3\0=\4\5\0035\4\a\0003\5\6\0=\5\b\4=\4\t\0035\4\v\0005\5\n\0=\5\f\4=\4\r\0035\4\15\0005\5\14\0=\5\16\4=\4\17\0039\4\18\0009\4\19\0049\4\20\0045\6\26\0009\a\18\0005\t\22\0009\n\18\0009\n\21\nB\n\1\2=\n\23\t9\n\18\0009\n\24\nB\n\1\2=\n\25\tB\a\2\2=\a\27\0063\a\28\0=\a\29\0069\a\18\0009\t\18\0009\t\30\t)\v¸ˇB\t\2\0025\n\31\0B\a\3\2=\a \0069\a\18\0009\t\18\0009\t\30\t)\v\4\0B\t\2\0025\n!\0B\a\3\2=\a\"\0069\a\18\0009\a#\aB\a\1\2=\a$\0069\a\18\0009\a\21\aB\a\1\2=\a%\0069\a\18\0009\a&\a5\t'\0B\a\2\2=\a(\0069\a\18\0009\a)\aB\a\1\2=\a*\0069\a\18\0009\a+\aB\a\1\2=\a,\6B\4\2\2=\4\18\0039\4-\0009\4.\0044\6\5\0005\a/\0>\a\1\0065\a0\0>\a\2\0065\a1\0>\a\3\0065\a2\0>\a\4\6B\4\2\2=\4.\0035\0046\0006\5\0\0'\a3\0B\5\2\0029\0054\0055\a5\0B\5\2\2=\0057\4=\0048\0035\4B\0004\5\t\0009\6-\0009\0069\0069\6:\6>\6\1\0059\6-\0009\0069\0069\6;\6>\6\2\0059\6-\0009\0069\0069\6<\6>\6\3\0056\6\0\0'\b=\0B\6\2\2>\6\4\0059\6-\0009\0069\0069\6>\6>\6\5\0059\6-\0009\0069\0069\6?\6>\6\6\0059\6-\0009\0069\0069\6@\6>\6\a\0059\6-\0009\0069\0069\6A\6>\6\b\5=\5C\4=\4D\0035\4E\0=\4F\3B\1\2\1K\0\1\0\17experimental\1\0\1\15ghost_text\2\fsorting\16comparators\1\0\0\norder\vlength\14sort_text\tkind!clangd_extensions.cmp_scores\18recently_used\nexact\voffset\fcompare\15formatting\vformat\1\0\0\1\0\2\tmode\16symbol_text\rmaxwidth\3(\15cmp_format\flspkind\1\0\2\19keyword_length\3\3\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\tpath\1\0\2\19keyword_length\3\3\tname\rnvim_lsp\fsources\vconfig\f<S-Tab>\21select_prev_item\n<Tab>\21select_next_item\t<CR>\1\0\1\vselect\1\fconfirm\n<C-e>\14<C-Space>\rcomplete\n<C-u>\1\3\0\0\6i\6c\n<C-d>\1\3\0\0\6i\6c\16scroll_docs\n<C-f>\0\n<C-q>\1\0\0\6c\nclose\6i\1\0\0\nabort\vinsert\vpreset\fmapping\tview\fentries\1\0\0\1\0\2\20selection_order\16near_cursor\tname\vcustom\vwindow\18documentation\1\0\0\1\0\1\vborder\vsingle\fsnippet\vexpand\1\0\0\0\fenabled\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: neogen
time([[Config for neogen]], true)
try_loadstring("\27LJ\2\n®\1\0\0\6\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\a\0005\4\5\0005\5\4\0=\5\6\4=\4\b\3=\3\t\2B\0\2\1K\0\1\0\14languages\blua\1\0\0\rtemplate\1\0\0\1\0\1\26annotation_convention\femmylua\1\0\1\19snippet_engine\fluasnip\nsetup\vneogen\frequire\0", "config", "neogen")
time([[Config for neogen]], false)
-- Config for: text-case.nvim
time([[Config for text-case.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rtextcase\frequire\0", "config", "text-case.nvim")
time([[Config for text-case.nvim]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rdiffview\frequire\0", "config", "diffview.nvim")
time([[Config for diffview.nvim]], false)
-- Config for: inc-rename.nvim
time([[Config for inc-rename.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15inc_rename\frequire\0", "config", "inc-rename.nvim")
time([[Config for inc-rename.nvim]], false)
-- Config for: stay-in-place.nvim
time([[Config for stay-in-place.nvim]], true)
try_loadstring("\27LJ\2\nj\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\16set_keymaps\2\30preserve_visual_selection\2\nsetup\18stay-in-place\frequire\0", "config", "stay-in-place.nvim")
time([[Config for stay-in-place.nvim]], false)
-- Config for: cosmic-ui
time([[Config for cosmic-ui]], true)
try_loadstring("\27LJ\2\n¡\1\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\0025\3\t\0005\4\b\0=\4\6\3=\3\n\2B\0\2\1K\0\1\0\17code_actions\1\0\0\1\0\1\nstyle\frounded\vrename\vborder\1\0\1\vprompt\bŒª \1\0\1\nstyle\frounded\1\0\1\17border_style\frounded\nsetup\14cosmic-ui\frequire\0", "config", "cosmic-ui")
time([[Config for cosmic-ui]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Config for: smart-splits.nvim
time([[Config for smart-splits.nvim]], true)
try_loadstring("\27LJ\2\n`\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\16resize_mode\1\0\0\1\0\1\vsilent\2\nsetup\17smart-splits\frequire\0", "config", "smart-splits.nvim")
time([[Config for smart-splits.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'nvim-treesitter-textsubjects', 'indent-blankline.nvim', 'nvim-treesitter-textobjects'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'luasnip'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'nvim-notify', 'lightspeed.nvim', 'indent-blankline.nvim', 'true-zen.nvim', 'bufferline.nvim'}, { event = "BufEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-treesitter-textsubjects', 'gitsigns.nvim', 'nvim-treesitter-textobjects'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
