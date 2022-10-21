# Neo Notes
Simple notes for neovim

# Setup
Lua:
```
local status_ok, neonotes = pcall(require, "neonotes")
if not status_ok then
  return
end

-- init Neo Notes
neonotes.setup {}

-- Set keymap
vim.keymap.set("n", "cn", function()
  neonotes.createNote()
end)
```
