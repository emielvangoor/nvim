-- enable for topbar with filename
--vim.opt.winbar = ""

vim.opt.number = true -- no line numbers
vim.opt.relativenumber = false -- no rel. line numbers
vim.opt.clipboard = "unnamedplus"
vim.opt.listchars = "tab:  " --  Show dots as tab chars

vim.o.tabstop = 2 -- A TAB character looks like 4 spaces
vim.o.expandtab = false -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 2 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 2 -- Number of spaces inserted when indenting
vim.o.so = 5 -- number of lines before the cursor stops moving towards the top or bottom of the screen
--vim.o.so = 999 -- keep cursor in the middle

vim.opt.shell = "/opt/homebrew/bin/fish" -- set shell to ZSH

vim.g.root_spec = { "cwd" } -- Change the root to only the current working dir

-- Code folding with treesitter
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.cmd([[ set nofoldenable]])

-- Create command to open Finder
vim.api.nvim_create_user_command("Rfinder", function()
  local path = vim.api.nvim_buf_get_name(0)
  os.execute("open -R " .. path)
end, {})

vim.o.cmdheight = 0

-- no line numbers in Terminal
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  command = "setlocal nonumber norelativenumber",
})

vim.g.lazyvim_php_lsp = "intelephense"

vim.g.snacks_animate = false --disable the stupid animations
