-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Возвращаю обычную нумерацию строк
vim.opt.number = true
vim.opt.relativenumber = false

-- Делаю визуальный отступ для курсора от границ экрана
vim.opt.scrolloff = 5
-- Задаю ширину строки
vim.opt.textwidth = 120

-- Включаю русский язык
vim.opt.langmap = "ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\\"ZXCVBNM<>"
