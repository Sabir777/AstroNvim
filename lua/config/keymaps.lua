-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Копировать в глобальный буфер обмена
vim.keymap.set("v", "<C-c>", '"+y', { desc = "Copy to clipboard" })

-- Вставить из глобального буфера обмена
vim.keymap.set({"n", "v"}, ",v", '"+p', { desc = "Paste from clipboard" })
vim.keymap.set("c", ",v", "<C-r>+", { desc = "Paste from clipboard in cmdline" })
