return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",

  opts = function()
    --=    vim.opt.laststatus = 0

    return {
      options = {
        icons_enabled = false,
        theme = "auto",
        component_separators = { left = " ", right = " " },
        section_separators = { left = " ", right = " " },
        --   disabled_filetypes = {
        --     winbar = { "NVimTree" },
        --   },
        --   ignore_focus = {},
        --   always_divide_middle = true,
        -- globalstatus = true,
        --   refresh = {
        --     statusline = 1000,
        --     tabline = 1000,
        --     winbar = 1000,
        --   },
      },
      -- sections = {
      --   lualine_a = { "mode" },
      --   lualine_b = { "branch", "diagnostics" },
      --   lualine_c = {},
      --   -- lualine_y = {
      --   --   {
      --   --     require("noice").api.status.message.get_hl,
      --   --     cond = require("noice").api.status.message.has,
      --   --   },
      --   --   {
      --   --     require("noice").api.status.command.get,
      --   --     cond = require("noice").api.status.command.has,
      --   --     color = { fg = "#ff9e64" },
      --   --   },
      --   --   {
      --   --     require("noice").api.status.mode.get,
      --   --     cond = require("noice").api.status.mode.has,
      --   --     color = { fg = "#ff9e64" },
      --   --   },
      --   --   {
      --   --     require("noice").api.status.search.get,
      --   --     cond = require("noice").api.status.search.has,
      --   --     color = { fg = "#ff9e64" },
      --   --   },
      --   -- },
      --   lualine_z = {
      --     {
      --       "diff",
      --       colored = true, -- Displays a colored diff status if set to true
      --       diff_color = {
      --         -- Same color values as the general color option can be used here.
      --         added = "LuaLineDiffAdd", -- Changes the diff's added color
      --         modified = "LuaLineDiffChange", -- Changes the diff's modified color
      --         removed = "LuaLineDiffDelete", -- Changes the diff's removed color you
      --       },
      --       symbols = { added = "+", modified = "~", removed = "-" }, -- Changes the symbols used by the diff.
      --       source = nil, -- A function that works as a data source for diff.
      --       -- It must return a table as such:
      --       --   { added = add_count, modified = modified_count, removed = removed_count }
      --       -- or nil on failure. count <= 0 won't be displayed.
      --     },
      --   },
      -- },
      -- inactive_sections = {
      --   lualine_a = {},
      --   lualine_b = {},
      --   lualine_c = { "filename" },
      --   lualine_x = {},
      --   lualine_y = {},
      --   lualine_z = {},
      -- },
      -- tabline = {},
      -- -- winbar = {
      -- --   lualine_c = {
      -- --     {
      -- --       "filename",
      -- --       file_status = true,
      -- --       newfile_status = false,
      -- --       path = 1,
      -- --       symbols = {
      -- --         modified = "[modified]",
      -- --         readonly = "[readonly]",
      -- --         unnamed = "[No Name]",
      -- --         newfile = "[New]",
      -- --       },
      -- --     },
      -- --   },
      -- --   lualine_y = { "progress" },
      -- -- },
      -- -- inactive_winbar = {
      -- --   lualine_c = {
      -- --     {
      -- --       "filename",
      -- --       file_status = true,
      -- --       newfile_status = false,
      -- --       path = 1,
      -- --       symbols = {
      -- --         modified = "[modified]",
      -- --         readonly = "[readonly]",
      -- --         unnamed = "[No Name]",
      -- --         newfile = "[New]",
      -- --       },
      -- --     },
      -- --   },
      -- -- },
      -- extensions = { "neo-tree", "oil", "quickfix", "trouble" },
    }
  end,
}

-- return {
--   "nvim-lualine/lualine.nvim",
--   enabled = false,
--   event = "VeryLazy",
--   init = function()
--     vim.g.lualine_laststatus = vim.o.laststatus
--     if vim.fn.argc(-1) > 0 then
--       -- set an empty statusline till lualine loads
--       vim.o.statusline = " "
--     else
--       -- hide the statusline on the starter page
--       vim.o.laststatus = 0
--     end
--   end,
--   opts = function()
--     -- PERF: we don't need this lualine require madness 🤷
--     local lualine_require = require("lualine_require")
--     lualine_require.require = require
--
--     vim.o.laststatus = vim.g.lualine_laststatus
--
--     local opts = {
--       options = {
--         -- theme = "iceberg_dark",
--         globalstatus = vim.o.laststatus == 3,
--         disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
--       },
--       sections = {
--         lualine_a = { "mode" },
--         lualine_b = { "branch" },
--         lualine_y = {},
--         -- lualine_y = {
--         --   { "progress", separator = " ", padding = { left = 1, right = 0 } },
--         --   { "location", padding = { left = 0, right = 1 } },
--         -- },
--       },
--     }
--
--     return opts
--   end,
-- }
