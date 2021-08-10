require 'plugins'

vim.api.nvim_set_keymap('i', '<c-j>', '<esc>', { noremap = true })

vim.api.nvim_set_keymap('n', 'nt', ':NERDTreeToggle', { noremap = true })

vim.api.nvim_set_option('encoding', 'utf-8')

vim.api.nvim_win_set_option(0, 'number', true)
