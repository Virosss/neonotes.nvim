local M = {}
local utils = require("neonotes.utils")
local config = require("neonotes.config")

function M.createNote(filename)
  local dirname = config.options.notes_path
  local date = os.date("%d-%m-%Y")
  local time = os.date("%X")

  local dirExist = utils.exist(dirname)
  if not dirExist then
    utils.createDirectory(dirname)
  end

  local fileExist = utils.exist(dirname .. filename)
  if not fileExist then
    vim.cmd('e ' .. dirname .. filename)
    vim.cmd('norm i# Notes - ' .. date)
  else
    vim.cmd('e ' .. dirname .. filename)
  end

  vim.cmd('norm Go')
  vim.cmd('norm Go## ' .. time)
  vim.cmd('norm Go')
  vim.cmd('startinsert')

end

return M
