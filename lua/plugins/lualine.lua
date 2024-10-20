return {
  'nvim-lualine/lualine.nvim',
  lazy = "true",
  event = "BufAdd",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup{
    options = {
      icons_enabled = true,
      --component_separators = '',
      --section_separators = '',
    },
  }
  end
}
