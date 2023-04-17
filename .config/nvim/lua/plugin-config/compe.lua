  local cmp = require'cmp'

  cmp.setup({
  snippet = {
          expand = function(args)
              vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
          end,
      },
      mapping = {
          ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
          ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
          ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
          ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
          ['<C-e>'] = cmp.mapping({
              i = cmp.mapping.abort(),
              c = cmp.mapping.close(),
          }),
          ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Insert})),
          -- ['<CR>'] = cmp.mapping.confirm({ select = true }),
          -- ['<Tab>'] = cmp.mapping(function(fallback)
          --     if cmp.visible() then
          --       cmp.select_next_item()
          --     elseif require('luasnip').expand_or_jumpable() then
          --       vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
          --     elseif vim.b._copilot_suggestion ~= nil then
          --       vim.fn.feedkeys(vim.api.nvim_replace_termcodes(vim.fn['copilot#Accept'](), true, true, true), '')
          --     else
          --       fallback()
          --     end
          --   end, {
          --     'i',
          --     's',
          --   }),
      },
      sources = cmp.config.sources(
        {
          { name = 'nvim_lsp' },
          { name = 'copilot' },
          { name = 'vsnip' }, -- For vsnip users.
        },
        {
          { name = 'buffer' },
        }
      )
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
      sources = {
          { name = 'buffer' }
      }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
      sources = cmp.config.sources({
          { name = 'path' }
      }, {
          { name = 'cmdline' }
      })
  })
