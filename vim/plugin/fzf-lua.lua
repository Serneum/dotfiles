local fzf_opts = { fzf_opts = {['--layout'] = 'reverse-list'} }
vim.keymap.set("n", "<c-P>", "<cmd>lua require('fzf-lua').files(fzf_opts)<CR>", { silent = true })
