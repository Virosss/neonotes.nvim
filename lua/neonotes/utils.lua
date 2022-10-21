local M = {}

function M.exist(file)
  local ok, err, code = os.rename(file, file)
  if not ok then
    if code == 13 then
      return true
    end
  end
  return ok, err
end

function M.createDirectory(dirname)
  os.execute("mkdir -p " .. dirname)
end

return M
