local buff = require('bufferline')
buff.setup({
 options = {
  style_preset = {
   buff.style_preset.no_italic,
   -- buff.style_preset.no_bold
  },
 }  
})

return buff 
