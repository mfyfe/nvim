local execute = vim.api.nvim_command
local fn = vim.fn

return require('packer').startup(function()

  use { 'wbthomason/packer.nvim' }

  -- Debug Adapter Protocol
  use "mfussenegger/nvim-dap"
  use "rcarriga/nvim-dap-ui"
  use "theHamsta/nvim-dap-virtual-text"
  -- use "nvim-telescope/telescope-dap.nvim"

  -- Refactoring
  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
      {"nvim-lua/plenary.nvim"},
      {"nvim-treesitter/nvim-treesitter"}
    }
  }

  -- Prettier
  use { 'sbdchd/neoformat' }

  -- Abolish
  use { 'tpope/vim-abolish' }

  -- Styling
  use { 'marko-cerovac/material.nvim' }

  -- Telescope finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      "nvim-telescope/telescope-live-grep-args.nvim"
    }
  }

  -- Mark lines with git changes
  use { 'mhinz/vim-signify' }

  -- Syntax parsing
  use {
    'nvim-treesitter/nvim-treesitter',
    'nvim-treesitter/playground',
  }

  -- LSP servers
  use {
    'neovim/nvim-lspconfig',
    'lspcontainers/lspcontainers.nvim'
  }

  -- Turn LSP diagnostics on and off
  use {
    'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim'
  }

  -- LSP Trouble view
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  }

  -- Completion
  use { 
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/vim-vsnip',
      'hrsh7th/vim-vsnip-integ',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lua',
      'f3fora/cmp-spell',
    },
  }

  -- Commenting
  use "terrortylor/nvim-comment"
  require('nvim_comment').setup()

  -- HTML completion
  use { 'mattn/emmet-vim' }

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

end)
