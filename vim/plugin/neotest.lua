require("neotest").setup({
	adapters = {
		require("neotest-rspec"),
	},
})
vim.keymap.set("n", "<leader>T", function()
	require("neotest").run.run(vim.fn.expand("%"))
end)
vim.keymap.set("n", "<leader>t", function()
	require("neotest").run.run()
end)
vim.keymap.set("n", "<leader>wT", function()
	require("neotest").watch.toggle(vim.fn.expand("%"))
end)
