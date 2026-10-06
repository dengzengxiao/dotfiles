-- Lsp buffer-specific keybinds
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = args.buf, desc = "Goto definition" })
        vim.keymap.set("n", "<leader>lf", function() vim.lsp.buf.format({ async = true }) end, { buffer = args.buf, desc = "Format buffer (LSP)" })
        vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float, { buffer = args.buf, desc = "Line diagnostics" })
        vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = -1, float = true }) end, { buffer = args.buf, desc = "Previous diagnostic" })
        vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = 1, float = true }) end, { buffer = args.buf, desc = "Next diagnostic" })
        vim.keymap.set("n", "<leader>ss", function() Snacks.picker.lsp_symbols() end, { buffer = args.buf, desc = "Document symbols" })
        vim.keymap.set("n", "<leader>sd", function() Snacks.picker.lsp_diagnostics() end, { buffer = args.buf, desc = "Workspace diagnostics" })
    end,
})
