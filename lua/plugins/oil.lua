return {
  "stevearc/oil.nvim",
  opts = {},
  -- Optional dependencies
  --dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    require("oil").setup({
      default_file_explorer = true,
      skip_confirm_for_simple_edits = true,
      delete_to_trash = true,
      columns = {},
      natural_order = true,

      preview = {
        max_width = 0.5,
        max_height = 0.5,
      },

      keymaps = {
        ["g?"] = "actions.show_help",
        ["<CR>"] = "actions.select",
        ["<C-s>"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" },
        ["<C-h>"] = { "actions.select", opts = { horizontal = true }, desc = "Open the entry in a horizontal split" },
        ["<C-t>"] = { "actions.select", opts = { tab = true }, desc = "Open the entry in new tab" },
        ["<C-p>"] = "actions.preview",
        ["<C-c>"] = "actions.close",
        ["<ESC>"] = "actions.close",
        ["<C-l>"] = "actions.refresh",
        ["-"] = "actions.parent",
        ["_"] = "actions.open_cwd",
        ["`"] = "actions.cd",
        ["~"] = { "actions.cd", opts = { scope = "tab" }, desc = ":tcd to the current oil directory", mode = "n" },
        ["gs"] = "actions.change_sort",
        ["gx"] = "actions.open_external",
        ["g."] = "actions.toggle_hidden",
        ["g\\"] = "actions.toggle_trash",
      },

      view_options = {
        show_hidden = true,
        is_always_hidden = function(name, _)
          return name == ".." or name == ".git"
        end,
      },
    })

    vim.keymap.set("n", "-", "<CMD>Oil <CR>", { desc = "Open parent directory" })

    -- vim.keymap.set("n", "-", require("oil").toggle_float)
  end,
}
