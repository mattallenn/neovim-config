vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--NeoTree Keymaps
vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>") 

--Markdown Keymaps
vim.keymap.set("n", "<leader>mp", "<Cmd>MarkdownPreview<CR>") 

-- Buffers  
vim.keymap.set("n", "<C-j>", "<Cmd>bprev<CR>") 
vim.keymap.set("n", "<C-k>", "<Cmd>bnext<CR>") 
vim.keymap.set("n", "<C-w>", "<Cmd>bd<CR>") 

