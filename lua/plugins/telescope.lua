return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  keys = {
    { "<leader>ff", ":Telescope find_files<CR>", desc = "Find Files", silent = true },
    { "<leader>fg", "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", desc = "Live Grep", silent = true },
    { "<leader>fb", ":Telescope buffers<CR>", desc = "Buffers", silent = true },
    { "<leader>fh", ":Telescope help_tags<CR>", desc = "Help Tags", silent = true },
    -- To be tried & tested
    { "<leader>fo", ":Telescope oldfiles<CR>", desc = "Old files", silent = true },
    { "<leader>fi", "<cmd>AdvancedGitSearch<CR>", desc = "Git search", silent = true },
    { "<leader>fs", ":Telescope lsp_document_symbols<CR>", desc = "LSP doc symbol", silent = true },
    { "<leader>fm", ":Telescope man_pages<CR>", desc = "Man pages", silent = true },
    { "<leader>f/", ":Telescope current_buffer_fuzzy_find<CR>", desc = "Current buffer fuzzy find", silent = true },
    { "<leader>fc", ":Telescope command_history<CR>", desc = "Command history", silent = true },
  },
  dependencies = {
    {'nvim-lua/plenary.nvim'},
    {'nvim-telescope/telescope-live-grep-args.nvim'},
    {'aaronhallaert/advanced-git-search.nvim'},
  },
  opts = function()
    -- Dependencies
    require("telescope").load_extension("advanced_git_search")
    require("telescope").load_extension("live_grep_args")
  end
}
