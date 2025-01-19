return{
    {
        "folke/tokyonight.nvim",
        config = function ()
            require("tokyonight").setup({})
            vim.cmd.colorscheme("tokyonight-day")
        end,
    },
}
