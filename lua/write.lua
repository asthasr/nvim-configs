-- Toggles between Goyo (large margins), Limelight (dimmed non-focused text) and
-- soft wrapping (via vim-pencil). Bound to the command 'Write'.
local M = {}

M.write_on = function()
  vim.cmd('Goyo')
  vim.cmd('Limelight')
  vim.cmd('PencilSoft')
  M.write = M.write_off
end

M.write_off = function()
  vim.cmd('Goyo')
  vim.cmd('Limelight!')
  vim.cmd('PencilOff')
  M.write = M.write_on
end

M.write = M.write_on

return M
