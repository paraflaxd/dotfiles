-- NOTE: Use :so to load the file
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use "windwp/nvim-ts-autotag"

    use 'xiyaowong/transparent.nvim'

    use 'neovim/nvim-lspconfig'
    use 'MunifTanjim/prettier.nvim'

    use 'nvimtools/none-ls.nvim'
    use 'jay-babu/mason-null-ls.nvim'
    use "hrsh7th/nvim-cmp"

    use "saadparwaiz1/cmp_luasnip"
    use "rafamadriz/friendly-snippets"

    use({ "rambhosale/cmp-bootstrap.nvim",
        requires = {
            { "nvim-cmp" },
        },
        after = "nvim-cmp",
        event = "InsertEnter",
    })

    use({
        "nvim-lua/plenary.nvim",
    })

    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    use({
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} },
    })

    use({
        "epwalsh/obsidian.nvim",
        tag = "*",  -- recommended, use latest release instead of latest commit
        requires = {
            -- Required.
            "nvim-lua/plenary.nvim",
        },
    })

    use({
       "rose-pine/neovim",
       as = "rose-pine",
       config = function()
           vim.cmd('colorscheme rose-pine')
       end
   })

   use {
       'VonHeikemen/lsp-zero.nvim',
       branch = 'v3.x',
       requires = {
           --- Uncomment the two plugins below if you want to manage the language servers from neovim
           --- and read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
           {'williamboman/mason.nvim'},
           {'williamboman/mason-lspconfig.nvim'},

           -- LSP Support
           {'neovim/nvim-lspconfig'},
           -- Autocompletion
           {'hrsh7th/nvim-cmp'},
           {'hrsh7th/cmp-nvim-lsp'},
           {'L3MON4D3/LuaSnip'},
       }
   }

   use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
   use("mbbill/undotree")
   use("tpope/vim-fugitive")
end)
