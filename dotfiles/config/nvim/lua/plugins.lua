vim.cmd[[packadd packer.nvim]]

require'packer'.startup(function()
  use 'wbthomason/packer.nvim'
  use 'preservim/nerdtree'

  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'

  use 'arcticicestudio/nord-vim'
end)

vim.cmd[[colorscheme nord]]
