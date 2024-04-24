return {
	{
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
		opts = {
			ensure_installed = {
				"dockerfile",
				"elixir",
				"javascript",
				"json",
				"lua",
				"markdown_inline",
				"ruby",
				"vim",
				"yaml",
			},

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = true,
			},
		},
	},
}
