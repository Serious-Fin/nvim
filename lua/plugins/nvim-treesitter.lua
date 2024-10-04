return {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = { "bash", "c", "cpp", "css", "csv", "dockerfile", "elixir", "gitignore", "gitcommit", "go", "gomod", "gosum", "html", "javascript", "java", "json", "lua", "php", "python", "rust", "sql", "svelte", "typescript", "vim", "zig", "vimdoc", "query", "heex"},
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
        })
    end
}

