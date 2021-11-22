vim.cmd 'packadd packer.nvim'
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'

require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'preservim/nerdtree'

  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'

  use 'arcticicestudio/nord-vim'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = 'require"config.telescope"'
  }
end)

vim.cmd[[colorscheme nord]]
