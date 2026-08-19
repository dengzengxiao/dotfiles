vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "c", "cpp", "md", "txt", "c.snippets", "cpp.snippets" },
    callback = function()
        vim.b.autoformat = false
    end,
})
