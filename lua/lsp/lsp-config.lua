return {
    "williamboman/mason.nvim",
    dependencies = {
     {"williamboman/mason-lspconfig.nvim",},
     {"neovim/nvim-lspconfig",},
   },
vim.lsp.set_log_level("off"),
-- vim.lsp.set_log_level("debug")

 config = function()

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

 end

}
