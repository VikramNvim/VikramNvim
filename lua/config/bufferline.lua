local buff = require('bufferline')
buff.setup({
 options = {
  style_preset = {
   buff.style_preset.no_italic,
   -- buff.style_preset.no_bold
  },
  hover = {
   enabled = true,
   delay = 200,
   reveal = {'close'}
  },
  -- groups = {
  --  items = {
  --   require('bufferline.groups').builtin.pinned:with({ icon = "" })
  --  }
  -- },
 }  
})

diagnostics_indicator = function(count, level)
 local icon = level:match("error") and " " or ""
 return " " .. icon .. count
end

return buff 
