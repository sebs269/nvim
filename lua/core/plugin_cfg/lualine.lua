require('lualine').setup {
  options = {
    icons_enabled = true,
    -- theme = 'kanagawa',
    theme = 'nightfox',
    disabled_filetypes = { 'packer', 'NvimTree' }
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}
