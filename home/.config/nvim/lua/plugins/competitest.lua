return {
	"xeluxee/competitest.nvim",
	cmd = "CompetiTest",
	dependencies = "MunifTanjim/nui.nvim",
	opts = {
		runner_ui = { interface = "split" },
		compile_command = {
			cpp = {
				exec = "g++",
				args = { "-std=c++14", "-static", "-O2", "-Wall", "-DLOCAL", "$(FNAME)", "-o", "./executables/$(FNOEXT)" },
			},
		},
		run_command = { cpp = { exec = "./executables/$(FNOEXT)" } },
		maximum_time = 1000,
		testcases_directory = "./testcases",
		companion_port = 12345,
		template_file = "~/data/LearnOI/templates/NewFile.cpp",
		received_problems_prompt_path = false,
		received_contests_prompt_directory = false,
		received_contests_prompt_extension = false,
		evaluate_template_modifiers = true,
	}
}
