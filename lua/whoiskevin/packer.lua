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
        "rose-pine/neovim",
        as = "rose-pine",
        config = function()
            vim.cmd [[colorscheme rose-pine]]
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

    use({
        "epwalsh/obsidian.nvim",
        tag = "*",
        requires = {
            "nvim-lua/plenary.nvim"
        },
        config = function()
            require('obsidian')
        end
    })

    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use('barrett-ruth/live-server.nvim')
    use('xiyaowong/transparent.nvim')

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use('nvim-tree/nvim-web-devicons')

    use('mrcjkb/rustaceanvim')
end)
