return {
  vim.keymap.set('i', 'jj', '<ESC>'),
  vim.keymap.set('n', '<leader>e', '<Cmd>:Neotree toggle<CR>', { desc = 'Toggle Neo-tree'}),
  vim.keymap.set('n', '<C-h>', '<Cmd>:Neotree focus<CR>', { desc = 'Focus Neo-tree'}),
  -- Shift + l goes to the next buffer
  vim.keymap.set('n', '<S-l>', '<Cmd>bnext<CR>', { desc = 'Next buffer' }),

  -- Shift + h goes to the previous buffer
  vim.keymap.set('n', '<S-h>', '<Cmd>bprevious<CR>', { desc = 'Previous buffer' }),
  vim.keymap.set('n', '<C-l>', '<C-w>p', { desc = 'Switch to last active window'})
}
