require('lint').linters_by_ft = {
  ruby = { 'ruby', } -- "rubocop" }
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
