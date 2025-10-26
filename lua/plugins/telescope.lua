return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		dependencies = {
			'nvim-lua/plenary.nvim',
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
			{ "nvim-tree/nvim-web-devicons", opts = {} },
		},
		opts = {},
		config = function()
			require("telescope").load_extension("fzf")
		end,
		keys = {
			{
				"<Leader>p",
				function()
					require("telescope.builtin").find_files()
				end,
				desc = "Find files",
			},
			{
				"<Leader>f",
				function()
					require("telescope.builtin").live_grep()
				end,
				desc = "Live grep",
			},
		},
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup {
			  extensions = {
				["ui-select"] = {
				  require("telescope.themes").get_dropdown {
				  }
				}
			  }
			}
			require("telescope").load_extension("ui-select")
		end
	}
}
