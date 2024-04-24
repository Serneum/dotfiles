local builtin = require("telescope.builtin")

return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	requires = { "nvim-lua/plenary.nvim" },
	opts = {
		defaults = {
			sorting_strategy = "ascending",
		},
	},
	keys = {
		{ "C-u", false },
		{
			"<leader>fg",
			function()
				builtin.live_grep({})
			end,
			desc = "Grep Files",
		},
		{
			"<leader>ff",
			function()
				builtin.find_files({})
			end,
			desc = "Find Files",
		},
		{
			"<leader>fb",
			function()
				builtin.buffers({})
			end,
			desc = "Find Buffers",
		},
		{
			"<leader>fh",
			function()
				builtin.help_tags({})
			end,
			desc = "Find Help Tags",
		},
	},
}
