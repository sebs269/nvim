return {
  "loctvl842/monokai-pro.nvim",
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    local custom_palette = {
      background = "#3a3d4b",
      ---dark1 = "#383a48", -- darker
      dark2 = "#31333f", -- darkest
      -- Greyish
      --background = "#20262c",
      --background = "#232A2F",
      --dark2 = "#181818", -- darkest
      --gold = "#f99e2f", 
    }
    require("monokai-pro").setup({
      transparent_background = false,
      terminal_colors = true,
      devicons = true,
      --filter = "octagon",
      filter = "ristretto",
      inc_search = "background",
      styles = {},
      background_clear = {
        "telescope",
      },
      overridePalette = function(filter)
        return custom_palette
      end,
      override = function()
        return {
          NormalNC = { bg = custom_palette.dark2 },
          --verilogStatement = { fg = custom_palette.gold },
          --systemverilogStatement = { fg = custom_palette.gold },
          --verilogTodo = { fg = custom_palette.gold },
        }
      end
    })

    --local bg = vim.o.background
    --if (bg == 'dark') then
    --  vim.cmd [[colorscheme monokai-pro]]
    --end
  end,
}
