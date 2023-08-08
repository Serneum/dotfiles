require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "elixir", "javascript", "json", "lua", "ruby", "vim", "yaml" },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true
  }
}
