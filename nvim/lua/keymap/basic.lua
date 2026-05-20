vim.g.mapleader = " "
vim.g.maplocalleader = " "
local opt = { noremap = true, silent = true }
local map = vim.keymap.set

-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- Ctrl+N Normal
map({"i", "v"}, "<C-n>", "<Esc>", opt)

-- Ctrl+j/k 快速滚动
map("n", "<C-j>", "9j", opt)
map("n", "<C-k>", "9k", opt)

-- Ctrl+h/l 快速单词跳转
map("n", "<C-h>", "b", opt)
map("n", "<C-l>", "w", opt)

-- Normal/Insert模式下的保存、撤销
map({"n", "i"}, "<C-s>", "<Cmd>w<CR>", opt)
map({"n", "i"}, "<C-z>", "<Cmd>undo<CR>", opt)
map("n", "<A-z>", "<C-z>", opt)

-- Alt+hjkl 窗口跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- 窗口分屏 (覆盖原 s 功能)
map("n", "s", "<Nop>", opt)
map("n", "sv", "<Cmd>vsp<CR>", opt)
map("n", "sh", "<Cmd>sp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt)

-- 窗口比例控制
map("n", "s=", "<C-w>=", opt)
map("n", ",", "<Cmd>vertical resize +5<CR>", opt)
map("n", ".", "<Cmd>vertical resize -5<CR>", opt)
map("n", "<A-,>", "<Cmd>resize +3<CR>",opt)
map("n", "<A-.>", "<Cmd>resize -3<CR>",opt)

-- terminal
map("n", "<leader>tm", "<Cmd>term bash<CR>", opt)
map("t", "<Esc>", "<C-\\><C-n>", opt)

-- Ctrl + q
map("n", "<C-q>", "<Cmd>q<CR>", opt)

