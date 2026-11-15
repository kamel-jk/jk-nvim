-- Local Shortcuts
local	k = vim.keymap.set
local	c = vim.cmd

-- Leader
vim.g.mapleader		= " "

-- Actual Remaps

--Navigation
k("n", "<leader>ex", c.Ex)
k("n", "<C-d>", "<C-d>zz")
k("n", "<C-u>", "<C-u>zz")

--Write & Quit
k("n", "<leader>wq", c.wq)
k("n", "<leader>w", c.w)
k("n", "<leader>q", c.q)

--Editing
k("v", "J", ":m '>+1<CR>gv=gv") -- Move selection down
k("v", "K", ":m '<-2<CR>gv=gv") -- Move selection up

--Search
k("n", "n", "nzzzv")
k("n", "N", "Nzzzv")


--Clipboard
k("v", "<leader>y", '"+y') --Copy selection into system clipboard
k("n", "<leader>yy", '"+yy') --Copy whole Line into system clipboard
