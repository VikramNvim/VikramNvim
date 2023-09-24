return {
 {
  "folke/which-key.nvim",
  config = function()
   require("config.which-key").setup()
  end
 },
 {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
   require("config.bufferline").setup()
  end
 },
 {
  'nvim-lua/plenary.nvim',
 },
 {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
  dependencies = {
   'nvim-lua/plenary.nvim'
  },
 },
 {
  'windwp/nvim-autopairs',
  event = "InsertEnter",
  opts = {}
 },
 {
  "lewis6991/gitsigns.nvim",
  opts = {}
 },
 {
  "kdheepak/lazygit.nvim",
  dependencies = {
   "nvim-lua/plenary.nvim",
  },
 },
 {
  "folke/trouble.nvim",
  dependencies = {
   "nvim-tree/nvim-web-devicons"
  },
  opts = {},
 },
 {
  "numToStr/FTerm.nvim"
 },
 {
  'stevearc/dressing.nvim',
  opts = {},
 },
 {
  'mbbill/undotree'
 },
 {
  "kylechui/nvim-surround",
  version = "*",
  event = "VeryLazy",
  config = function()
   require("nvim-surround").setup({
   })
  end
 },
 {
  'ThePrimeagen/vim-be-good'
 },
 {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = {
   "nvim-telescope/telescope.nvim",
   "nvim-lua/plenary.nvim"
  },
 },
 {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {},
  dependencies = {
   "MunifTanjim/nui.nvim",
   "rcarriga/nvim-notify",
  }
 },
 {
  "Pocco81/auto-save.nvim",
  config = function()
   require("auto-save").setup {}
  end,
 },
 {
  'barrett-ruth/live-server.nvim',
  -- build = 'yarn global add live-server',
  config = true
 },
 --  {
 --   "roobert/tailwindcss-colorizer-cmp.nvim",
 --   config = function()
 --     require("tailwindcss-colorizer-cmp").setup({
 --       color_square_width = 2,
 --     })
 --   end
 -- },
 -- {
 --  'L3MON4D3/LuaSnip',
 --  config = function()
 --   require("config.snippet").setup()
 --  end
 -- }





}
