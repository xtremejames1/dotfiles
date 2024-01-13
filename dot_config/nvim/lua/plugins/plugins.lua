local plugins = {
    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
    },
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({

            })
        end
    },
    {
        "epwalsh/obsidian.nvim",
        version = "*",  -- recommended, use latest release instead of latest commit
        lazy = true,
        ft = "markdown",
        dependencies = {
            -- Required.
            "nvim-lua/plenary.nvim",
        },
        opts = {
            workspaces = {
                {
                    name = "ObsidianVault",
                    path = "/media/xtremejames1/HDD 500GB/Documents/Windows Documents 12-28-23/Obsidian Vault/",
                }
            },
        },
        config = function()
            require("obsidian").setup({

            })
        end
    },
    {
        "karb94/neoscroll.nvim",
        config = function ()
            require('neoscroll').setup {}
        end
    }
}
return plugins
