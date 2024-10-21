return {
  "nvim-tree/nvim-tree.lua",
  keys = {
    { "<F2>", ":NvimTreeFindFileToggle<CR>", desc = "Nvim Tree", silent = true },
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      view = {
        side = "left",
        width = 50,
      },
      update_focused_file = {
        enable = true,
        -- update_root = true,
      }
    })
  end
}
