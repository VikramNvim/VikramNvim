return {
  's1n7ax/nvim-terminal',
  config = function()
   vim.o.hidden = true
   require('nvim-terminal').setup({
    window = {
        position = 'botright',
        split = 'sp',
        width = 50,
        height = 5,
    },
    disable_default_keymaps = false,
    toggle_keymap = '<leader>;',
    window_height_change_amount = 2,
    window_width_change_amount = 2,
    increase_width_keymap = '<leader><leader>+',
    decrease_width_keymap = '<leader><leader>-',
    increase_height_keymap = '<leader>+',
    decrease_height_keymap = '<leader>-',

    -- terminals = {
    --     {keymap = '<leader>1'},
    --     {keymap = '<leader>2'},
    --     {keymap = '<leader>3'},
    --     {keymap = '<leader>4'},
    --     {keymap = '<leader>5'},
    -- },
   })
  end,
 }
