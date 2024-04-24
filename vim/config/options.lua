-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.list = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.autoindent = true
opt.clipboard = "unnamed"
opt.number = true
opt.wrap = true

vim.g.blamer_enabled = 1
vim.g.blamer_delay = 500

vim.g.mapleader = "\\"

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.nord_contrast = true

-- Nvim Tree configuration
vim.api.nvim_create_autocmd({ "VimEnter" }, {
	callback = function(data)
		-- buffer is a real file on the disk
		local real_file = vim.fn.filereadable(data.file) == 1

		-- buffer is a [No Name]
		local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

		if not real_file and not no_name then
			return
		end

		-- open the tree, find the file but don't focus it
		-- require("nvim-tree.api").tree.toggle({ focus = false, find_file = true })
		vim.cmd("Neotree")
	end,
})
