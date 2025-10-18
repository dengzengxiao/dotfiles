return {
    {
        "neanias/everforest-nvim",
        version = false,
        lazy = false,
        priority = 1000,
        config = function()
            require("everforest").setup({
                transparent_background_level = 2,
                italics = true,
            })
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "everforest",
        },
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        opts = {
            filesystem = {
                filtered_items = {
                    visible = true,
                    show_hidden_count = true,
                    hide_dotfiles = false,
                    hide_gitignored = true,
                    hide_by_name = {
                        --'.git', '.DS_Store',  -- 'thumbs.db',
                    },
                    never_show = { ".git" },
                },
            },
        },
    },
    { "saghen/blink.cmp", enabled = true },
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            scroll = { enabled = false },
        },
    },
}
