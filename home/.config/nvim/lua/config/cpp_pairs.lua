local ft = { c = true, cpp = true, h = true, hpp = true }

local cpp_pairs = {
    ["("] = ")", ["["] = "]", ["{"] = "}",
    ["'"] = "'", ['"'] = '"',
}

local function apply(buf)
    vim.schedule(function()
        if not vim.api.nvim_buf_is_valid(buf) then return end
        if not ft[vim.bo[buf].filetype] then return end

        for open, close in pairs(cpp_pairs) do
            vim.keymap.set("i", open, open .. close .. "<Left>", {
                buffer = buf,
                desc = "C++ pair " .. open .. close,
            })
        end

        vim.bo[buf].copyindent = true
    end)
end

vim.api.nvim_create_autocmd({ "FileType", "BufEnter" }, {
    group = vim.api.nvim_create_augroup("cpp_pairs", { clear = true }),
    pattern = "*",
    callback = function(ev) apply(ev.buf) end,
})
