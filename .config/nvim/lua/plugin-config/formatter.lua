-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format and FormatWrite commands

local prettierd_conf = {
       function()
          return {
            exe = "prettierd",
            args = {vim.api.nvim_buf_get_name(0)},
            stdin = true
          }
        end
}

require('formatter').setup {
  filetype = {
    javascript = prettierd_conf,
    javascriptreact = prettierd_conf,
    typescript = prettierd_conf,
    typescriptreact = prettierd_conf,
    css = prettierd_conf,
    json = prettierd_conf,
    -- other formatters ...
  }
}
