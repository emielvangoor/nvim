-- return {
--   "gambhirsharma/vesper.nvim",
--   lazy = false,
--   priority = 1000,
--   name = "vesper",
--   config = function()
--     vim.cmd([[colorscheme vesper]])
--   end,
-- }

return {
  "datsfilipe/vesper.nvim",
  config = function()
    require("vesper").setup({
      transparent = true,
    })
  end,
}
