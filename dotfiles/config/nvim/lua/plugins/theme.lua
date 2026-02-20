return {
  'shaunsingh/nord.nvim',
  priority = 1000,
  config = function()
    vim.g.nord_italic = false
    vim.g.bold = false

    require('nord').set()
    vim.cmd[[colorscheme nord]]
  end,
}
