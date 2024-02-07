return {
 "williamboman/mason.nvim",
 dependencies = {
  "williamboman/mason-lspconfig.nvim",
  "WhoIsSethDaniel/mason-tool-installer.nvim",
 },

 vim.lsp.set_log_level("off"),
 -- vim.lsp.set_log_level("debug")

 config = function()

  local mason = require("mason")
  local mason_lspconfig = require("mason-lspconfig")
  local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
      }
    })

    mason_lspconfig.setup({
     --  ensure_installed = {
     --    "tsserver",
     --    "html",
     --    "cssls",
     --    "tailwindcss",
     --    -- "lua_ls",
     -- },
      -- automatic_installation = false,
    })


   mason_tool_installer.setup({
      ensure_installed = {
        "prettier", -- prettier formatter
        -- "stylua", -- lua formatter
        "eslint_d", -- js linter
      },
    })

 end

}
