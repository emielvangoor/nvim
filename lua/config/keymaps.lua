-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<Leader>fs", ":w<CR>", { silent = true, desc = "Save file" })

-- Map down arrow to }
vim.api.nvim_set_keymap("n", "<Down>", "}", { noremap = true })

-- Map up arrow to {
vim.api.nvim_set_keymap("n", "<Up>", "{", { noremap = true })
