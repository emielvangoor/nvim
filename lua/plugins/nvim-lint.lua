return {
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        php = {}, -- Disable all linters for PHP
      },
    },
  },
}
