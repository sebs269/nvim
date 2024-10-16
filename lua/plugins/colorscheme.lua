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
          base        = "#faf4ed",
          warm_pink   = "#ebdfe4",
          warm_grey   = "#9893a5",
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
        macchiato = {},
        mocha = {},
      },
      highlight_overrides = {
        latte = function(latte)
          return {
            --Normal                    = { bg = "None" },
            CursorLine                = { bg = latte.warm_pink },
            Comment                   = { fg = latte.warm_grey },
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
    vim.cmd [[ colorscheme catppuccin ]]
  end,
}
