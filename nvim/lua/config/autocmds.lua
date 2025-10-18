-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "c", "cpp", "md", "txt", "c.snippets", "cpp.snippets" },
    callback = function()
        vim.b.autoformat = false
    end,
})
