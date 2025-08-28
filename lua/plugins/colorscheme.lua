local colorscheme = "cat"

local function get_colorscheme()

  -- catppuccin
  if colorscheme == "cat" then
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
              pink        = "#dd7878",
            },
            frappe = {
              base        = "#2e3440", -- From 'Nord' color palette
              mantle      = "#252a33", -- Darker shade of 'base'
              --base_deep   = "#252a33", -- Darker shade of 'base'
              base_light  = "#383f4d", -- Lighter shade of 'base'
              white       = "#e1e1e1",
              grey        = "#79809a",
            },
          },
          highlight_overrides = {
            latte = function(latte)
              return {
                Normal                    = { bg = latte.white },
                NormalNC                  = { bg = latte.off_white },
                NormalFloat               = { bg = latte.white },
                FloatBorder               = { bg = latte.white, fg = latte.yellow },
                FloatTitle                = { bg = latte.white, fg = latte.yellow },
                NormalSB                  = { bg = latte.white },
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
                Normal                    = { fg = frappe.white },
                NormalNC                  = { bg = frappe.mantle, fg = frappe.white},
                NormalSB                  = { bg = frappe.mantle, fg = frappe.white},
                Comment                   = { fg = frappe.grey},
                NvimTreeNormal            = { bg = frappe.base_light },
              }
            end,
          },
        }

        vim.cmd('highlight link verilogOperator Structure')

        --local bg = vim.o.background
        --if (bg == 'light') then
        --  vim.cmd [[colorscheme catppuccin]]
        --end
        vim.cmd [[colorscheme catppuccin]]
      end,
    }

  elseif colorscheme == "everforest" then
    return {
      "neanias/everforest-nvim",
      version = false,
      lazy = false,
      priority = 1000, -- make sure to load this before all the other start plugins
      -- Optional; default configuration will be used if setup isn't called.
      config = function()
        require("everforest").setup({
          background = "medium",
          transparent_background_level = 0,
          on_highlights = function(hl, palette)
            hl.NormalNC    = { fg = palette.none, bg = palette.bg_dim, sp = palette.none }
            hl.NormalSB    = { fg = palette.none, bg = palette.bg_dim, sp = palette.none }
            hl.EndOfBuffer = { fg = palette.bg0, bg = palette.none, sp = palette.none }
          end,
        })

        --local bg = vim.o.background
        --if (bg == 'dark') then
        --  vim.cmd [[colorscheme everforest]]
        --end
        vim.cmd [[colorscheme everforest]]
      end,
    }

  elseif colorscheme == "kanagawa" then
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
        vim.cmd [[colorscheme kanagawa]]
      end,
    }

  elseif colorscheme == "monokai-pro" then
    return {
      "loctvl842/monokai-pro.nvim",
      lazy = false,
      priority = 1000, -- make sure to load this before all the other start plugins
      -- Optional; default configuration will be used if setup isn't called.
      config = function()
        local custom_palette = {
          background = "#3a3d4b",
          dark1 = "#383a48", -- darker
          dark2 = "#31333f", -- darkest
        }
        require("monokai-pro").setup({
          transparent_background = false,
          terminal_colors = true,
          devicons = true,
          filter = "octagon",
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
            }
          end
        })

        --local bg = vim.o.background
        --if (bg == 'dark') then
        --  vim.cmd [[colorscheme monokai-pro]]
        --end
        vim.cmd [[colorscheme monokai-pro]]
      end,
    }

  elseif colorscheme == "ayu" then
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
        vim.cmd [[colorscheme ayu]]
      end,
    }
  end
end

return get_colorscheme()
