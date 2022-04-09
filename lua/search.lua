local a = vim.api
local o = vim.opt

-- CtrlP-like bindings
o.rtp:append '~/.fzf'  -- adds fzf to vim search path
a.nvim_set_keymap('n', '<C-p>', ':FZF<cr>', { silent = true })
a.nvim_set_keymap('n', '<leader><C-p>', ':Buffers<cr>', { silent = true })

-- More general bindings
a.nvim_set_keymap('n', '<leader>fb', ':Buffers<cr>', { silent = true })
a.nvim_set_keymap('n', '<leader>fc', ':Colors<cr>', { silent = true })
a.nvim_set_keymap('n', '<leader>ff', ':Files<cr>', { silent = true })
a.nvim_set_keymap('n', '<leader>fg', ':GFiles<cr>', { silent = true })
a.nvim_set_keymap('n', '<leader>fr', ':Rg<cr>', { silent = true })
