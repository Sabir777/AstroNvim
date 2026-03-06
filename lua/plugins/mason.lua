return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- bash
        "bash-language-server",
        "shellcheck",
        "shfmt",

        -- python
        "pyright",
        "debugpy",
        "black",
        "isort",
        -- "ruff",

        -- lua
        "lua-language-server",
        -- "stylua",

        -- sql
        "sqlfluff",
      },
    },
  },
}
