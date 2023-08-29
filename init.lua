require('core.opts')      -- Options
require('core.vars')
require('core.keys')
require("config.lazy")

require('gitsigns').setup()
require('neogit').setup()
require('diffview').setup()
require("telescope").load_extension("notify")
require("notify").history()

require('stabline').setup({
  style = "slant",
  bg = "#2b2b2b",
  fg = "#986fec",
  stab_left   = "",
  stab_right  = "",
  inactive_bg = "#181a23",
  inactive_fg = "#aaaaaa",
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
