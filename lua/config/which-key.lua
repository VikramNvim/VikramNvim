local M = {}

function M.setup()
 local whichkey = require "which-key"

 local conf = {
  window = {
   border = "single", -- none, single, double, shadow
   position = "bottom",
  },
 }

 local opts = {
  mode = {'n', 'v'},
  prefix = "<leader>",
  buffer = nil,
  silent = true,
  noremap = true,
  nowait = false,
 }

 local mappings = {
  ["D"] = { "<cmd>Dashboard<CR>", "Dashboard" },
  ["w"] = { "<cmd>update!<CR>", "Save" },
  ["q"] = { "<cmd>q!<CR>", "Quit" },
  ["e"] = { "<cmd>NvimTreeFocus<CR>", "NvimTree" },
  -- ["c"] = { "<cmd>Ex<CR>", "" },
  --
  ["f"] = { "<cmd>Telescope<CR>", "Telescope" },
  ["ff"] = { "<cmd>Telescope find_files prompt_prefix=🔍<CR>", "Find File" },

    -- ["t"] = { "<cmd>lua require('FTerm').open()<CR>", "FTerm" },
    -- ["tt"] = { "<cmd>tab term<CR>", "Term Tab" },
    ["u"] = { "<cmd>UndotreeToggle<CR>", "UndoTree" },
    ["x"] = { "<cmd>bd!<CR>", "Close Buffer" },
    ["X"] = { "<cmd>%bd|e#|bd#<CR>", "Close all Buffer" },
    ["c"] = { "<cmd>NvimTreeClose<CR>", "Close NvimTree" },
    ["/"] = { "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", "Comment  Toggle" },
    -- ["."] = { "<cmd>'<,'>CommentToggle<CR>", "Comment in V mode" },
    ["p"] = { "\"_dp", "Replace word" },
    ["y"] = { "\"+y", "unknown" },
    ["Y"] = { "\"+Y", "unknown" },
    ["d"] = { "\"_d", "unknown" },
    ["<leader>"] = { "=ap", "Format" },


    z = {
      name = "Lazy",
      z = { "<cmd>Lazy<cr>", "Lazy" },
      c = { "<cmd>Lazy check<cr>", "Check" },
      C = { "<cmd>Lazy clean<cr>", "Clean" },
      i = { "<cmd>Lazy install<cr>", "Install" },
      s = { "<cmd>Lazy sync<cr>", "Sync" },
      S = { "<cmd>Lazy status<cr>", "Status" },
      u = { "<cmd>Lazy update<cr>", "Update" },
      r = { "<cmd>Lazy restore<cr>", "Restore" },
    },

    h = {
      name = "Harpoon",
      m = { "<cmd>lua require('harpoon.mark').add_file()<cr>", "Mark" },
      o = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", "Open" },
      p = { "<cmd>lua require('harpoon.ui').nav_next()<cr>", "Previos" },
      n = { "<cmd>lua require('harpoon.ui').nav_prev()<cr>", "Next" },
      f = { "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", "First" },
    },

    -- g = {
    --   name = "Git",
    --   s = { "<cmd>Neogit<CR>", "Status" },
    -- },
  }

  whichkey.setup(conf)
  whichkey.register(mappings, opts)
 end

return M
