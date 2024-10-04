require("config.lazy")

--  Setup Catppuccin Theme
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin-mocha"

-- Setup Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-f>', builtin.live_grep, { desc = 'Telescope live grep' })

-- Setup Treesitter
local configs = require("nvim-treesitter.configs")

configs.setup({
    ensure_installed = { "bash", "c", "cpp", "css", "csv", "dockerfile", "elixir", "gitignore", "gitcommit", "go", "gomod", "gosum", "html", "javascript", "java", "json", "lua", "php", "python", "rust", "sql", "svelte", "typescript", "vim", "zig", "vimdoc", "query", "heex"},
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },  
})
