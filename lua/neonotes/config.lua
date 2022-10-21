local M = {}

M.defaults = {
  notes_prefix = 'note',
  notes_path = os.getenv("HOME") .. '/notes/',
}

M.options = {}

function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

return M
