-- defines the 'leader' for vim commands
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- In normal mode, " pv" will do the same as :Ex
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
