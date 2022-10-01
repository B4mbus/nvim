local disabled_built_ins = {
    "2html_plugin",
    "getscript",
    "getscriptPlugin",
    "gzip",
    "logipat",
    "matchit",
    "loaded_remote_plugins",
    "loaded_tutor_mode_plugin",
    "rrhelper",
    "spellfile_plugin",
    "tar",
    "tarPlugin",
    "vimball",
    "vimballPlugin",
    "zip",
    "zipPlugin",
    "matchparen", -- matchparen.nvim disables the default
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end
