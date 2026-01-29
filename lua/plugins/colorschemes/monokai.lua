return {
  "loctvl842/monokai-pro.nvim",
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    require("monokai-pro").setup({
      transparent_background = false,
      terminal_colors = true,
      devicons = true,
      --filter = "octagon",
      inc_search = "background",
      styles = {},
      background_clear = {
        "telescope",
      },
      overridePalette = function(filter)
        return custom_palette
      end,
      override = function(c)
        return {
          NormalNC = { bg = c.base.black },
        }
      end
    })

  end,
}
