return {
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      "onsails/lspkind.nvim"
    }
  },
  {
    'hrsh7th/nvim-cmp',

    config = function()
      local cmp = require'cmp'
      local lspkind = require('lspkind')
      require("luasnip.loaders.from_vscode").lazy_load()
      --
      -- vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = "#ffffff" })
      -- vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#f0f000" })
      -- vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#ff0000" })
      --
      -- vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = "#00ff00" })

      icons = {
        Text = "󰉿",
        Method = "󰆧",
        Function = "󰊕",
        Constructor = "",
        Field = "󰜢",
        Variable = "󰀫",
        Class = "󰠱",
        Interface = "",
        Module = "",
        Property = "󰜢",
        Unit = "󰑭",
        Value = "󰎠",
        Enum = "",
        Keyword = "󰌋",
        Snippet = "",
        Color = "󰏘",
        File = "󰈙",
        Reference = "󰈇",
        Folder = "󰉋",
        EnumMember = "",
        Constant = "󰏿",
        Struct = "󰙅",
        Event = "",
        Operator = "󰆕",
        TypeParameter = "",
      },

      cmp.setup({
        formatting = {
          format = lspkind.cmp_format({
            mode = 'symbol_text',
            maxwidth = 50,
            ellipsis_char = '...',
            show_labelDetails = true,
            before = function (entry, vim_item)
              vim_item.kind = (icons[vim_item.kind] or "foo") .. " " .. vim_item.kind
              vim_item.menu = ({
                luasnip = "[Luasnip]",
                nvim_lsp = "[LSP]",
                buffer = "[Buffer]",
                path = "[Path]",
                cmdline = "[CMD]",
              })[entry.source.name]
              vim_item.kind, vim_item.menu = vim_item.menu, vim_item.kind
              return vim_item
            end
          })
          -- format = function(entry, vim_item)
          --   -- vim_item.kind = "kind"
          --   -- vim_item.menu = "menu"
          --   vim_item.kind = lspkind.presets.default[vim_item.kind]
          --   vim_item.menu = ({
          --     luasnip = "[Luasnip]",
          --     nvim_lsp = "[LSP]",
          --     buffer = "[Buffer]",
          --     path = "[Path]",
          --     cmdline = "[CMD]",
          --   })[entry.source.name]
          --   vim_item.kind, vim_item.menu = vim_item.menu, vim_item.kind
          --   return vim_item
          -- end
        },
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body) 
          end,
        },
        window = {
          completion = cmp.config.window.bordered({
          winhighlight = "Normal:None,FloatBorder:None,CursorLine:CurSearch,Search:None",
          }),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = 'luasnip', priority = 1000 },
          { name = 'nvim_lsp', priority = 750 },
        }, {
            { name = 'buffer', priority = 500 },
            { name = 'path', priority = 250 },
          }),
        duplicates = {
          luasnip = 1,
          nvim_lsp = 1,
          cmp_tabnine = 1,
          buffer = 1,
          path = 1,
        },
      })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'git' },
    }, {
      { name = 'buffer' },
    })
  })

  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  end
}

}
