return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
      },
      formatters = {
        stylua = {
          command = vim.fn.expand("~/.cargo/bin/stylua"),
        },
      },
    },
  },
}
