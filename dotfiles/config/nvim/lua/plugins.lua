vim.cmd 'packadd packer.nvim'
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'

require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'preservim/nerdtree'

  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'

  use {
    'shaunsingh/nord.nvim',
    config = 'require"config.nord"'
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = 'require"config.telescope"'
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = 'require"config.lualine"'
  }

  use 'fatih/vim-go'
  use 'Yggdroot/indentLine'
end)
