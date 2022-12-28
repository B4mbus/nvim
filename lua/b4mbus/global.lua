--- Class for my global helpers
_G.b4 = {}

local function log_base(level)
  --- Issues a notification via vim.notify
  ---@param msg string in string.format format
  ---@vararg any the arguments to format
  return function(msg, ...)
    if msg then
      vim.notify((msg):format(...), level)
    end
  end
end

_G.b4.nerror = log_base(vim.log.levels.ERROR)
_G.b4.nwarn = log_base(vim.log.levels.WARN)
_G.b4.ninfo = log_base(vim.log.levels.INFO)
_G.b4.ntrace = log_base(vim.log.levels.TRACE)

--- Runs pcall on the require() function
---@param name string name of the module
---@return boolean status,table module
_G.b4.pequire = function(name) return pcall(require, name) end

--- Tries to run require(name) and notifies an error if it fails
---@param name string name of the module
---@return boolean status, table module, any...
_G.b4.xpnequire = function(name)
  return xpcall(
    function() return require(name) end,
    function(err)
      local debuginfo = debug.getinfo(6, 'Sl')
      local error_location = ('%s:%s'):format(debuginfo.short_src, debuginfo.currentline)
      b4.nerror(
        'Internal module "%s" could not be loaded.\nCalled from %s\n\n%s',
        name,
        error_location,
        err
      )
    end
  )
end

--- Does vim.inspect on arguments
---@vararg any args
---@return any
_G.b4.I = function(...) return vim.inspect(...) end

--- Does vim.pretty_print on arguments
---@vararg any args
_G.b4.P = function(...) vim.pretty_print(...) end

--- Execute a properly formatted filter
---@param line1 number first line of range
---@param line2 number second line of range
---@param cmd string command
_G.b4.Sx = function(line1, line2, cmd)
  local shellescape = function(cmd)
    return vim.fn.shellescape(cmd, true)
  end

  vim.cmd(
    ('%s,%s!%s'):format(line1, line2, shellescape(cmd))
  )
end
