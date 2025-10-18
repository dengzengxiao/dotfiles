-- bootstrap lazy.nvim, LazyVim and your plugins

require("config.lazy")
require("competitest").setup({
    runner_ui = {
        interface = "split",
    },
    compile_command = {
        cpp = {
            exec = "g++",
            args = { "-std=c++23", "-static", "-Ofast", "-Wall", "$(FNAME)", "-o", "./executables/$(FNOEXT)" },
        },
    },
    -- running_directory = "./excutables",
    run_command = {
        cpp = { exec = "./executables/$(FNOEXT)" },
    },
    maximum_time = 1000,
    testcases_directory = "./testcases",
    companion_port = 12345,
    template_file = "~/OI/templates/NewFile.cpp",
    received_problems_prompt_path = false,
    received_contests_prompt_directory = false,
    received_contests_prompt_extension = false,
    evaluate_template_modifiers = true,
})
require("lualine").setup({
    options = {
        theme = "everforest",
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
    },
})
