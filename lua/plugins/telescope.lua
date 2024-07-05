local actions = require("telescope.actions")

return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      file_ignore_patterns = {
        "node_modules",
      },
      mappings = {
        i = {
          ["<esc>"] = actions.close,
        },
      },
    },
  },
}
