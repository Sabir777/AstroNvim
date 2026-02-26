-- Мои маппинги nvim

-- Сохраниться
vim.keymap.set("n", "<C-ы>", ":w<CR>", { desc = "Save" })
-- Сохраниться и выйти
vim.keymap.set("n", "ЯЯ", "ZZ", { desc = "Save and Exit" })

-- Копировать в глобальный буфер обмена
vim.keymap.set("v", "<C-c>", '"+y', { desc = "Copy to clipboard" })
vim.keymap.set("v", "<C-с>", '"+y', { desc = "Copy to clipboard" })

-- Вставить из глобального буфера обмена
vim.keymap.set({"n", "v"}, ",v", '"+p', { desc = "Paste from clipboard" })
vim.keymap.set({"n", "v"}, ",м", '"+p', { desc = "Paste from clipboard" })
vim.keymap.set("c", ",v", "<C-r>+", { desc = "Paste from clipboard in cmdline" })
vim.keymap.set("c", ",м", "<C-r>+", { desc = "Paste from clipboard in cmdline" })

-- Перемещение в начало строки
vim.keymap.set("n", "H", "^", { desc = "Start of line" })
vim.keymap.set("n", "Р", "^", { desc = "Start of line" })

-- Перемещение в конец строки
vim.keymap.set("n", "L", "$", { desc = "End of line" })
vim.keymap.set("n", "Д", "$", { desc = "End of line" })

-- Перемещение в предыдущий буфер
vim.keymap.set("n", "<leader>i", ":bp<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>ш", ":bp<CR>", { desc = "Previous buffer" })

-- Перемещение в последующий буфер
vim.keymap.set("n", "<leader>o", ":bn<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>щ", ":bn<CR>", { desc = "Next buffer" })

-- Выделяю весь документ
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })
vim.keymap.set("n", "<C-ф>", "ggVG", { desc = "Select all" })

-- Копировать строку от текущего символа и до конца строки
vim.keymap.set("n", "Y", "y$", { desc = "Copy to end" })
vim.keymap.set("n", "Н", "y$", { desc = "Copy to end" })

-- Магический поиск по-умолчанию
vim.keymap.set("n", "/", "/\\v", { desc = "Search with magic" })
vim.keymap.set("n", "?", "?\\v", { desc = "Search backward with magic" })

-- Отключить подсветку после поиска
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear search highlight" })
vim.keymap.set("n", "<leader>р", ":nohlsearch<CR>", { desc = "Clear search highlight" })

-- Возвращаю поведение по-умолчанию на клавишу s
vim.keymap.set("n", "s", "s", { desc = "Substitute char", noremap = true })
vim.keymap.set("n", "ы", "s", { desc = "Substitute char", noremap = true })

-- Выполняю поиск символа не по строке а по всему документу
vim.keymap.set("n", "f", function() require("flash").jump() end, { desc = "Flash jump" })
vim.keymap.set("n", "а", function() require("flash").jump() end, { desc = "Flash jump" })

