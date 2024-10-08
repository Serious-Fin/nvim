return {
    {
    "williamboman/mason.nvim",
    config = function()
        require("mason").setup()
    end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "ts_ls", "jsonls", "gopls", "html", "bashls", "clangd", "cssls", "dockerls", "elixirls", "phpactor", "vimls", "sqlls", "svelte", "rust_analyzer", "zls" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.ts_ls.setup({})
            lspconfig.jsonls.setup({})
            lspconfig.gopls.setup({})
            lspconfig.html.setup({})
            lspconfig.bashls.setup({})
            lspconfig.clangd.setup({})
            lspconfig.cssls.setup({})
            lspconfig.dockerls.setup({})
            lspconfig.elixirls.setup({})
            lspconfig.phpactor.setup({})
            lspconfig.pylsp.setup({})
            lspconfig.vimls.setup({})
            lspconfig.sqlls.setup({})
            lspconfig.svelte.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.zls.setup({})

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
