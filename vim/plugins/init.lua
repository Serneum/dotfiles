return {
	{ "wbthomason/packer.nvim" },
	-- My plugins here
	{ "rcarriga/nvim-notify" },
	{ "lewis6991/gitsigns.nvim" },
	{
		"akinsho/toggleterm.nvim",
		config = true,
	},
	{
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup({
				-- your configuration comes here
				-- or leave it empty to the default settings
				-- refer to the configuration section below
			})
		end,
	},
	{
		"jdhao/whitespace.nvim",
		event = "VimEnter",
	},
	{ "sitiom/nvim-numbertoggle" },
	{ "mfussenegger/nvim-lint" },
	-- Show location of errors
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"hrsh7th/nvim-cmp", -- Autocompletion plugin
		"hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
		"saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
		"L3MON4D3/LuaSnip", -- Snippets plugin
	},
	{ "vim-airline/vim-airline" },
	{ "vim-airline/vim-airline-themes" },

	-- Git Blame
	{ "APZelos/blamer.nvim" },
	{ "xiyaowong/transparent.nvim" },
}
