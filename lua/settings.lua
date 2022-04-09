local o = vim.opt
local a = vim.api
local g = vim.g

local home = os.getenv("HOME")

---- Indentation and tabs ------------------------------------------------------
o.expandtab = true
o.shiftround = true
o.shiftwidth = 4
o.softtabstop = 4
o.tabstop = 8

---- General Settings ----------------------------------------------------------
o.regexpengine = 1
o.textwidth = 80

---- Colors and Display --------------------------------------------------------
o.number = true
o.relativenumber = true

o.termguicolors = true
o.fillchars:append 'vert: '  -- removes vertical bars from splits

---- Ergonomics ----------------------------------------------------------------
o.foldmethod = 'syntax'
a.nvim_set_keymap('n', '<leader>bb', ':new<cr>', { silent = true })
a.nvim_set_keymap('n', '<leader>bd', ':bdelete<cr>', { silent = true })
a.nvim_set_keymap('n', '<leader>bn', ':bnext<cr>', { silent = true })
a.nvim_set_keymap('n', '<leader>bp', ':bprev<cr>', { silent = true })

-- Escape from insert mode without pressing escape
a.nvim_set_keymap('i', 'jj', '<Esc>`^', { silent = true, noremap = true })

-- Load snippets
require("luasnip.loaders.from_snipmate").lazy_load()

---- External Utilities --------------------------------------------------------
o.grepprg = "rg --color=never"
g.python3_host_prog = home .. "/.local/share/nvim/python3-venv/bin/python"
