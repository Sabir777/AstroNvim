-- lua/plugins/sql.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        sqlls = {
          enabled = false,
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        sql = { "sqlfluff" },
      },
      formatters = {
        sqlfluff = {
          command = "sqlfluff",
          args = { "fix", "-" },
          stdin = true,
        },
      },
      format_on_save = {
        timeout_ms = 5000,
        lsp_fallback = false,
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        sql = { "sqlfluff" },
      },
    },
  },
}
