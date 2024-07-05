return {
  -- { "datsfilipe/vesper.nvim" },
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   config = function()
  --     require("catppuccin").setup({
  --       flavour = "mocha",
  --       background = { -- :h background
  --         light = "latte",
  --         dark = "mocha",
  --       },
  --     })
  --   end,
  -- },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      -- colorscheme = "tokyonight-night",
      -- colorscheme = "vesper",
      -- colorscheme = "cyberdream",
    },
  },
}
