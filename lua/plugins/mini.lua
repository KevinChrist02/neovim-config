return{
    {
        "echasnovski/mini.nvim",
        config = function ()
            require("mini.statusline").setup({})
            require("mini.pairs").setup({})
            require("mini.notify").setup({})
            require("mini.icons").setup({})
        end,
    }
}

