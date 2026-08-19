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
            vim.cmd.colorscheme("everforest")
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter").setup({
                install_dir = vim.fn.stdpath("data") .. "/site",
            })
            vim.api.nvim_create_autocmd("FileType", {
                pattern = { "c", "cpp", "lua", "markdown", "query", "vim", "bash", "json" },
                callback = function(args)
                    pcall(vim.treesitter.start, args.buf)
                end,
            })
        end,
    },
    {
        "echasnovski/mini.pairs",
        event = "InsertEnter",
        opts = {},
    },
    {
        "saghen/blink.cmp",
        event = "InsertEnter",
		dependencies = { 
			"saghen/blink.lib",
			"rafamadriz/friendly-snippets"
		},
		build = function()
			require('blink.cmp').build():pwait()
		end,
        opts = {},
    },
	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {
			options = {
				always_show_bufferline = false,
				seperator_style = "thin"
			}
		}
	}
}
