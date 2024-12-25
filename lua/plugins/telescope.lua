return{
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 
            'nvim-lua/plenary.nvim',
            {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
        },
        config = function()
            require('telescope').setup{
                pickers = {
                    find_files = {
                        theme = "ivy"
                    }
                }
            }
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
            vim.keymap.set('n', '<leader>ph', builtin.help_tags, { desc = 'Telescope find help_tags' })
            vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
        end,
    }
}
