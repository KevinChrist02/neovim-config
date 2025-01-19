return{
    {
        "epwalsh/obsidian.nvim",
        version = "*",  -- recommended, use latest release instead of latest commit
        lazy = false,
        ft = "markdown",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "hrsh7th/nvim-cmp",
            "nvim-telescope/telescope.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function ()
            require("obsidian").setup({

                workspaces = {
                    {
                        name = "personal",
                        path = "~/vaults/personal",
                    },
                    {
                        name = "uni",
                        path = "~/vaults/uni",
                    },
                },
                ui = { enable = false },
                daily_notes = {
                    folder = "/dailies",
                    date_format = "%d-%m-%Y",
                    alias_format = "%B %-d, %Y",
                    default_tags = { "daily-notes" },
                    template = nil
                },
                completion = {
                    nvim_cmp = true,
                    min_chars = 2,
                },
            })
        end,
    },
}
