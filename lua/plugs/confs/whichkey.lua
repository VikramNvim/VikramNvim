local M = {}

function M.setup()
  local whichkey = require "which-key"

  local conf = {
    window = {
      border = "single", -- none, single, double, shadow
      position = "bottom", -- bottom, top
    },
  }

  local opts = {
    mode = {'n', 'v'}, -- Normal mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false, -- use `nowait` when creating keymaps
  }

  local mappings = {
    ["w"] = { "<cmd>update!<CR>", "Save" },
    ["q"] = { "<cmd>q!<CR>", "Quit" },
    ["e"] = { "<cmd>NvimTreeFocus<CR>", "File Explorer" },
    -- ["c"] = { "<cmd>Ex<CR>", "" },
    ["ff"] = { "<cmd>Telescope<CR>", "Telescope" },
    ["f"] = { "<cmd>Telescope find_files<CR>", "Find File" },
    ["t"] = { "<cmd>lua require('FTerm').open()<CR>", "FTerm" },
    ["u"] = { "<cmd>UndotreeToggle<CR>", "UndoTree" },
    ["x"] = { "<cmd>bd!<CR>", "Close Buffer" },
    ["X"] = { "<cmd>%bd|e#|bd#<CR>", "Close all Buffer" },
    ["/"] = { "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", "Comment  Toggle" },
    -- ["."] = { "<cmd>'<,'>CommentToggle<CR>", "Comment in V mode" },
    ["p"] = { "\"_dp", "Replace word" },
    ["y"] = { "\"+y", "unknown" },
    ["Y"] = { "\"+Y", "unknown" },
    ["d"] = { "\"_d", "unkown" },
    ["A"] = { "=ap", "unkown" },


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

    g = {
      name = "Git",
      s = { "<cmd>Neogit<CR>", "Status" },
    },
  }

  whichkey.setup(conf)
  whichkey.register(mappings, opts)
end

return M
