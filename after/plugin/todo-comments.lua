local ok, todo_comments = pequire('todo-comments')
if not ok then
  vim.notify('Could not load the "todo-comments" plugin')
  return
end

todo_comments.setup()
