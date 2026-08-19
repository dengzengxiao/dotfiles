return {
    {
        "xeluxee/competitest.nvim",
        dependencies = "MunifTanjim/nui.nvim",
        opts = {
            runner_ui = {
                interface = "split",
            },
            compile_command = {
                cpp = {
                    exec = "g++",
                    args = { "-std=c++23", "-static", "-Ofast", "-Wall", "$(FNAME)", "-o", "./executables/$(FNOEXT)" },
                },
            },
            run_command = {
                cpp = { exec = "./executables/$(FNOEXT)" },
            },
            maximum_time = 1000,
            testcases_directory = "./testcases",
            companion_port = 12345,
            template_file = "~/data/LearnOI/templates/NewFile.cpp",
            received_problems_prompt_path = false,
            received_contests_prompt_directory = false,
            received_contests_prompt_extension = false,
            evaluate_template_modifiers = true,
        },
    },
    {
        "andymass/vim-matchup",
        event = "BufReadPost",
        config = function()
            vim.g.matchup_matchparen_offscreen = { method = "status_manual" }
        end,
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = function()
            require("lazy").load({ plugins = { "markdown-preview.nvim" } })
            vim.fn["mkdp#util#install"]()
        end,
        keys = {
            {
                "<leader>cp",
                ft = "markdown",
                "<cmd>MarkdownPreviewToggle<cr>",
                desc = "Markdown Preview",
            },
        },
        config = function()
            vim.cmd([[do FileType]])
        end,
    },
}
