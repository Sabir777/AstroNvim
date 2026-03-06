return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff = {
          mason = false,  -- не устанавливать через Mason
        },
      },
    },
  },
}
