local M = {}

function M.setup(opts)
  local config = require("neonotes.config")
  config.setup(opts)
end

function M.createNote()
  local config = require("neonotes.config")
  local core = require("neonotes.core")
  local today = os.date("%d-%m-%Y")
  local filename = config.options.notes_prefix .. today .. ".txt"

  core.createNote(filename)
end

return M
