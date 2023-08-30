return {
 'hrsh7th/nvim-cmp',
 event = "InsertEnter",
 dependencies = {
  {'hrsh7th/cmp-nvim-lsp',},
  {'L3MON4D3/LuaSnip',},
  {'saadparwaiz1/cmp_luasnip',},
  {'rafamadriz/friendly-snippets',},
  {'hrsh7th/cmp-buffer',},
  {'hrsh7th/cmp-path',},
  {'roobert/tailwindcss-colorizer-cmp.nvim',
  config = true },

},
 config = function()
local cmp = require('cmp')

require('luasnip.loaders.from_vscode').lazy_load()

-- require('luasnip').filetype_extend("javascript", { "javascriptreact" })
-- require('luasnip').filetype_extend("javascript", { "html" })
-- require('luasnip').filetype_extend("javascript", { "gsap" })

cmp.setup({
  completion = {
    completeopt = "menu,menuone",
  },
  -- preselect = cmp.PreselectMode.None,
  sources = cmp.config.sources {
    { name = "nvim_lsp", priority = 1000 },
    { name = "luasnip", priority = 750 },
    { name = "buffer", priority = 500 },
    { name = "path", priority = 250 },
  },
  duplicates = {
    nvim_lsp = 1,
    luasnip = 1,
    cmp_tabnine = 1,
    buffer = 1,
    path = 1,
  },

  window = {
    completion = cmp.config.window.bordered(border_opts),
    documentation = cmp.config.window.bordered(border_opts),
  },

  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },

  formatting = formatting_style,

  mapping = {
    ["<Up>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Select },
    ["<Down>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Select },
    ["<C-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
    ["<C-n>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
    ["<C-k>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
    ["<C-j>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
    ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
    ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<C-y>"] = cmp.config.disable,
    ["<C-e>"] = cmp.mapping { i = cmp.mapping.abort(), c = cmp.mapping.close() },
    ["<CR>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },
  }
})
 end,

  -- {
  --   "hrsh7th/nvim-cmp",
  --   opts = function(_, opts)
  --     -- original LazyVim kind icon formatter
  --     local format_kinds = opts.formatting.format
  --     opts.formatting.format = function(entry, item)
  --       format_kinds(entry, item) -- add icons
  --       return require("tailwindcss-colorizer-cmp").formatter(entry, item)
  --     end
  --   end,
  -- },

}
