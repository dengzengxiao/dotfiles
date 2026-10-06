-- Lsp config
return {
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            -- Disable lsp code highlight and use treesitter's instead
            vim.lsp.semantic_tokens.enable(false)
            vim.lsp.document_color.enable(false)

            vim.diagnostic.config({
                virtual_text = true,
                update_in_insert = false,
                signs = false,
                underline = true,
                severity_sort = true,
            })

            vim.lsp.enable({ "clangd" })
        end,
    },
}
