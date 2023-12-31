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
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
    { "nvim-lua/popup.nvim" }, 
    { "nvim-lua/plenary.nvim" }, 

    -- colorscheme 
    { "lunarvim/darkplus.nvim"}, 
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    }, 

    -- cmp plugins
    { "hrsh7th/nvim-cmp"},  -- The completion plugin
    { "hrsh7th/cmp-buffer"}, -- buffer completions
    { "hrsh7th/cmp-path"},  -- path completions
    { "hrsh7th/cmp-cmdline"},  -- cmdline completions
    { "saadparwaiz1/cmp_luasnip"},  -- snippet completions
    { "hrsh7th/cmp-nvim-lsp"},  -- cmdline completions

    -- snippets
    { "L3MON4D3/LuaSnip"},  --snippet engine
    { "rafamadriz/friendly-snippets"},  -- a bunch of snippets to 

    -- Auto pair 
    { 'windwp/nvim-autopairs' },

    -- LSP
    { "neovim/nvim-lspconfig"}, -- enable LSP
    { "williamboman/mason.nvim"}, -- simple to { language server installer
    { "williamboman/mason-lspconfig.nvim"}, -- simple to { language server installer
    { 'jose-elias-alvarez/null-ls.nvim'}, -- LSP diagnostics and code actions
    { 'nvim-treesitter/nvim-treesitter', build= ':TSUpdate'}, 
    { 'p00f/nvim-ts-rainbow' },




    -- Telescope 
    { 'nvim-telescope/telescope.nvim' },
    { 'nvim-telescope/telescope-media-files.nvim'}, 

    -- Comment 
    { 'numToStr/Comment.nvim' }, 
    { 'JoosepAlviste/nvim-ts-context-commentstring'}, 
    
    -- Nvim tree  
    { 'kyazdani42/nvim-web-devicons'}, 
    { 'kyazdani42/nvim-tree.lua'}, 
    { 's1n7ax/nvim-window-picker'}, 

    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }, 
    }, 
})


