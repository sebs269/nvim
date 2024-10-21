return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = function()
    require('lualine').setup{
    options = {
      icons_enabled = true,
      disabled_filetypes = {'alpha'},
      --fmt = string.lower,
      --component_separators = '',
      --section_separators = '',
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch'},
      lualine_x = {'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
    },
  }
  end
}
