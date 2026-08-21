local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Snacks picker
vim.keymap.set("n", "<leader>ff", function() Snacks.picker.files() end, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fr", function() Snacks.picker.recent() end, { desc = "Recent Files" })
vim.keymap.set("n", "<leader>fb", function() Snacks.picker.buffers() end, { desc = "Buffers" })
vim.keymap.set("n", "<leader>/", function() Snacks.picker.grep() end, { desc = "Grep" })
vim.keymap.set("n", "<leader>sg", function() Snacks.picker.grep() end, { desc = "Grep" })
vim.keymap.set("n", "<leader>sh", function() Snacks.picker.help() end, { desc = "Help" })
vim.keymap.set("n", "<leader>sc", function() Snacks.picker.command_history() end, { desc = "Command History" })
vim.keymap.set("n", "<leader>u", function() Snacks.picker.undo() end, { desc = "Undo History" })

-- File tree and common buffer commands
vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>", opts)
vim.keymap.set("n", "<leader>w", "<Cmd>write<CR>", opts)
vim.keymap.set("n", "<leader>q", "<Cmd>quit<CR>", opts)

-- CompetiTest
vim.keymap.set("n", "<F11>", "<Cmd>CompetiTest run<CR>", opts)
vim.keymap.set("i", "<F11>", "<Cmd>CompetiTest run<CR>", opts)
vim.keymap.set("n", "<leader>cx", "<Cmd>CompetiTest receive problem<CR>", opts)

-- OI
vim.keymap.set("n", "<F2>", "<Cmd>vnew %:r.log<CR><Cmd>wincmd L<CR><Cmd>w<CR><Cmd>wincmd 50<<CR><Cmd>new %:r.out<CR><Cmd>w<CR><Cmd>new %:r.in<CR><Cmd>w<CR><Cmd>wincmd h<CR>", { desc = "create problem" })
vim.keymap.set("n", "<F3>", ":!g++ %:r.cpp -std=c++14 -O2 -Wall -DLOCAL -static -Wfatal-errors -o %:r", { desc = "Compile problem" })
vim.keymap.set("n", "<F4>", ":!g++ %:r.cpp -std=c++14 -O2 -Wall -DLOCAL -Wfatal-errors -fsanitize=address -o %:r", { desc = "Compile problem" })
vim.keymap.set("n", "<F5>", ":!time ./%:r 2> %:r.log", { desc = "Run without file I/O" })
vim.keymap.set("n", "<F6>", ":!time ./%:r < %:r.in > %:r.out 2> %:r.log", { desc = "Run with file I/O" })

-- Todo comments and Git hunks
vim.keymap.set("n", "<leader>st", function() Snacks.picker.todo_comments() end, { desc = "Todo Comments" })
vim.keymap.set("n", "]h", function() require("gitsigns").nav_hunk("next") end, { desc = "Next Hunk" })
vim.keymap.set("n", "[h", function() require("gitsigns").nav_hunk("prev") end, { desc = "Previous Hunk" })
vim.keymap.set("n", "<leader>hp", function() require("gitsigns").preview_hunk() end, { desc = "Preview Hunk" })
vim.keymap.set("n", "<leader>hb", function() require("gitsigns").blame_line() end, { desc = "Blame Line" })

vim.keymap.set("n", "<leader>cp", "<Cmd>MarkdownPreviewToggle<CR>", { desc = "Markdown Preview" })
vim.keymap.set("n", "<Esc>", "<Cmd>:nohl<CR>", opts)

-- Lazy panel
vim.keymap.set("n", "<leader>l", "<Cmd>Lazy<CR>", { desc = "lazy.nvim panel" })

-- Buffers
vim.keymap.set("n", "H", "<Cmd>bprevious<CR>", { desc = "Previous Buffer" })
vim.keymap.set("n", "L", "<Cmd>bnext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bd", "<Cmd>bdelete<CR>", { desc = "Delete Buffer" })
