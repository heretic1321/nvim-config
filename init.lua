
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.opt.rtp:prepend(lazypath)
vim.keymap.set('n', '<C-z>', '<Nop>', { noremap = true })
local opts = {} 
vim.keymap.set("x", "<leader>p",[["_dP]], { noremap = true})
vim.keymap.set("n", "<C-d>","<C-d>zz", { noremap = true})
vim.keymap.set("n", "<C-u>","<C-u>zz", { noremap = true})
vim.o.number = true
vim.o.relativenumber = true


require("vim-options")
require("lazy").setup("plugins")



