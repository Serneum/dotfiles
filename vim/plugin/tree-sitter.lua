require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "dockerfile", "elixir", "javascript", "json", "lua", "markdown_inline", "ruby", "vim", "yaml" },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true
  }
}
