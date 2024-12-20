vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use({
        'navarasu/onedark.nvim',
        config = function()
            vim.cmd [[colorscheme onedark]]
        end
    })

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use({ 'neovim/nvim-lspconfig' })
    use({ 'hrsh7th/nvim-cmp' })
    use({ 'hrsh7th/cmp-nvim-lsp' })
    use({ "williamboman/mason.nvim" })
    use("williamboman/mason-lspconfig.nvim")
    use('hrsh7th/cmp-buffer')
    use({ "nvim-lua/plenary.nvim" })
    use("saadparwaiz1/cmp_luasnip")
    use('L3MON4D3/LuaSnip')

    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use('barrett-ruth/live-server.nvim')
    use('xiyaowong/transparent.nvim')

    use('nvim-tree/nvim-web-devicons')
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use({
        'MeanderingProgrammer/render-markdown.nvim',
        after = { 'nvim-treesitter' },
        --requires = { 'echasnovski/mini.nvim', opt = true }, -- if you use the mini.nvim suite
        -- requires = { 'echasnovski/mini.icons', opt = true }, -- if you use standalone mini plugins
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
    })

    use 'rcarriga/nvim-notify'
    use 'MunifTanjim/nui.nvim'

    use {
        "folke/noice.nvim",
        opts = {
            -- add any options here
        },
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        }
    }

    use('ThePrimeagen/vim-be-good')
end)
