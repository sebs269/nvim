vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup()
-- require('nvim-tree').setup({
--     renderer = {
--         icons = {
--             show = {
--                 file = false,
--                 folder = false,
--                 folder_arrow = false,
--                 git = false
--             }
--         }
--     }
-- })

vim.keymap.set('n', "<F2>", ":NvimTreeFindFileToggle<CR>")
