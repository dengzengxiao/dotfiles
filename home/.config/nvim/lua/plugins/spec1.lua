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
                    visible = false,
                    show_hidden_count = true,
                    hide_dotfiles = true,
                    hide_gitignored = true,
                    hide_by_name = {
                        --'.git', '.DS_Store',  -- 'thumbs.db',
                    },
                    never_show = { ".git" },
                },
            },
        },
    },
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            options = {
                theme = "everforest",
                section_separators = { left = "", right = "" },
                component_separators = { left = "", right = "" },
            },
        },
    },
    { "saghen/blink.cmp", enabled = true },
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        keys = {
            {
                "<leader>e",
                function()
                    Snacks.explorer({ cwd = vim.fn.getcwd() })
                end,
                desc = "Explorer Snacks (cwd)",
            },
            {
                "<leader>E",
                function()
                    Snacks.explorer({ cwd = LazyVim.root() })
                end,
                desc = "Explorer Snacks (root dir)",
            },
        },
        opts = {
            scroll = { enabled = false },
            dashboard = {
                preset = {
                    header = [[
                   .....      ..             
       ..-------------        ---.        .. 
     .-----------------.      -----. .-----. 
   .---------------------.     -----------.  
  .------------------------.    .-------.    
  --......--------------------   .--.        
 .-.         .----------------------.        
 --.            .-------------------.        
 .--.             .-----------------         
  ---               ----..---------          
  .---               -----...-----           
   .---.              .---------.            
     ----.     .--.     .-----.              
      .-----.  .-----.    .------.           
         .----------------.   ....           
             ...----...                      
                            ]],
                },
            },
        },
    },
}
