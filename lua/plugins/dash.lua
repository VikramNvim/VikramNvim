return {
 {
   'glepnir/dashboard-nvim',
   event = 'VimEnter',
   dependencies = { {'nvim-tree/nvim-web-devicons'}},

  config = function()
   require('dashboard').setup {
    theme = 'hyper',
    config = {
     header = {
      " 🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧",
      " 🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧",
      " 🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧🟧",
      " ⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜",
      " ⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜🔵⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜",
      " ⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜",
      " 🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩",
      " 🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩",
      " 🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩",
      "                                                       ",
      "Ｖａｓｕｄｈａｉｖａ Ｋｕｔｕｍｂａｋａｍ",
      "                                                       ",
     },
     -- week_header = {
     --  enable = false,
     -- },
     shortcut = {
      { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
      {
       icon = ' ',
       icon_hl = '@variable',
       desc = 'Files',
       group = 'Label',
       action = 'Telescope find_files',
       key = 'f',
      },
      {
       desc = ' Apps',
       group = 'DiagnosticHint',
       action = 'Telescope app',
       key = 'a',
      },
      {
       desc = ' dotfiles',
       group = 'Number',
       action = 'Telescope dotfiles',
       key = 'd',
      },
     },
     footer = {}
    },
   }
  end
  },
 }