return{
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup {
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗",
                    },
                },
            }
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim","neovim/nvim-lspconfig" },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup {
                ensure_installed = 
                { 
                    "lua_ls", "ts_ls", "svelte",
                    "rust_analyzer", "gopls",
                },
            }
        end,
    },
}
