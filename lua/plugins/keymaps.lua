return {
  vim.keymap.set('i', 'jj', '<ESC>'),
  vim.keymap.set('n', '<leader>e', '<Cmd>:Neotree toggle<CR>', { desc = 'Toggle Neo-tree'}),
  vim.keymap.set('n', '<C-f>', '<Cmd>:Neotree focus<CR>', { desc = 'Focus Neo-tree'}),
  -- Shift + l goes to the next buffer
  vim.keymap.set('n', '<S-l>', '<Cmd>bnext<CR>', { desc = 'Next buffer' }),

  -- Shift + h goes to the previous buffer
  vim.keymap.set('n', '<S-h>', '<Cmd>bprevious<CR>', { desc = 'Previous buffer' }),
  vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Switch window - up'}),
  vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Switch window - left'}),
  vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Switch window - right'}),
  vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Switch window - down'}),

  vim.keymap.set('n', '<leader>bd', function()
    local cur_buf = vim.api.nvim_get_current_buf()
    vim.cmd('bprevious')
    
    -- Only delete if we actually moved to a different buffer
    if cur_buf ~= vim.api.nvim_get_current_buf() then
      vim.cmd('bdelete ' .. cur_buf)
    else
      -- If it was the very last buffer, open a fresh one before deleting
      vim.cmd('enew')
      vim.cmd('bdelete ' .. cur_buf)
    end
  end, { desc = "Safely close buffer and move left" })
}
