return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            picker = { enabled = true },
            scroll = { enabled = false },
            dashboard = { enabled = false },
        },
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        cmd = "Neotree",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
        },
        opts = {
            filesystem = {
                filtered_items = {
                    visible = false,
                    show_hidden_count = true,
                    hide_dotfiles = true,
                    hide_gitignored = true,
                    hide_by_name = {},
                    never_show = { ".git" },
                },
            },
        },
    }
}
