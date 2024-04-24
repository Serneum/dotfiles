local neotest = require("neotest")

return {
	{
		"nvim-neotest/neotest",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			"antoinemadec/FixCursorHold.nvim",
			"olimorris/neotest-rspec",
		},
		opts = {
			adapters = {
				require("neotest-rspec"),
			},
		},
		keys = {
			{
				"<leader>T",
				function()
					neotest.run.run(vim.fn.expand("%"))
				end,
			},
			{
				"<leader>t",
				function()
					neotest.run.run()
				end,
			},
			{
				"<leader>wT",
				function()
					neotest.watch.toggle(vim.fn.expand("%"))
				end,
			},
		},
	},
}
