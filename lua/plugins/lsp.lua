return {
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup({})
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = { 'lua_ls', 'gopls', 'ruff', 'jedi_language_server' }, -- Specify servers to auto-install
        handlers = {
          function(server_name)
            require('lspconfig')[server_name].setup({})
          end,
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
  },
}

