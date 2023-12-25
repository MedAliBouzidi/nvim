vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  require('plugins.colorscheme'),
  require('plugins.telescope'),
  require('plugins.treesitter'),
}
local opts = {}

require("lazy").setup(plugins, opts)

-- Assign colorscheme
vim.cmd.colorscheme "nightfly"

-- Initialize Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- Initialize Treesitter
local config = require('nvim-treesitter.configs')
config.setup({
  ensure_installed = { "c", "lua", "javascript", "html", "java", "typescript", "python", "yaml", "tsx", "css", "json" },
  highlight = { enable = true },
  indent = { enable = true },
})
