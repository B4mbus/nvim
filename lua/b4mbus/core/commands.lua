local command = vim.api.nvim_create_user_command
command(
  'CP',
  function()
    local line = vim.api.nvim_get_current_line()
    local bbeg, bend = vim.regex([['\(.*\)',]]):match_str(line)
    local filename = line:sub(bbeg + 2, bend - 2)

    local path = vim.fn.expand('%:p:h') .. '/configs/' .. filename .. '.lua'
    vim.fn.execute(':e ' .. path)
  end,
  {}
)

local msgbuf = function(args)
  vim.api.nvim_exec([[enew | pu=execute(']] .. args.args ..  [[') ]], false)
end

command('Mb', msgbuf, { nargs = '*' })
command('MB', msgbuf, { nargs = '*' })


--[[
• name: (string) Command name
• args: (string) The args passed to the command, if any
|<args>|
• fargs: (table) The args split by unescaped whitespace
(when more than one argument is allowed), if any
|<f-args>|
• bang: (boolean) "true" if the command was executed with a
! modifier |<bang>|
• line1: (number) The starting line of the command range
|<line1>|
• line2: (number) The final line of the command range
|<line2>|
• range: (number) The number of items in the command range:
0, 1, or 2 |<range>|
• count: (number) Any count supplied |<count>|
• reg: (string) The optional register, if specified |<reg>|
• mods: (string) Command modifiers, if any |<mods>|
• smods: (table) Command modifiers in a structured format. ]]

command(
  'Clone',
  function(args)
    local o, Job = b4.pequire('plenary.job')
    if not o then
      b4.nerror('Plenary job could not be found, cannot spawn git process.')
    end

    Job:new({
      command = 'git',
      args = {
        'clone',
        [[--depth]],
        '1',
        args.args
      },
      on_stderr = function(err, data)
        if err then
          b4.ninfo(err)
        end

        if data then
          b4.ninfo(data)
        end
      end,
    }):start()
  end,
  { nargs = 1 }
)
