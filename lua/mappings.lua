local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }
vim.g.mapleader = " "

map('n', '<leader>e', ':NvimTreeToggle<CR>', options)
map('i', 'jk', '<Esc>', options)
map('n', '<C-h>', '<C-w>h', options)
map('n', '<C-j>', '<C-w>j', options)
map('n', '<C-k>', '<C-w>k', options)
map('n', '<C-l>', '<C-w>l', options)
map('n', '<leader>sw', ":%s/\\s\\+$//e<CR>", options)
map('n', '<leader>t', ':rightbelow :vsplit | terminal<CR>', options)
map('n', 'gb', ':BufferLinePick<CR>', options)
map('n', 'gD:bnext<CR>', ':BufferLinePickClose<CR>', options)
map('n', '<leader>x', ':bd<CR>', options)
map('n', '<Tab>', ':bnext<CR>', options)
map('n', '<S-Tab>', ':bprev<CR>', options)

print("Keybindings loaded!")
