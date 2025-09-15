function smooth_scroll(direction)
  local count = 7 -- Number of lines to scroll
  local delay = 20 -- Delay in milliseconds between each scroll step

  local function scroll_step()
    if count > 0 then
      if direction == "down" then
        vim.cmd("normal! j") -- Move one line down
      elseif direction == "up" then
        vim.cmd("normal! k") -- Move one line up
      end
      count = count - 1
      vim.defer_fn(scroll_step, delay)
    end
  end

  scroll_step()
end

-- -- Map the <Down> and <Up> keys to trigger smooth scrolling
vim.api.nvim_set_keymap("n", "<Down>", ":lua smooth_scroll('down')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Up>", ":lua smooth_scroll('up')<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<Leader>fs", ":w<CR>", { remap = true, silent = true, desc = "Save file" })
vim.api.nvim_set_keymap("n", "<Leader>uu", ":UndotreeToggle<CR>", { noremap = true })

-- tmux navigator
vim.keymap.set("n", "<C-h>", "<Cmd>TmuxNavigateLeft<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "<Cmd>TmuxNavigateDown<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "<Cmd>TmuxNavigateUp<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<Cmd>TmuxNavigateRight<CR>", { silent = true })

-- Testing \ and | to split
vim.keymap.set("n", "\\", ":vsplit<CR>", { remap = true, silent = true, desc = "Split Right" })
vim.keymap.set("n", "|", ":split<CR>", { remap = true, silent = true, desc = "Split Bottom" })
-- pressing X to close window, this will work great with the quit open of spits
vim.api.nvim_set_keymap("n", "X", ":quit<CR>", { silent = true, desc = "Quit Window" })

-- double tap ; to call command line
vim.api.nvim_set_keymap("n", ";;", ":", { noremap = true, desc = "Double tap for cmdline" })

-- vim.api.nvim_set_keymap(
--   "n",
--   "<Leader>ss",
--   ":Telescope treesitter<CR>",
--   { silent = true, noremap = true, desc = "Treesitter Symbols" }
-- )

-- on gv do a goto definition in new vsplit window
vim.api.nvim_set_keymap(
  "n",
  "gv",
  ":vsplit | lua vim.lsp.buf.definition()<CR>",
  { silent = true, desc = "[G]oto definition [V]split" }
)

-- Map * to search for the word under the cursor using current_buffer_fuzzy_find
-- vim.keymap.set("n", "*", function()
--   require("telescope.builtin").current_buffer_fuzzy_find({ default_text = vim.fn.expand("<cword>") })
-- end, { noremap = true, silent = true })
