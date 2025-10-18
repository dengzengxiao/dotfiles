-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = {
    noremap = true,
    silent = true,
}

-- Default keymaps
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- CompetiTest run shortcut: F11
vim.keymap.set("n", "<F11>", "<Cmd>CompetiTest run<CR>", opts)
vim.keymap.set("i", "<F11>", "<Cmd>CompetiTest run<CR>", opts)

-- CompetiTest receive shortcut: <leader>cx
vim.keymap.set("n", "<leader>cx", "<Cmd>CompetiTest receive problem<CR>", opts)

-- For convenience: change numpad 5 ==> Esc, <leader>cL ==> LspRestart
vim.keymap.set("i", "<kOrigin>", "<esc>", opts)
vim.keymap.set("n", "<leader>cL", "<Cmd>LspRestart<CR>", opts)
