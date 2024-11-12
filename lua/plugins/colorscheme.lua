return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  name = "catppuccin",
  config = function()
    require("catppuccin").setup {
      flavour = "auto", -- latte, frappe, macchiato, mocha
      background = {
        light = "latte",
        dark  = "frappe",
      },
      color_overrides = {
        latte = {
          off_white   = "#f1f1f1",
          warm_pink   = "#ebdfe4",
          warm_grey   = "#9893a5",
          mid_grey    = "#c7cbd2",
          dark_grey   = "#898c9a",
          --beige       = "#ebe5df",
          --dark_blue   = "#284783",
          --light_grey  = "#a8a3b3",
          --gold        = "#df8e1d",
        },
        frappe = {
          base        = "#2e3340",
          base_deep   = "#272c36",
          grey        = "#79809a",
        },
      },
      highlight_overrides = {
        latte = function(latte)
          return {
            Normal                    = { bg = latte.off_white },
            NormalNC                  = { bg = latte.off_white },
            NormalSB                  = { bg = latte.off_white },
            CursorLine                = { bg = latte.warm_pink },
            Comment                   = { fg = latte.warm_grey },
            TabLine                   = { bg = latte.mid_grey, fg = latte.dark_grey },
            --TabLineSel                = { fg = latte.white },
            --NvimTreeNormal            = { bg = latte.beige },
            --NvimTreeFolderIcon        = { fg = latte.dark_blue },
            --NvimTreeFolderName        = { fg = latte.dark_blue },
            --NvimTreeOpenedFolderName  = { fg = latte.dark_blue },
            --NvimTreeEmptyFolderName   = { fg = latte.light_grey },
            --NvimTreeRootFolder        = { fg = latte.gold },
          }
        end,
        frappe = function(frappe)
          return {
            --Normal                    = { bg = "None" },
            Comment                   = { fg = frappe.grey},
            --NvimTreeNormal            = { bg = frappe.base_deep},
          }
        end,
      },
    }

    vim.cmd [[colorscheme catppuccin]]
  end,
}
