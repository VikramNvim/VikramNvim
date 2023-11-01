return {
 'hrsh7th/nvim-cmp',
 event = "InsertEnter",
 dependencies = {
  {'hrsh7th/cmp-nvim-lsp',},
  {'L3MON4D3/LuaSnip',},
  {'saadparwaiz1/cmp_luasnip',},
  {'hrsh7th/cmp-buffer',},
  {'hrsh7th/cmp-path',},
  -- {'hrsh7th/cmp-cmdline',},
  -- {'onsails/lspkind.nvim',},
 },

 -- config = function()
 opts = function(_, opts)

  local cmp = require('cmp')
  -- local lspkind = require('lspkind')

  local kind_icons = {
   Text = "",
   Method = "󰆧",
   Function = "󰊕",
   Constructor = "",
   Field = "󰇽",
   Variable = "󰂡",
   Class = "󰠱",
   Interface = "",
   Module = "",
   Property = "󰜢",
   Unit = "",
   Value = "󰎠",
   Enum = "",
   Keyword = "󰌋",
   Snippet = "",
   Color = "󰏘",
   File = "󰈙",
   Reference = "",
   Folder = "󰉋",
   EnumMember = "",
   Constant = "󰏿",
   Struct = "",
   Event = "",
   Operator = "󰆕",
   TypeParameter = "󰅲",
  }

  vim.api.nvim_set_hl(0, "VikramOne", { bg = "#3d3d3d"})
  vim.api.nvim_set_hl(0, "VikramSel", { bg = "black", fg = "#a072b0", bold = true, italic = true})
  vim.api.nvim_set_hl(0, "VikramBdr", { bg = "black", fg = "#500050"})
  vim.api.nvim_set_hl(0, "VikramDesc", { bg = "black", fg = "#dddddd"})

cmp.setup({
 completion = {
  completeopt = "menu,menuone",
 },
 -- preselect = cmp.PreselectMode.None,
 sources = cmp.config.sources {
  -- { name = "nvim_lsp", priority = 1000 },
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
  completion = cmp.config.window.bordered({
   -- border = {
   --  "┏", "━", "┓", "┃", "┛", "━", "┗", "┃",
   -- },
   winhighlight = "Normal:VikramBdr,FloatBorder:VikramBdr,CursorLine:VikramOne,Search:VikramOne",
  -- side_padding = 0,
  }),
  documentation = cmp.config.window.bordered({
   -- border = {
   --  "┏", "━", "┓", "┃", "┛", "━", "┗", "┃",
   -- },
   winhighlight = "Normal:VikramDesc,FloatBorder:VikramBdr,CursorLine:VikramOne,Search:VikramOne",
  }),
 },

 snippet = {
  expand = function(args)
   require("luasnip").lsp_expand(args.body)
  end,
 },

 formatting = {
    format = function(entry, vim_item)
      -- Kind icons
      vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
      -- Source
      vim_item.menu = ({
        buffer = "[Buffer]",
        nvim_lsp = "[LSP]",
        luasnip = "[LuaSnip]",
        nvim_lua = "[Lua]",
        latex_symbols = "[LaTeX]",
      })[entry.source.name]
      return vim_item
    end
  },

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
 },
})



 end,


 }
