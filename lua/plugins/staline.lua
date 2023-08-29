return {
 'tamton-aquib/staline.nvim',
 opts = {
  sections = {
   left = {
    -- ' ', 'right_sep_double', '-M', 'left_sep_double', ' ',
    -- 'right_sep',  '-file_name', 'left_sep', ' ',
    ' ', 'right_sep_double', '-branch', 'left_sep_double', ' ',
   },
   mid  = {'right_sep_double', '-cool_symbol', 'left_sep_double'},
   right= {
    ' ', 'right_sep_double', '-line_column', 'left_sep_double', ' ',
    -- 'right_sep', '- ', '-lsp_name', '- ', 'left_sep',
    -- 'right_sep_double', '-M', 'left_sep_double', ' ',
   }
  },

 defaults={
   fg = "#986fec",
   cool_symbol = " ＩＮＤＩＡ ",
   left_separator = "",
   right_separator = "",
   line_column = "  [%L]  ",
   true_colors = true,
   --line_column = "[%l:%c] | %p%% "
   font_active = "bold"
 },
 mode_colors = {
   n  = "#181a23",
   i  = "#181a23",
   ic = "#181a23",
   c  = "#181a23",
   v  = "#181a23"       -- etc
 }
},
}
