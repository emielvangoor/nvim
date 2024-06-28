-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- enable for topbar with filename
-- vim.opt.winbar = "%=%m %f"
vim.opt.winbar = ""

vim.opt.clipboard = "unnamedplus"

vim.o.tabstop = 2 -- A TAB character looks like 4 spaces
vim.o.expandtab = false -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 2 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 2 -- Number of spaces inserted when indenting
vim.opt.listchars = "tab:. " --  Show dots as tab chars

vim.o.so = 999
