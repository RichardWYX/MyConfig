return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Undotree
    use 'mbbill/undotree'

    -- Barbar
    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    }

    -- nvim-tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- Comment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    --Surround
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    use 'nvim-lua/lsp-status.nvim'
    use 'neovim/nvim-lspconfig' -- LSP
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin

    -- Colorscheme
    use 'Mofiqul/vscode.nvim'

    -- 状态条
    use 'nvim-lualine/lualine.nvim'

    -- 初始面板
    use 'glepnir/dashboard-nvim'

    -- 快捷键提示
    use "folke/which-key.nvim"

    -- 内置终端插件
    use {"akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
        require("toggleterm").setup()
    end}

    -- 模糊查找
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} , {
            'nvim-treesitter/nvim-treesitter',
            run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
        }}
    }
    use "nvim-telescope/telescope-file-browser.nvim"
    use 'rmagatti/auto-session'
    use "williamboman/nvim-lsp-installer"
    -- nvim-cmp
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    -- vsnip
    use {'hrsh7th/cmp-vsnip'} 
    use {'hrsh7th/vim-vsnip'}
    use {'rafamadriz/friendly-snippets'}
    -- lspkind
    use {'onsails/lspkind-nvim'}
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

end)

