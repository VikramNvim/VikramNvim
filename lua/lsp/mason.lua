return {
 "williamboman/mason.nvim",
 dependencies = {
  "williamboman/mason-lspconfig.nvim",
  "jayp0521/mason-null-ls.nvim",
 },

 vim.lsp.set_log_level("off"),
 -- vim.lsp.set_log_level("debug")

 config = function()

  local mason = require("mason")
  local mason_lspconfig = require("mason-lspconfig")
  local mason_null_ls = require("mason-null-ls")

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
      ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "tailwindcss",
        -- "lua_ls",
      },
      automatic_installation = true,
    })

    mason_null_ls.setup({
      ensure_installed = {
        "prettier",
        -- "stylua",
        "eslint_d",
      },
      automatic_installation = true,
    })

  -- local on_attach = function ()
  --  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  --  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  --
  --  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  --  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  --  -- vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references {})
  --  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
  -- end

--   local lspconfig = require("lspconfig")
-- local capabilities = cmp_nvim_lsp.default_capabilities()
--
--     local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
--     for type, icon in pairs(signs) do
--       local hl = "DiagnosticSign" .. type
--       vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
--     end
--
-- lspconfig["html"].setup({
--       capabilities = capabilities,
--       on_attach = on_attach,
--     })
--
--     lspconfig["tsserver"].setup({
--       capabilities = capabilities,
--       on_attach = on_attach,
--     })
--
--     lspconfig["cssls"].setup({
--       capabilities = capabilities,
--       on_attach = on_attach,
--     })
--
--     lspconfig["tailwindcss"].setup({
--       capabilities = capabilities,
--       on_attach = on_attach,
--     })
--
--     lspconfig["lua_ls"].setup({
--      capabilities = capabilities,
--      on_attach = on_attach,
--      settings = { -- custom settings for lua
--      Lua = {
--       -- make the language server recognize "vim" global
--       diagnostics = {
--        globals = { "vim" },
--       },
--       workspace = {
--        -- make language server aware of runtime files
--        library = {
--         [vim.fn.expand("$VIMRUNTIME/lua")] = true,
--         [vim.fn.stdpath("config") .. "/lua"] = true,
--        },
--       },
--      },
--     },
--    })

 end

}
