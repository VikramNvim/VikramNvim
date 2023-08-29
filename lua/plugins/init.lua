return {
 {
  'nvim-lua/plenary.nvim',
 },
 {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
  dependencies = { 'nvim-lua/plenary.nvim' }
 },
 {
  "folke/which-key.nvim",
 },
 {
  'NvChad/nvim-colorizer.lua'
 },
 {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
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
 },
 {
  "kdheepak/lazygit.nvim",
  dependencies = {
   "nvim-lua/plenary.nvim",
  },
 },
 -- {
 --  "catppuccin/nvim", name = "catppuccin", priority = 1000
 -- },
 {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {}
 },
 {
  'tamton-aquib/staline.nvim'
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
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
   "nvim-tree/nvim-web-devicons",
  },
  config = function()
   require("nvim-tree").setup {}
  end,
 },
 {
  "numToStr/FTerm.nvim"
 },
 {
  'ThePrimeagen/harpoon'
 },
 {
  'stevearc/dressing.nvim',
  opts = {},
 },
 {
  'mbbill/undotree'
 },
 -- LSP SERVERS
 {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
},
--Autocompletion
{
 'hrsh7th/nvim-cmp',
 'hrsh7th/cmp-nvim-lsp',
 'L3MON4D3/LuaSnip',
 'saadparwaiz1/cmp_luasnip',
 'rafamadriz/friendly-snippets',
 'hrsh7th/cmp-buffer',
 'hrsh7th/cmp-path',
},
 {
  "kylechui/nvim-surround",
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  event = "VeryLazy",
  config = function()
   require("nvim-surround").setup({
    -- Configuration here, or leave empty to use defaults
   })
  end
 },
 {
  'numToStr/Comment.nvim',
  -- opts = {},
  lazy = false,
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
 {
  'rcarriga/nvim-notify'
 },
 {
  "NeogitOrg/neogit",
  dependencies = {
   "nvim-lua/plenary.nvim",         
   "nvim-telescope/telescope.nvim", 
   "sindrets/diffview.nvim",       
  },
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
