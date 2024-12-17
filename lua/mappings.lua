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
map('n', '<C-7>', 'gcc', { noremap = false, silent = true})
map('v', '<C-7>', 'gc', { noremap = false, silent = true})
map('t', '<leader>q', '<C-\\><C-n>', options)
map('n', '<leader>d', ':lua vim.diagnostic.open_float()<CR>', options)
map('n', '<CR>', '<cmd>FineCmdline<CR>', options)

print("Keybindings loaded!")
