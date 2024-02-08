return {
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("plugins.configs.bufferline").setup()
    end
  },
  {
    'ggandor/leap.nvim',
    config = function()
      require('leap').add_default_mappings()
    end
  },
  -- {
  --  'Shatur/neovim-session-manager',
  --  dependencies = 'nvim-lua/plenary.nvim',
  -- },
  -- {
  --  'glepnir/dbsession.nvim', cmd = { 'SessionSave', 'SessionDelete', 'SessionLoad'},
  --  opts = {}
  -- },
  {
    'nvim-lua/plenary.nvim',
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {},
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {}
  },
  {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {},
  },
  {
    'stevearc/dressing.nvim',
    opts = {},
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end
  },
  {
    'ThePrimeagen/vim-be-good'
  },
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup {}
    end,
  },
  {
    "aurum77/live-server.nvim",
    run = function()
      require"live_server.util".install()
    end,
    cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
  },

}
