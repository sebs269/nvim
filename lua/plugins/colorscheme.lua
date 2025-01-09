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
          white       = "#f1f1f1",
          off_white   = "#eaeaea",
          warm_pink   = "#ebdfe4",
          warm_grey   = "#9893a5",
          mid_grey    = "#c7cbd2",
          dark_grey   = "#898c9a",
        },
        frappe = {
          base        = "#2e3440", -- From 'Nord' color palette
          mantle      = "#252a33", -- Darker shade of 'base'
          --base_deep   = "#252a33", -- Darker shade of 'base'
          base_light  = "#383f4d", -- Lighter shade of 'base'
          grey        = "#79809a",
        },
      },
      highlight_overrides = {
        latte = function(latte)
          return {
            Normal                    = { bg = latte.white },
            NormalNC                  = { bg = latte.off_white },
            NormalSB                  = { bg = latte.off_white },
            CursorLine                = { bg = latte.warm_pink },
            Comment                   = { fg = latte.warm_grey },
            TabLine                   = { bg = latte.mid_grey, fg = latte.dark_grey },
          }
        end,
        frappe = function(frappe)
          return {
            --NormalNC                  = { bg = frappe.base_deep },
            --NormalSB                  = { bg = frappe.base_deep },
            --Comment                   = { fg = frappe.grey},
            --NvimTreeNormal            = { bg = frappe.base_light },
            NormalNC                  = { bg = frappe.mantle },
            NormalSB                  = { bg = frappe.mantle },
            Comment                   = { fg = frappe.grey},
            NvimTreeNormal            = { bg = frappe.base_light },
          }
        end,
      },
    }

    vim.cmd [[colorscheme catppuccin]]
  end,
}
