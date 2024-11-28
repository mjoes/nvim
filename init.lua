require("mappings")
require("config.lazy")
require('config.lspconfig')

vim.opt.runtimepath:append("/home/mortenslingsby/.config/nvim/lua")
vim.opt.termguicolors = true
vim.opt.hidden = true;
vim.opt.number = true;
vim.opt.relativenumber = true;
vim.opt.clipboard = 'unnamedplus'
-- vim.g.clipboard = {
--     name = "pbcopy",
--     copy = {
--         ["+"] = "pbcopy",
--         ["*"] = "pbcopy",
--     },
--     paste = {
--         ["+"] = "pbpaste",
--         ["*"] = "pbpaste",
--     },
--     cache_enabled = 0,
-- }

-- Indenting
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.softtabstop = 2

