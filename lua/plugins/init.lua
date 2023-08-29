return {
 {
  'nvim-lua/plenary.nvim',
 },
 {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
  dependencies = { 'nvim-lua/plenary.nvim' }
 },
 {
  'NvChad/nvim-colorizer.lua',
  opts = {}
 },
 {
  'windwp/nvim-autopairs',
  event = "InsertEnter",
  opts = {}
 },
 {
  "williamboman/mason.nvim",
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
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {}
 },
 -- {
 --   'darksinge/plink.nvim',
 --   commit = '4e62e47',
 --   dependencies = {
 --     'nvim-lua/plenary.nvim',
 --     'darksinge/neodash.nvim',
 --     'MunifTanjim/nui.nvim',
 --   },
 -- },
 {
  'pacokwon/plink.nvim'
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
 -- LSP SERVERS
--  {
--     "williamboman/mason.nvim",
--     "williamboman/mason-lspconfig.nvim",
--     "neovim/nvim-lspconfig",
-- },
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
  dependencies = 
  { "nvim-telescope/telescope.nvim",
  "nvim-lua/plenary.nvim" }
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
  build = 'yarn global add live-server',
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




}
