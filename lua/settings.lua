local o = vim.opt
local a = vim.api


---- Indentation and tabs ------------------------------------------------------
o.expandtab = true
o.shiftround = true
o.shiftwidth = 4
o.softtabstop = 4
o.tabstop = 8


---- General Settings ----------------------------------------------------------
o.exrc = true
o.regexpengine = 1
o.textwidth = 80


---- Colors and Display --------------------------------------------------------
o.number = true
o.relativenumber = true

o.termguicolors = true
o.fillchars:append 'vert: '  -- removes vertical bars from splits


---- Ergonomics ----------------------------------------------------------------
o.foldmethod = 'syntax'
vim.keymap.set('n', '<leader>bb', ':new<cr>', { silent = true })
vim.keymap.set('n', '<leader>bd', ':bdelete<cr>', { silent = true })
vim.keymap.set('n', '<leader>bn', ':bnext<cr>', { silent = true })
vim.keymap.set('n', '<leader>bp', ':bprev<cr>', { silent = true })

-- Escape from insert mode without pressing escape
vim.keymap.set('i', 'jj', '<Esc>`^', { silent = true, noremap = true })

-- Load snippets
require("luasnip.loaders.from_snipmate").lazy_load()

---- LSP Action Bindings -------------------------------------------------------
a.nvim_create_autocmd('LspAttach', {
  group = a.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<leader>.', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<C-.>', vim.lsp.buf.signature_help, opts)
  end,
})

---- External Utilities --------------------------------------------------------
o.grepprg = "rg --color=never"


---- Writing Mode --------------------------------------------------------------
vim.cmd'command! Write lua require("write").write()'
