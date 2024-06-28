return {
  "stevearc/oil.nvim",
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    require("oil").setup({
      columns = { "icon" },
      view_options = {
        show_hidden = true,
      },
    })

    -- vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Oppen parent directory" })

    vim.keymap.set("n", "-", require("oil").toggle_float)
  end,
}
