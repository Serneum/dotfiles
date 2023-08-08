require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "dockerls", "docker_compose_language_service", "elixirls", "lua_ls", "solargraph" }
}

require("mason-lspconfig").setup_handlers {
  function (server_name)
    require("lspconfig")[server_name].setup {}
  end
}
