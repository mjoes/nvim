local o = vim.o
local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

require("config.lazy")
require('mason').setup({})
require('mason-lspconfig').setup({
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

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- or                              , branch = '0.1.x',
vim.cmd("colorscheme kanagawa")

-- Indenting
o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2
