-- lua/plugins/sql.lua
return {
  -- Форматирование через sqlfluff fix
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        sql = { "sqlfluff" },
      },
      formatters = {
        sqlfluff = {
          command = "sqlfluff",
          args = { "fix", "--force", "-" },
          stdin = true,
        },
      },
      format_on_save = {
        timeout_ms = 5000,
        lsp_fallback = false,
      },
    },
  },

  -- Линтинг через sqlfluff lint
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        sql = { "sqlfluff" },
      },
    },
  },
}
