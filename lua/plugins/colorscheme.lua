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
        dark = "frappe",
      },
      color_overrides = {
        --all = {
        --  text = "#ffffff",
        --},
        latte = {
          --rosewater         = "#c14a4a",
          --flamingo          = "#c14a4a",
          --red               = "#c14a4a",
          --maroon            = "#c14a4a",
          --pink              = "#945e80",
          --mauve             = "#945e80",
          --peach             = "#c35e0a",
          --yellow            = "#b47109",
          --green             = "#6c782e",
          --teal              = "#4c7a5d",
          --sky               = "#4c7a5d",
          --sapphire          = "#4c7a5d",
          --blue              = "#45707a",
          --lavender          = "#45707a",
          --text              = "#654735",
          --subtext1          = "#73503c",
          --subtext0          = "#805942",
          --overlay2          = "#8c6249",
          --overlay1          = "#8c856d",
          --overlay0          = "#a69d81",
          --surface2          = "#bfb695",
          --surface1          = "#d1c7a3",
          --surface0          = "#e3dec3",
          base              = "#faf4ed",
          --mantle            = "#242424",
          --crust             = "#474747",
          df_mentos_cassis  = "#ebdfe4",
          df_beige          = "#ebe5df",
          df_dark_blue      = "#284783",
          df_light_grey     = "#a8a3b3",
          df_light_pink     = "#9893a5",
          df_gold           = "#df8e1d",
        },
        frappe = {
          base              = "#2e3340",
          df_base_deep      = "#272c36",
          df_grey           = "#79809a",
        },
        macchiato = {},
        mocha = {},
      },
      highlight_overrides = {
        --all = function(colors)
          --  return {
            --  }
            --end,
            latte = function(latte)
              return {
                --NormalNC                  = { bg = latte.df_beige },
                --Normal                    = { bg = "None" },
                CursorLine                = { bg = latte.df_mentos_cassis },
                Comment                   = { fg = latte.df_light_pink },
                NvimTreeNormal            = { bg = latte.df_beige },
                NvimTreeFolderIcon        = { fg = latte.df_dark_blue },
                NvimTreeFolderName        = { fg = latte.df_dark_blue },
                NvimTreeOpenedFolderName  = { fg = latte.df_dark_blue },
                NvimTreeEmptyFolderName   = { fg = latte.df_light_grey },
                NvimTreeRootFolder        = { fg = latte.df_gold },
              }
            end,
            frappe = function(frappe)
              return {
                --Normal                    = { bg = "None" },
                Comment                   = { fg = frappe.df_grey},
                NvimTreeNormal            = { bg = frappe.df_base_deep},
              }
            end,
            --macchiato = function(macchiato)
            --  return {
            --  }
            --end,
            --mocha = function(mocha)
            --  return {
            --  }
            --end,
          },
        }
        vim.cmd [[ colorscheme catppuccin ]]
      end,
    }
