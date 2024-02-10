return {
  'nanozuki/tabby.nvim',
  event = 'VeryLazy',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('tabby.tabline').use_preset('active_wins_at_tail', {
  -- theme = {
  --   fill = 'TabLineFill',
  --   head = 'TabLine',
  --   current_tab = 'TabLineSel',
  --   tab = 'TabLine',
  --   win = 'TabLine',
  --   tail = 'TabLine',
  -- },
  nerdfont = true,
  lualine_theme = "catppuccin",
  tab_name = {
    name_fallback = function(tabid)
      return tabid
    end,
  },
  buf_name = {
    mode = "'unique'|'relative'|'tail'|'shorten'",
  },
})
  end,
}
