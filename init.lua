require('opts')      -- Options
require('vars')
require('keys')
--LazyNvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
require('lazy').setup('plugs')
vim.cmd.colorscheme "catppuccin"
require("plugs.confs.whichkey").setup()
-- require("plugs.confs.lspconfig").setup()
require 'colorizer'.setup()
require("nvim-tree").setup()
require("nvim-surround").setup()
-- require("mason").setup()
--test
--test
require('gitsigns').setup()
require('neogit').setup()
require('diffview').setup()
require('notify').setup({
    background_colour = "NotifyBackground",
    fps = 30,
    icons = {
      DEBUG = "",
      ERROR = "",
      INFO = "",
      TRACE = "✎",
      WARN = ""
    },
    level = 2,
    minimum_width = 100,
    render = "compact",
    stages = "static",
    timeout = 3000,
    top_down = false,
  })
require("notify")("Welcome Buddy!")
require("telescope").load_extension("notify")
require("notify").history()
-- require("cmp").config.formatting = {
--   format = require("tailwindcss-colorizer-cmp").formatter
-- }
-- require'lspconfig'.pyright.setup{}

require('staline').setup({
  sections = {
		left = {
			-- ' ', 'right_sep_double', '-M', 'left_sep_double', ' ',
			-- 'right_sep',  '-file_name', 'left_sep', ' ',
			' ', 'right_sep_double', '-branch', 'left_sep_double', ' ',
		},
		mid  = {'right_sep_double', '-cool_symbol', 'left_sep_double'},
		right= {
			' ', 'right_sep_double', '-line_column', 'left_sep_double', ' ',
			-- 'right_sep', '- ', '-lsp_name', '- ', 'left_sep',
			-- 'right_sep_double', '-M', 'left_sep_double', ' ',
		}
	},

 defaults={
   fg = "#986fec",
   cool_symbol = " ＩＮＤＩＡ ",
   left_separator = "",
   right_separator = "",
   line_column = "  [%L]  ",
   true_colors = true,
   --line_column = "[%l:%c] | %p%% "
   font_active = "bold"
 },
 mode_colors = {
   n  = "#181a23",
   i  = "#181a23",
   ic = "#181a23",
   c  = "#181a23",
   v  = "#181a23"       -- etc
 }
})
require('stabline').setup({
  style = "slant",
  bg = "#2b2b2b",
  fg = "#986fec",
  stab_left   = "",
  stab_right  = "",
  inactive_bg = "#181a23",
  inactive_fg = "#aaaaaa",
})
--require("toggleterm").setup{}
require("harpoon").setup({
  menu = {
    width = vim.api.nvim_win_get_width(0) - 10,
  }
})
----SNIPPETS
-- local cmp = require('cmp')
-- local cmp_action = require('lsp-zero').cmp_action()
-- require('luasnip.loaders.from_vscode').lazy_load()
-- -- require('luasnip.loaders.from_snipmate').lazy_load()
-- cmp.setup({
--   completion = {
--     completeopt = "menu,menuone",
--   },
--   -- preselect = cmp.PreselectMode.None,
--   sources = cmp.config.sources {
--     { name = "nvim_lsp", priority = 1000 },
--     { name = "luasnip", priority = 750 },
--     { name = "buffer", priority = 500 },
--     { name = "path", priority = 250 },
--   },
--   duplicates = {
--     nvim_lsp = 1,
--     luasnip = 1,
--     cmp_tabnine = 1,
--     buffer = 1,
--     path = 1,
--   },
--
--   window = {
--     completion = cmp.config.window.bordered(border_opts),
--     documentation = cmp.config.window.bordered(border_opts),
--   },
--
--   snippet = {
--     expand = function(args)
--       require("luasnip").lsp_expand(args.body)
--     end,
--   },
--
--   formatting = formatting_style,
--
--   mapping = {
--     ["<Up>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Select },
--     ["<Down>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Select },
--     ["<C-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
--     ["<C-n>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
--     ["<C-k>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
--     ["<C-j>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
--     ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
--     ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
--     ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
--     ["<C-y>"] = cmp.config.disable,
--     ["<C-e>"] = cmp.mapping { i = cmp.mapping.abort(), c = cmp.mapping.close() },
--     ["<CR>"] = cmp.mapping.confirm {
--       behavior = cmp.ConfirmBehavior.Insert,
--       select = true,
--     },
--   }
-- })

require('Comment').setup({
    ---Add a space b/w comment and the line
    padding = true,
    ---Whether the cursor should stay at its position
    sticky = true,
    ---Lines to be ignored while (un)comment
    ignore = nil,
    ---LHS of toggle mappings in NORMAL mode
    toggler = {
        ---Line-comment toggle keymap
        line = 'gcc',
        ---Block-comment toggle keymap
        block = 'gbc',
    },
    ---LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
        ---Line-comment keymap
        line = 'gc',
        ---Block-comment keymap
        block = 'gb',
    },
    ---LHS of extra mappings
    extra = {
        ---Add comment on the line above
        above = 'gcO',
        ---Add comment on the line below
        below = 'gco',
        ---Add comment at the end of line
        eol = 'gcA',
    },
    ---Enable keybindings
    ---NOTE: If given `false` then the plugin won't create any mappings
    mappings = {
        ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        basic = true,
        ---Extra mapping; `gco`, `gcO`, `gcA`
        extra = true,
    },
    ---Function to call before (un)comment
    pre_hook = nil,
    ---Function to call after (un)comment
    post_hook = nil,
})


vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]

vim.api.nvim_set_keymap('n', '<leader>pl', ':lua require"plink".ncopy()<CR>', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>pl', ':lua require"plink".vcopy()<CR>', { noremap = true })



-- require('luasnip').filetype_extend("javascript", { "javascriptreact" })
-- require('luasnip').filetype_extend("javascript", { "html" })
-- require('luasnip').filetype_extend("javascript", { "gsap" })
--
--
--
--

-- require("luasnip").add_snippets("html", {
--   require("luasnip").snippets('h', require("luasnip").text_node('hello world'))
-- })
-- local ls = require("luasnip")
-- local s = require("luasnip").snippets
-- local t = require("luasnip").text_node
-- ls.add_snippets('lua', {
--   s('h', t('hello world'))
-- })


-- -- Define some snippets
-- require("luasnip").snippets = {
--   -- Snippets for all filetypes
--   all = { cls = "class" }
--   -- Snippets for filetype=python
-- }






-- require('lspkind').init({
--     -- DEPRECATED (use mode instead): enables text annotations
--     --
--     -- default: true
--     -- with_text = true,
--
--     -- defines how annotations are shown
--     -- default: symbol
--     -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
--     mode = 'symbol_text',
--
--     -- default symbol map
--     -- can be either 'default' (requires nerd-fonts font) or
--     -- 'codicons' for codicon preset (requires vscode-codicons font)
--     --
--     -- default: 'default'
--     preset = 'codicons',
--
--     -- override preset symbols
--     --
--     -- default: {}
--     symbol_map = {
--       Text = "󰉿",
--       Method = "󰆧",
--       Function = "󰊕",
--       Constructor = "",
--       Field = "󰜢",
--       Variable = "󰀫",
--       Class = "󰠱",
--       Interface = "",
--       Module = "",
--       Property = "󰜢",
--       Unit = "󰑭",
--       Value = "󰎠",
--       Enum = "",
--       Keyword = "󰌋",
--       Snippet = "",
--       Color = "󰏘",
--       File = "󰈙",
--       Reference = "󰈇",
--       Folder = "󰉋",
--       EnumMember = "",
--       Constant = "󰏿",
--       Struct = "󰙅",
--       Event = "",
--       Operator = "󰆕",
--       TypeParameter = "",
--     },
-- })







-- require("mason").setup()
-- require("mason-lspconfig").setup()
--
-- require("lspconfig").lua_ls.setup {}
-- require("lspconfig").rust_analyzer.setup {}
--
--
--
--
-- local lsp = require('lsp-zero').preset({})
--
-- lsp.on_attach(function(client, bufnr)
--   lsp.default_keymaps({buffer = bufnr})
-- end)
--
-- lsp.setup()




-- require'nvim-treesitter.configs'.setup {
--   -- A list of parser names, or "all" (the five listed parsers should always be installed)
--   ensure_installed = { "html", "lua", "vim", "vimdoc", "query", "javascript", "css", "javascriptreact" },
--
--   -- Install parsers synchronously (only applied to `ensure_installed`)
--   sync_install = false,
--
--   -- Automatically install missing parsers when entering buffer
--   -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
--   auto_install = true,
--
--   -- List of parsers to ignore installing (for "all")
--   ignore_install = { "javascript" },
--
--   ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
--   -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!
--
--   highlight = {
--     enable = true,
--
--     -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
--     -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
--     -- the name of the parser)
--     -- list of language that will be disabled
--     disable = { "c", "rust" },
--     -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
--     disable = function(lang, buf)
--         local max_filesize = 100 * 1024 -- 100 KB
--         local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
--         if ok and stats and stats.size > max_filesize then
--             return true
--         end
--     end,
--
--     -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
--     -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
--     -- Using this option may slow down your editor, and you may see some duplicate highlights.
--     -- Instead of true it can also be a list of languages
--     additional_vim_regex_highlighting = false,
--   },
-- }





require("mason").setup()
require("mason-lspconfig").setup({
 ensure_installed = {"html", "cssls", "tailwindcss", "marksman", }
})

local on_attach = function ()
 vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
 vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

 vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
 vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
 -- vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references {})
 vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").html.setup {
 on_attach = on_attach,
 capabilities = capabilities,
}
require("lspconfig").cssls.setup {
 on_attach = on_attach
}
require("lspconfig").tailwindcss.setup {
 on_attach = on_attach
}
require("lspconfig").marksman.setup {
 on_attach = on_attach
}

--AutoCompletions
local cmp = require('cmp')

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
 mapping = cmp.mapping.preset.insert({
  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
  ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ['<C-o>'] = cmp.mapping.complete(),
  ['<C-e>'] = cmp.mapping.abort(),
  ['<CR>'] = cmp.mapping.confirm({ select = true }),
 }),
 snippet = {
  expand = function(args)
   require("luasnip").lsp_expand(args.body)
  end,
 },
 sources = cmp.config.sources({
  { name = 'nvim_lsp' },
  { name = 'luasnip' },
 },{
  { name = 'buffer' },
 }),
})
