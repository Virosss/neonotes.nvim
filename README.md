# Neo Notes
Simple notes for neovim

# Setup
Lua:
```
neonotes.setup{
    notes_prefix = 'note', -- prefix of filenames when create date notes. Ex: note-01.10.2022.txt
    notes_path = '/home/user/notes' -- where to save note files
  }
```

# Keymaps
```
local neonotes = require"neonotes";
vim.keymap.set("n", "cn", function()
  neonotes.createNote()
end)
```
