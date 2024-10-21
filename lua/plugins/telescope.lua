return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  keys = {
    { "<leader>ff", ":Telescope find_files<CR>", desc = "Find Files" },
    { "<leader>fg", "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", desc = "Live Grep" },
    { "<leader>fb", ":Telescope buffers<CR>", desc = "Buffers" },
    { "<leader>fh", ":Telescope help_tags<CR>", desc = "Help Tags" },
    -- To be tried & tested
    { "<leader>fo", ":Telescope oldfiles<CR>", desc = "Old files" },
    { "<leader>fi", "<cmd>AdvancedGitSearch<CR>", desc = "Git search" },
    { "<leader>fs", ":Telescope lsp_document_symbols<CR>", desc = "LSP doc symbol" },
    { "<leader>fm", ":Telescope man_pages<CR>", desc = "Man pages" },
    { "<leader>f/", ":Telescope current_buffer_fuzzy_find<CR>", desc = "Current buffer fuzzy find" },
    { "<leader>fc", ":Telescope command_history<CR>", desc = "Command history" },
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
