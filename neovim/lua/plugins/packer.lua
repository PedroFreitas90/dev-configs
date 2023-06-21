vim.cmd.packadd("packer.nvim")
return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"
    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.1",
        requires = {
            {
                "nvim-lua/plenary.nvim"
            }
        }
    }
    use { 
        "nvim-telescope/telescope-fzf-native.nvim", 
        run = "make" 
    }
    use {
        "rose-pine/neovim",
        as = "rose-pine",
        config = function()
            vim.cmd("colorscheme rose-pine")
        end
    }
    use {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                group = true,
                signs = {
                    error = "error",
                    warning = "warn",
                    hint = "hint",
                    information = "info"
                },
                use_diagnostic_signs = false
            }
        end
    }
    use {
        "akinsho/toggleterm.nvim",
        tag = "*",
        config = function()
            require("toggleterm").setup {
                open_mapping = [[<a-\>]],
                direction = "horizontal"
            }
        end
    }
    use "nvim-treesitter/nvim-treesitter-context";
    use {
        "nvim-treesitter/nvim-treesitter",
        run = function()
            local ts_update = require("nvim-treesitter.install").update {
                with_sync = true
            }
            ts_update()
        end,
    }

    use "tpope/vim-fugitive"
    use "mbbill/undotree"
    use "mfussenegger/nvim-jdtls"
    use "mfussenegger/nvim-dap"
    use {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        requires = {
            {"neovim/nvim-lspconfig"},
            {"williamboman/mason.nvim"},
            {"williamboman/mason-lspconfig.nvim"},
            {"hrsh7th/nvim-cmp"},
            {"hrsh7th/cmp-buffer"},
            {"hrsh7th/cmp-path"},
            {"saadparwaiz1/cmp_luasnip"},
            {"hrsh7th/cmp-nvim-lsp"},
            {"hrsh7th/cmp-nvim-lua"},
            {"L3MON4D3/LuaSnip"},
            {"rafamadriz/friendly-snippets"},
        }
    }
end)
