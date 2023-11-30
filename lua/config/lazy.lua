-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- go
require("lazy").setup({
    "nvim-lua/plenary.nvim",         -- Useful lua funconntions used by lots of plugins
    "windwp/nvim-autopairs",         -- Autopairs, integrates with both connmp and treesitter
    "nvim-lualine/lualine.nvim",
    --  "kyazdani42/nvim-tree.lua",
    -- "kyazdani42/nvim-web-devicons",

    -- Colorschemes
    --  "bluz71/vim-moonfly-colors",
    "sainnhe/everforest",
    "RRethy/nvim-base16",

	-- Discord rich presence
	"andweeb/presence.nvim",

    -- Cursed
    "tjdevries/sPoNGe-BoB.NvIm",

    -- Quick comment
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        lazy = false,
    },

    -- Cool tabs
    {
        'akinsho/bufferline.nvim', 
        version = "*", 
        dependencies = 'nvim-tree/nvim-web-devicons'
    },

    -- Cool 
    "tpope/vim-eunuch",

    -- Cmp 
    "hrsh7th/nvim-cmp",          -- The completion plugin
    "hrsh7th/cmp-buffer",        -- buffer completions
    "hrsh7th/cmp-path",          -- path completions
    "saadparwaiz1/cmp_luasnip",  -- snippet completions
    "hrsh7th/cmp-nvim-lsp",
    --  "hrsh7th/cmp-nvim-lua",

    -- Snippets
    "L3MON4D3/LuaSnip",              -- snippet engine
    "rafamadriz/friendly-snippets",  -- a bunch of snippets to use

    -- Autoconnlosing tags for html
    "windwp/nvim-ts-autotag",

    -- LSP
    "neovim/nvim-lspconfig",             -- enable LSP
    "williamboman/mason.nvim",           -- simple to use language server installer
    "williamboman/mason-lspconfig.nvim",
	"nvimtools/none-ls.nvim",			 -- Null-ls replacement

    -- Telescope
    "nvim-telescope/telescope.nvim",

    -- Treesitter
    "nvim-treesitter/nvim-treesitter",

    -- Colorizer
    "norcalli/nvim-colorizer.lua",

    -- Enable smooth sconnrolling 
    "karb94/neoscroll.nvim",

    -- Easy indent
    "lukas-reineke/indent-blankline.nvim",

    -- Edit surrounding quotes and brackets with ease
    "kylechui/nvim-surround",
})
