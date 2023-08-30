--[[ opts.lua ]]
local opt = vim.opt

-- opt.wrap=false
opt.laststatus= 2
opt.showtabline= 2
opt.relativenumber = true
opt.cursorline = true
opt.cursorcolumn = true
opt.mouse = "a"
-- opt.clipboard = "unnamedplus"
opt.smartcase = true
opt.tabstop = 1
opt.shiftwidth = 0
opt.expandtab = true
opt.number = true
opt.textwidth = 80
opt.linebreak = true
opt.scrolloff = 0
opt.cmdheight = 0
opt.showmode = false
opt.numberwidth = 1
opt.smartindent = true
opt.completeopt = "menuone,noselect"
opt.completeopt = {"menuone", "longest", "preview"}
opt.signcolumn = "yes"
opt.termguicolors = true
opt.spelllang = "en_gb,en_us"
opt.mousemodel = "popup"
opt.timeoutlen = 500
-- vim.o.guifont = "Victor Mono Nerd Font:h11"
-- highlight on yank
vim.cmd([[au TextYankPost * silent! lua vim.highlight.on_yank()]])
-- Vertically center document when entering insert mode
vim.cmd([[autocmd InsertEnter * norm zz]])
-- detect mdx file and set file type to markdown
vim.cmd([[autocmd BufNewFile,BufRead *.mdx set filetype=markdown.mdx]])
--format document on save using lsp
vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
