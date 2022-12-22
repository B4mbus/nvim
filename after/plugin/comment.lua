local ok, comment = pequire('Comment')

if not ok then
  vim.notify('Could not load the "ccomment" plugin')
  return
end

local ok_ts_c_c, ts_context_commenstring = pequire('ts_context_commentstring.integrations.comment_nvim')

if not ok_ts_c_c then
  comment.setup()
else
  comment.setup({
    pre_hook = ts_context_commenstring.create_pre_hook()
  })
end
