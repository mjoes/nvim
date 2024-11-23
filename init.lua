local o = vim.o
local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

require("config.lazy")
require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensure_installed = {'lua_ls', 'gopls'},
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})
map('n', '<leader>e', ':NvimTreeToggle<CR>', options)
map('i', 'jk', '<Esc>', options)
map('n', '<C-h>', '<C-w>h', options)
map('n', '<C-j>', '<C-w>j', options)
map('n', '<C-k>', '<C-w>k', options)
map('n', '<C-l>', '<C-w>l', options)
map('n', '<leader>sw', ":%s/\\s\\+$//e<CR>", options)
map('n', '<leader>t', ':rightbelow :vsplit | terminal<CR>', options)

vim.cmd("colorscheme kanagawa")
-- Indenting
o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2
