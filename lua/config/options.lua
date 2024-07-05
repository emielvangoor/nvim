-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- enable for topbar with filename
-- vim.opt.winbar = "%=%m %f"
vim.opt.winbar = "   %f%=%m "

-- vim.opt.winbar = ""

vim.opt.number = true -- no line numbers
vim.opt.relativenumber = true -- no rel. line numbers
vim.opt.clipboard = "unnamedplus"
vim.opt.listchars = "tab:  " --  Show dots as tab chars

vim.o.tabstop = 2 -- A TAB character looks like 4 spaces
vim.o.expandtab = false -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 2 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 2 -- Number of spaces inserted when indenting
vim.o.so = 5 -- number of lines before the cursor stops moving towards the top or bottom of the screen

vim.g.root_spec = { "cwd" } -- Change the root to only the current working dir

-- Create command to open Finder
vim.api.nvim_create_user_command("Rfinder", function()
  local path = vim.api.nvim_buf_get_name(0)
  os.execute("open -R " .. path)
end, {})
