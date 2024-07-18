return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').setup{
      pickers = {
        git_files = {
          theme = "ivy"
        },
        live_grep = {
          theme = "ivy"
        }
      }
    }
  end
}
