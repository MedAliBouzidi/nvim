vim.g.mapleader = " "

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.cmd("set number relativenumber")

vim.cmd("autocmd FileType c setlocal noexpandtab tabstop=8 softtabstop=0 shiftwidth=8")
