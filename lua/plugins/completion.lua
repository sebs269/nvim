return {
  {
    "hrsh7th/nvim-cmp",
    event = { "InsertEnter" },
    dependencies = {
      -- autocompletion
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      -- snippets
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
      "L3MON4D3/LuaSnip",
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
          ['<CR>'] = cmp.mapping(function(fallback)
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
          ["<Tab>"] = cmp.mapping(function(fallback)
            if luasnip.locally_jumpable(1) then
              luasnip.jump(1)
            else
              fallback()
            end
          end, { "i", "s" }),

          -- Jump to the previous placeholder
          ["<S-Tab>"] = cmp.mapping(function(fallback)
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
      })
    end,
  }
}
