-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true }
local map = vim.keymap.set

map("t", "<ESC>", "<C-\\><C-n>", opts)

-- opts = { noremap = true, silent = true }
-- map("n", "<A-S-Tab>", "<Cmd>BufferPrevious<CR>", opts)
-- map("n", "<A-Tab>", "<Cmd>BufferNext<CR>", opts)
