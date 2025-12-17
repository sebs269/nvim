return {
  "Shatur/neovim-ayu",
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("ayu").setup({
      mirage = true,
    })

    --local bg = vim.o.background
    --if (bg == 'dark') then
    --  vim.cmd [[colorscheme ayu]]
    --end
  end,
}
