require 'plugins'

vim.api.nvim_set_keymap('i', '<c-j>', '<esc>', { noremap = true })

vim.api.nvim_set_keymap('n', 'nt', ':NERDTreeToggle', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-p>', ':Telescope find_files<cr>', { noremap = true })

vim.wo.number = true
vim.wo.cursorline = true

vim.opt.encoding = 'utf-8'

vim.opt.list = true
vim.opt.listchars = { trail = '~', tab = '>~' }
vim.opt.swapfile = false

vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.fileencodings = 'utf-8,euc-jp,latin1'
