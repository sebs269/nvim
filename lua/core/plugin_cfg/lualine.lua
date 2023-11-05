require('lualine').setup {
  options = {
    icons_enabled = true,
    -- theme = 'kanagawa',
    theme = 'nightfox',
    disabled_filetypes = { 'packer', 'NvimTree' },
    component_separators = '',
    section_separators = '',
  },
  sections = {
    lualine_a = {'mode'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
}
