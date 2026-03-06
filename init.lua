-- Для stylua из cargo
vim.env.PATH = vim.env.HOME .. "/.cargo/bin:" .. vim.env.PATH

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
