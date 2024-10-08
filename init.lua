local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "nvim-lua/plenary.nvim",
  "nvim-tree/nvim-web-devicons",
  "MunifTanjim/nui.nvim",
  "3rd/image.nvim",
  "nvim-treesitter/nvim-treesitter",
  "jose-elias-alvarez/null-ls.nvim",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/cmp-emoji",
  "kirasok/cmp-hledger",
  "hrsh7th/nvim-cmp",
  "rafamadriz/friendly-snippets",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "nvim-neo-tree/neo-tree.nvim",
  "mrbjarksen/neo-tree-diagnostics.nvim",
  "lewis6991/gitsigns.nvim",
  "nvim-telescope/telescope.nvim",
  "nvim-pack/nvim-spectre",
  "nvim-lualine/lualine.nvim",
  "kdheepak/lazygit.nvim",
  "nvimdev/dashboard-nvim",
  "stevearc/conform.nvim",
  "lukas-reineke/indent-blankline.nvim",
  "echasnovski/mini.nvim",
  "echasnovski/mini.comment",
  "tpope/vim-surround",
  "tpope/vim-fugitive",
  "lewis6991/gitsigns.nvim",
  "RRethy/vim-illuminate",
  "nvim-treesitter/nvim-treesitter-context",
  "windwp/nvim-ts-autotag",
  "stevearc/dressing.nvim",
  "ledger/vim-ledger",
  "chrisbra/csv.vim",
  "rose-pine/neovim",
})

