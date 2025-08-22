
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

vim.keymap.set("n", "<leader>|", "<cmd>vsplit<cr>")
vim.keymap.set("n", "<leader>-", "<cmd>split<cr>")

-- move focus
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")

-- H/L = width  (Left = narrower, Right = wider)
-- J/K = height (Down = shorter, Up = taller)
vim.keymap.set("n", "<leader>H", "<cmd>vertical resize -8<cr>", { desc = "Narrower" })
vim.keymap.set("n", "<leader>L", "<cmd>vertical resize +8<cr>", { desc = "Wider" })
vim.keymap.set("n", "<leader>J", "<cmd>resize -4<cr>",           { desc = "Shorter" })
vim.keymap.set("n", "<leader>K", "<cmd>resize +4<cr>",           { desc = "Taller" })

-- Equalize all splits
vim.keymap.set("n", "<leader>=", "<C-w>=", { desc = "Equalize splits" })

-- --- Close / keep-only ---
-- Close the current split (keeps the buffer open elsewhere)
vim.keymap.set("n", "<leader>q", "<cmd>close<cr>", { desc = "Close split" })

-- Keep only this split (close others)
vim.keymap.set("n", "<leader>o", "<cmd>only<cr>", { desc = "Only this split" })

-- Optional: quit Neovim quickly
vim.keymap.set("n", "<leader>Q", "<cmd>q<cr>", { desc = "Quit" })
vim.opt.clipboard:append("unnamedplus")


require("vim-options")
require("lazy").setup("plugins")



