require('core.opts')      -- Options
require('core.vars')
require('core.keys')
require("config.lazy")

require 'colorizer'.setup()
require("nvim-surround").setup()
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
require("harpoon").setup({
  menu = {
    width = vim.api.nvim_win_get_width(0) - 10,
  }
})

--LSP SETUP
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
 -- capabilities = capabilities,
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


vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]

-- vim.api.nvim_set_keymap('n', '<leader>pl', ':lua require"plink".ncopy()<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('v', '<leader>pl', ':lua require"plink".vcopy()<CR>', { noremap = true })


-- require("cmp").config.formatting = {
--   format = require("tailwindcss-colorizer-cmp").formatter
-- }
