local global = vim.g

global.mapleader = " " -- Maps <Leader> key which is used for user defined key mappings

-- Remap vim shortcuts to use <Leader> key for convenience
vim.keymap.set('n', '<Leader>w', ':w<CR>')
vim.keymap.set('n', '<Leader>q', ':q<CR>')
vim.keymap.set('n', '<Leader>wq', ':wq<CR>')

-- Block arrow keys
vim.keymap.set("n", "<left>", function() print("Use h to move...") end)
vim.keymap.set("n", "<up>", function() print("Use k to move...") end)
vim.keymap.set("n", "<right>", function() print("Use l to move...") end)
vim.keymap.set("n", "<down>", function() print("Use j to move...") end)
