return {
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		keys = {
			{ "<A-S-Tab>", "<Cmd>BufferPrevious<CR>", { noremap = true, silent = true } },
			{ "<A-Tab>", "<Cmd>BufferNext<CR>", { noremap = true, silent = true } },
		},
	},
}
