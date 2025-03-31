return {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    require("everforest").setup({
      on_highlights = function(hl, palette)
        hl.NormalNC    = { fg = palette.none, bg = palette.bg_dim, sp = palette.none }
        hl.NormalSB    = { fg = palette.none, bg = palette.bg_dim, sp = palette.none }
        hl.EndOfBuffer = { fg = palette.bg0, bg = palette.none, sp = palette.none }
      end,
    })

    local bg = vim.o.background
    if (bg == 'dark') then
      vim.cmd [[colorscheme everforest]]
    end
  end,
}
