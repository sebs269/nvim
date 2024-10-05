vim.keymap.set('n', "<C-Left>", ":bprev <CR>", noremap)
vim.keymap.set('n', "<C-Right>", ":bnext <CR>", noremap)
vim.keymap.set('n', "<C-Down>", ":m+<CR>==", noremap)
vim.keymap.set('n', "<C-Up>", ":m-2<CR>==", noremap)
vim.keymap.set('i', "<C-Down>", "<Esc>:m+<CR>==gi", noremap)
vim.keymap.set('i', "<C-Up>", "<Esc>:m-2<CR>==gi", noremap)
vim.keymap.set('v', "<C-Down>", ":m'>+<CR>gv=gv", noremap)
vim.keymap.set('v', "<C-Up>", ":m-2<CR>gv=gv", noremap)
vim.keymap.set('n', "<C-u>", "<C-u>zz", map)
vim.keymap.set('n', "<C-d>", "<C-d>zz", map)
vim.keymap.set('n', "<Up>", "<C-w>k", map)
vim.keymap.set('n', "<Down>", "<C-w>j", map)
vim.keymap.set('n', "<Left>", "<C-w>h", map)
vim.keymap.set('n', "<Right>", "<C-w>l", map)
