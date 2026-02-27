-- Опции LazyVim

-- Устанавливаю время между нажатиями клавиш в хоткеях
vim.opt.timeoutlen = 1000  -- 1 секунда

-- Возвращаю обычную нумерацию строк
vim.opt.number = true
vim.opt.relativenumber = false

-- Делаю визуальный отступ для курсора от границ экрана
vim.opt.scrolloff = 5

-- Задаю ширину строки
-- vim.opt.textwidth = 120

-- Разрешаю перенос текста без разбивки строки
vim.opt.wrap = true

-- Включаю русский язык
vim.opt.langmap = "ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\\"ZXCVBNM<>"
