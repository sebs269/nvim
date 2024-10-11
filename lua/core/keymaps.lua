-- ______ ______
--||Ctrl|||←   ||
--||____|||____||
--|/____\|/____\|
vim.keymap.set('n', "<C-Left>", ":bprev <CR>", {silent = true, noremap})
-- ______ ______
--||Ctrl|||→   ||
--||____|||____||
--|/____\|/____\|
vim.keymap.set('n', "<C-Right>", ":bnext <CR>", {silent = true, noremap})
-- ______ ______
--||Ctrl|||↓   ||
--||____|||____||
--|/____\|/____\|
vim.keymap.set('n', "<C-Down>", ":m+<CR>==", {silent = true, noremap})
vim.keymap.set('i', "<C-Down>", "<Esc>:m+<CR>==gi", {silent = true, noremap})
vim.keymap.set('v', "<C-Down>", ":m'>+<CR>gv=gv", {silent = true, noremap})
-- ______ ______
--||Ctrl|||↑   ||
--||____|||____||
--|/____\|/____\|
vim.keymap.set('n', "<C-Up>", ":m-2<CR>==", {silent = true, noremap})
vim.keymap.set('i', "<C-Up>", "<Esc>:m-2<CR>==gi", {silent = true, noremap})
vim.keymap.set('v', "<C-Up>", ":m-2<CR>gv=gv", {silent = true, noremap})
-- ______ ______
--||Ctrl|||u   ||
--||____|||____||
--|/____\|/____\|
vim.keymap.set('n', "<C-u>", "<C-u>zz", {silent = true, map})
-- ______ ______
--||Ctrl|||d   ||
--||____|||____||
--|/____\|/____\|
vim.keymap.set('n', "<C-d>", "<C-d>zz", {silent = true, map})
