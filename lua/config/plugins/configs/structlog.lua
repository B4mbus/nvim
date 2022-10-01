return {
  'Tastyep/structlog.nvim',
  config = function ()
    local log = require("structlog")

    local logger = log.Logger("B4mbus global logger", {
      log.sinks.File(
        log.level.TRACE,
        require('plenary.path'):new(vim.fn.stdpath('log')):joinpath('b4_log.log').filename,
        {
          processors = {
            log.processors.Namer(),
            log.processors.Timestamper("%H:%M:%S"),
          },
          formatter = log.formatters.Format( --
            "%s [%s] %s: %-30s",
            { "timestamp", "level", "logger_name", "msg" }
          ),
        }
      ),
    })
  end
}
