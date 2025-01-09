return {
  {
    "hrsh7th/nvim-cmp",
    event = { "InsertEnter", "CmdlineEnter" },
    dependencies = {
      -- autocompletion
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      -- snippets (luasnip)
      "saadparwaiz1/cmp_luasnip",
      "L3MON4D3/LuaSnip",
      -- snippets (content)
      "rafamadriz/friendly-snippets",
    },
    config = function()
      local cmp = require'cmp'
      local luasnip = require'luasnip'
      local s = luasnip.snippet
      local t = luasnip.text_node
      local i = luasnip.insert_node
      require("luasnip.loaders.from_vscode").lazy_load()

      -- Custom snippets
      -- $sformatf
      luasnip.add_snippets("systemverilog", {
        s("$sformatf", {
          t('$sformatf("'), i(1, "Message"), t('", '), i(2, "vars"), t(')')
        })
      })

      -- To do
      luasnip.add_snippets("systemverilog", {
        s("TODO", {
          t('// <SAS> TODO - '), i(1, "Comment")
        })
      })

      -- To do (begin/end)
      luasnip.add_snippets("systemverilog", {
        s("TODO_begin_end", {
          t('// <SAS> TODO - '), i(1, "Comment"), t({'', '// </SAS>'})
        })
      })

      -- Fix me
      luasnip.add_snippets("systemverilog", {
        s("FIXME", {
          t('// <SAS> FIXME - '), i(1, "Comment")
        })
      })

      -- Fix me (begin/end)
      luasnip.add_snippets("systemverilog", {
        s("FIXME_begin_end", {
          t('// <SAS> FIXME - '), i(1, "Comment"), t({'', '// </SAS>'})
        })
      })

      cmp.setup({
        snippet = {
          -- REQUIRED - you must specify a snippet engine
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = {
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              if luasnip.expandable() then
                luasnip.expand()
              else
                cmp.confirm({
                  select = true,
                })
              end
            else
              fallback()
            end
          end),

          -- Select next item in the cmp list
          --["<Tab>"] = cmp.mapping(function(fallback)
          ["<C-n>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            --[[
            elseif luasnip.locally_jumpable(1) then
              luasnip.jump(1)
            ]]
            else
              fallback()
            end
          end, { "i", "s" }),

          -- Select previous item in the cmp list
          --["<S-Tab>"] = cmp.mapping(function(fallback)
          ["<C-p>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            --[[
            elseif luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            ]]
            else
              fallback()
            end
          end, { "i", "s" }),

          -- Jump to the next placeholder
          ["<Right>"] = cmp.mapping(function(fallback)
            if luasnip.locally_jumpable(1) then
              luasnip.jump(1)
            else
              fallback()
            end
          end, { "i", "s" }),

          -- Jump to the previous placeholder
          ["<Left>"] = cmp.mapping(function(fallback)
            if luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),

          -- ... Your other mappings ...
          --[[
          mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
          }),
          ]]
        },
        sources = cmp.config.sources{
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'buffer' },
          --{
          --  name = 'buffer',
          --  opts = {
          --    get_bufnrs = function()
          --      return vim.api.nvim_list_bufs()
          --    end,
          --  },
          --},
        },

        -- `/` cmdline setup.
        cmp.setup.cmdline('/', {
          mapping = cmp.mapping.preset.cmdline(),
          sources = {
            { name = 'buffer' }
          }
        }),

        -- `:` cmdline setup.
        cmp.setup.cmdline(':', {
          mapping = cmp.mapping.preset.cmdline({
            ["<Tab>"] = {
              c = function(fallback)
                local cmp = require("cmp")
                if cmp.visible() then
                  cmp.confirm({
                    select = true,
                  })
                else
                  fallback()
                end
              end,
            },
          }),
          sources = cmp.config.sources({
            { name = 'path' }
          }, {
            { name = 'cmdline' }
          }),
          matching = { disallow_symbol_nonprefix_matching = false }
        })

      })
    end,
  }
}
