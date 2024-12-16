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
        "craftzdog/solarized-osaka.nvim",
        --"ellisonleao/gruvbox.nvim",
        config = function()
            vim.cmd [[colorscheme solarized-osaka]]
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


    use { "ellisonleao/glow.nvim", config = function() require("glow").setup() end }

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

    use('ThePrimeagen/vim-be-good')
end)
