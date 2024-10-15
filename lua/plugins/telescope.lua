return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
    {'nvim-telescope/telescope-live-grep-args.nvim'},
    {'aaronhallaert/advanced-git-search.nvim'},
  },
  config = function()
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

    -- Deprecated
    --vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    --vim.keymap.set('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep({ glob_pattern = "!{spec,test}"})<CR>')

    -- To be tried & tested
    vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
    vim.keymap.set('n', '<leader>fi', '<cmd>AdvancedGitSearch<CR>')
    vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})
    vim.keymap.set('n', '<leader>fm', builtin.man_pages, {})
    --vim.keymap.set('n', '<leader>f/', builtin.current_buffer_fuzzy_find, {})
    --vim.keymap.set('n', '<leader>fc', builtin.command_history, {})
    --vim.keymap.set('n', '<leader>fq', builtin.quickfix, {})

    -- Dependencies
    require("telescope").load_extension("advanced_git_search")
    require("telescope").load_extension("live_grep_args")
  end
}
