return {
    "williamboman/mason.nvim",
    dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
   },
vim.lsp.set_log_level("off")
-- vim.lsp.set_log_level("debug")
}
