require("mason").setup()
require("mason-lspconfig").setup({
 ensure_installed = {"html", "cssls", "tailwindcss", "marksman", }
})
local on_attach = function (_, _)
 vim.keymap.set('n', 'K', vim.lsp.buf.hover, {}
 )
end
require("lspconfig").html.setup {
 on_attach = on_attach
}
require("lspconfig").cssls.setup {
 on_attach = on_attach
}
