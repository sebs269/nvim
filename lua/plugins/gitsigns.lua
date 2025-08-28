return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({

      -- options
      signcolumn         = true,  -- Toggle with `:Gitsigns toggle_signs`
      numhl              = false, -- Toggle with `:Gitsigns toggle_numhl`
      current_line_blame = true,

      -- mappings
      on_attach = function(bufnr)
        local gitsigns = require('gitsigns')

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Toggles
        map('n', '<leader>gb', gitsigns.toggle_current_line_blame)
      end,

      })
    end,
  }

