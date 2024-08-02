vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require('nvim-tree').setup({
  view = {
    side = "left",
    width = 50,
  },
  update_focused_file = {
    enable = true,
    -- update_root = true,
  }
})

vim.keymap.set('n', "<F2>", ":NvimTreeFindFileToggle<CR>")
