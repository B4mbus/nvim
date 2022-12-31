local ok, paint = b4.pequire('paint')
if not ok then
  vim.notify('Could not load the "paint" plugin')
  return
end

local tmux = function(pat, hl)
  return { filter = { filetype = 'tmux'  }, pattern = pat, hl = hl }
end

local jsx = function(pat, hl)
  return { filter = { filetype = 'jsx'  }, pattern = pat, hl = hl }
end

paint.setup({
  highlights = {
    tmux('%s*#%s*(%[.-]:)', '@method'),
    tmux('%s*#%s*@(.*)', 'Constant'),
    tmux('<prefix>', '@attribute'),
    tmux('<prefix> (%+)', '@constructor'),
    tmux('<prefix> %+ (.+)', '@character'),
    tmux('<prefix> %+ (.+)', '@character'),

    -- headings
    jsx('^(#) .-$', '@punctuation.special'),
    jsx('^# (.-)$', 'markdownH1'),

    jsx('^(##) .-$', '@punctuation.special'),
    jsx('^## (.-)$', 'markdownH2'),

    jsx('^(###) .-$', '@punctuation.special'),
    jsx('^### (.-)$', '@function.builtin'),

    jsx('^(####) .-$', '@punctuation.special'),
    jsx('^#### (.-)$', '@constant.macro'),

    -- links
    jsx('%[(.-)]%(.-%)', '@exception'),
    jsx('%[.-]%((.-)%)', '@keyword'),

    -- imports
    jsx([[^(import) .- from ['"].-['"];]], '@conditional'),
    jsx([[^import (.-) from ['"].-['"];]], 'Keyword'),
    jsx([[^import .- (from) ['"].-['"];]], '@conditional'),
    jsx([[^import .- from (['"].-['"]);]], 'String'),

    -- tags
    jsx('</?(%a-)>', 'htmlH2'),
  },
})
