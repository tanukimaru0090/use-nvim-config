function SetShareKeyMap()
  
-- [[Use Keymaps]]

-- Ctrl-Sで保存する(Windows)
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {noremap = true})
-- Space-S二回で保存する(Unix)
vim.api.nvim_set_keymap('n', '<leader>s', ':w ++ff=unix<CR>', {noremap = true})
-- Space-tで次のタブに移動
vim.api.nvim_set_keymap('n', '<leader>t', ':tabnext<CR>', {noremap = true})
-- Space-Tで前ののタブに移動
vim.api.nvim_set_keymap('n', '<leader>T', ':tabprev<CR>', {noremap = true})


--Escapeでターミナルを抜ける
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap = true})

end
