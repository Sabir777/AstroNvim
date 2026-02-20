
-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics = { virtual_text = true, virtual_lines = false }, -- diagnostic settings on startup
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- passed to `vim.filetype.add`
    filetypes = {
      -- see `:h vim.filetype.add` for usage
      extension = {
        foo = "fooscript",
      },
      filename = {
        [".foorc"] = "fooscript",
      },
      pattern = {
        [".*/etc/foo/.*"] = "fooscript",
      },
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = false, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap
        scrolloff = 5,
        textwidth = 120,
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- mappings seen under group name "Buffer"
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,

        -- Вставка из глобального буфера в nvim
        [",v"] = { '"+p', desc = "Paste from clipboard" },
        -- Перемещение в начало и конец строки
        [",j"] = { "^", desc = "Go to beginning of line" },
        [",k"] = { "$", desc = "Go to end of line" },
        -- Выделить весь текст в документе
        ["<C-a>"] = { "ggVG", desc = "Go to beginning of line" },
        -- магический поиск вперед
        ["/"] = { "/\\v", desc = "Search with magic" },
        -- магический поиск назад
        ["?"] = { "?\\v", desc = "Search with magic back" },
      },
      v = {
        -- Копирование в глобальный буфер обмена (visual mode)
        ["<C-c>"] = { '"+y', desc = "Copy to clipboard" },
        -- Вставка из глобального буфера обмена (visual mode)
        [",v"] = { '"+p', desc = "Paste from clipboard" },
        -- Перемещение в начало строки
        [",j"] = { "^", desc = "Go to beginning of line" },
        -- Перемещение в конец строки
        [",k"] = { "$", desc = "Go to end of line" },
      },
      c = {
        -- Вставка из глобального буфера обмена (cmd mode)
        [",v"] = { "<C-r>+", desc = "Paste from clipboard in cmdline" },
      },
    },
  },
}
