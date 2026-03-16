-- Мои маппинги nvim

-- Сохраниться
vim.keymap.set("n", "<C-ы>", ":w<CR>", { desc = "Save", noremap = true })
-- Сохраниться и выйти
vim.keymap.set("n", "ЯЯ", "ZZ", { desc = "Save and Exit", noremap = true })

-- Копировать в глобальный буфер обмена
vim.keymap.set("v", "<C-c>", '"+y', { desc = "Copy to clipboard", noremap = true })
vim.keymap.set("v", "<C-с>", '"+y', { desc = "Copy to clipboard", noremap = true })

-- Вставить из глобального буфера обмена
vim.keymap.set({"n", "v"}, ",v", '"+p', { desc = "Paste from clipboard", noremap = true})
vim.keymap.set({"n", "v"}, "бм", '"+p', { desc = "Paste from clipboard", noremap = true })
vim.keymap.set("c", ",v", "<C-r>+", { desc = "Paste from clipboard in cmdline", noremap = true })
vim.keymap.set("c", "бм", "<C-r>+", { desc = "Paste from clipboard in cmdline", noremap = true })

-- Перемещение в начало строки
vim.keymap.set("n", "H", "^", { desc = "Start of line", noremap = true })
vim.keymap.set("n", "Р", "^", { desc = "Start of line", noremap = true })

-- Перемещение в конец строки
vim.keymap.set("n", "L", "$", { desc = "End of line", noremap = true })
vim.keymap.set("n", "Д", "$", { desc = "End of line", noremap = true })

-- Перемещение в предыдущий буфер
vim.keymap.set("n", "<leader>i", ":bp<CR>", { desc = "Previous buffer", noremap = true, silent = true })
vim.keymap.set("n", "<leader>ш", ":bp<CR>", { desc = "Previous buffer", noremap = true, silent = true })

-- Перемещение в последующий буфер
vim.keymap.set("n", "<leader>o", ":bn<CR>", { desc = "Next buffer", noremap = true, silent = true })
vim.keymap.set("n", "<leader>щ", ":bn<CR>", { desc = "Next buffer", noremap = true, silent = true })

-- Выделяю весь документ
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all", noremap = true })
vim.keymap.set("n", "<C-ф>", "ggVG", { desc = "Select all", noremap = true })

-- Копировать строку от текущего символа и до конца строки
vim.keymap.set("n", "Y", "y$", { desc = "Copy to end", noremap = true })
vim.keymap.set("n", "Н", "y$", { desc = "Copy to end", noremap = true })

-- Магический поиск по-умолчанию
vim.keymap.set("n", "/", "/\\v", { desc = "Search with magic", noremap = true })
vim.keymap.set("n", "?", "?\\v", { desc = "Search backward with magic", noremap = true })

-- Отключить подсветку после поиска
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear search highlight", noremap = true })
vim.keymap.set("n", "<leader>р", ":nohlsearch<CR>", { desc = "Clear search highlight", noremap = true })

-- Возвращаю поведение по-умолчанию на клавишу s
vim.keymap.set("n", "s", "s", { desc = "Substitute char", noremap = true })
vim.keymap.set("n", "ы", "s", { desc = "Substitute char", noremap = true })

-- Выполняю поиск символа не по строке а по всему документу
vim.keymap.set("n", ",f", function() require("flash").jump() end, { desc = "Flash jump", noremap = true })
vim.keymap.set("n", "ба", function() require("flash").jump() end, { desc = "Flash jump", noremap = true })

-- Автодополнение
vim.keymap.set("i", "<C-j>", "<C-n>", { desc = "Autocompletion", noremap = true })
vim.keymap.set("i", "<C-о>", "<C-n>", { desc = "Autocompletion", noremap = true })
vim.keymap.set("i", "<C-k>", "<C-p>", { desc = "Autocompletion", noremap = true })
vim.keymap.set("i", "<C-л>", "<C-p>", { desc = "Autocompletion", noremap = true })
