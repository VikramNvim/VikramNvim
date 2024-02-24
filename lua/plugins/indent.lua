return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    -- opts = {
    config = function()
    local highlight = {
      "RainbowFirst",
      "RainbowSecond",
  }

  local hooks = require "ibl.hooks"
  hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "RainbowFirst", { fg = "#f000f0" })
      vim.api.nvim_set_hl(0, "RainbowSecond", { fg = "#00f0f0" })
  end)

  require("ibl").setup { indent = { highlight = highlight } }
      indent = {
        char = "│",
        tab_char = "│",
      },
      scope = { enabled = false },
      exclude = {
        filetypes = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
      }
    end
    -- },
  },
  {
    "echasnovski/mini.indentscope",
    version = false,
    opts = {
      -- symbol = "▏",
      symbol = "│",
      options = { try_as_border = true },
    },
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
    end,
  },
  --Old Config
  --  "lukas-reineke/indent-blankline.nvim", 
  --  main = "ibl", 
  --  config = function()
  --   local highlight = {
  --     "RainbowFirst",
  --     "RainbowSecond",
  -- }
  --
  -- local hooks = require "ibl.hooks"
  -- hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  --     vim.api.nvim_set_hl(0, "RainbowFirst", { fg = "#f000f0" })
  --     vim.api.nvim_set_hl(0, "RainbowSecond", { fg = "#00f0f0" })
  -- end)
  --
  -- require("ibl").setup { indent = { highlight = highlight } }

    require("ibl").setup()
  --  end
}
