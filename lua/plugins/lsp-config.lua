return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls", "rust_analyzer" },
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
    	"mason-org/mason.nvim",
    	opts = {}
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config('rust_analyzer', {
				settings = {
					['rust-analyzer'] = {},
				},
			})
			vim.lsp.config('lua_ls', {
				settings = {
					['lua_ls'] = {},
				},
			})

			vim.keymap.set('n', '<Leader>h', vim.lsp.buf.hover, {})
			vim.keymap.set('n', '<Leader>gd', vim.lsp.buf.definition, {})
			vim.keymap.set('n', '<Leader>gi', vim.lsp.buf.implementation, {})
			vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, {})
		end
	}
}
