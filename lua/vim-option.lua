--[[
--This is lua file, you can't run vim command here, therefor you need meta-access
--to run vim command in lua file. Therefor the preprocessor can run it from lua file
--]]
--
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set nu rnu")
vim.cmd("set autoindent")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set smarttab")
vim.cmd("set softtabstop=4")
vim.cmd("set mouse=a")
vim.cmd("colorscheme slate")


vim.cmd("imap jj <Esc>")
vim.cmd("inoremap <C-h> <Left>")
vim.cmd("inoremap <C-j> <Down>")
vim.cmd("inoremap <C-k> <Up>")
vim.cmd("inoremap <C-l> <Right>")

-- color for line nubmer
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='blue' })
vim.api.nvim_set_hl(0, 'LineNr', { fg='yellow' })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='magenta' })

-- setting leader key
vim.cmd('let mapleader = " "')

-- split screen
-- source
-- 1. https://www.youtube.com/watch?v=_dHRBzG8-DA&t=206s
-- 2. dev.to/aminnairi/become-a-leader-in-vim-window-and-tab-creation-12c5
vim.cmd("nnoremap <Leader>hs <C-w>s") -- horizontal split
vim.cmd("nnoremap <Leader>vs <C-w>v") -- vertical split
-- moving around between the window, just press Alt + navigation
vim.cmd("nnoremap <A-h> <C-w>h")
vim.cmd("nnoremap <A-j> <C-w>j")
vim.cmd("nnoremap <A-k> <C-w>k")
vim.cmd("nnoremap <A-l> <C-w>l")
-- resizing window
vim.cmd("nnoremap <A-S-h> <C-w><")
vim.cmd("nnoremap <A-S-l> <C-w>>")
vim.cmd("nnoremap <A-S-j> <C-w>-")
vim.cmd("nnoremap <A-S-k> <C-w>=")



