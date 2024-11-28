local lspconfig = require('lspconfig')

local default_on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
end

-- Setup for specific LSPs
lspconfig.lua_ls.setup({
  on_attach = default_on_attach,
  settings = {
    Lua = {
      diagnostics = { globals = { 'vim' } },
    },
  },
})

lspconfig.gopls.setup({
  on_attach = default_on_attach,
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
})

lspconfig.ruff_lsp.setup({
  on_attach = default_on_attach,
  init_options = {
    settings = {
      args = {}
    },
  },
})

