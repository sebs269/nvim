return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    require("kanagawa").setup({
    })

    --local bg = vim.o.background
    --if (bg == 'dark') then
    --  vim.cmd [[colorscheme kanagawa]]
    --end
  end,
}
