lvim.builtin.nvimtree.active = false

lvim.plugins = {
    -- { "vimwiki/vimwiki" },
    { "MunifTanjim/nui.nvim" },
    { "VonHeikemen/fine-cmdline.nvim" },
    { "ThePrimeagen/harpoon" },
    { "roobert/activate.nvim" },
    { "kdheepak/lazygit.nvim" },
    { "easymotion/vim-easymotion" },
    { "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("neorg").setup {
                load = {
                    ["core.defaults"] = {}, -- Loads default behaviour
                    ["core.concealer"] = {}, -- Adds pretty icons to your documents
                    ["core.dirman"] = { -- Manages Neorg workspaces
                        config = {
                            workspaces = {
                                notes = "~/vimwiki",
                            },
                            default_workspace = "notes",
                        },
                    },
                },
            }
        end,
    },
}
