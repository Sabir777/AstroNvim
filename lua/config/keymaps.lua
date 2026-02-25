-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Копировать в глобальный буфер обмена
vim.keymap.set("v", "<C-c>", '"+y', { desc = "Copy to clipboard" })

-- Вставить из глобального буфера обмена
vim.keymap.set({"n", "v"}, ",v", '"+p', { desc = "Paste from clipboard" })
vim.keymap.set("c", ",v", "<C-r>+", { desc = "Paste from clipboard in cmdline" })

-- Перемещение в начало и конец строки
vim.keymap.set("n", "H", "^", { desc = "Start of line" })
vim.keymap.set("n", "L", "$", { desc = "End of line" })

-- Перемещение в предыдущий и последующий буферы
vim.keymap.set("n", "<leader>i", ":bp<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>o", ":bn<CR>", { desc = "Next buffer" })

-- Выделяю весь документ
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })

-- Копировать строку от текущего символа и до конца строки
vim.keymap.set("n", "Y", "y$", { desc = "Copy to end" })
