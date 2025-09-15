require("lspconfig.ui.windows").default_options.border = "single"

require("lspconfig").tailwindcss.setup({})

return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = false,
    },
  },
}
