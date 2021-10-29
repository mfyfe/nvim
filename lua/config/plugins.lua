local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  use { 'wbthomason/packer.nvim', opt = true }

  -- Styling
  use { 'sainnhe/edge' }

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

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

  -- LSP Trouble view
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
      }
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
  use {
    'terrortylor/nvim-comment',
    run = require('nvim_comment').setup(),
  }

  -- Status line
  use {
    'hoob3rt/lualine.nvim',
    run = require('lualine').setup({
      options = {
        icons_enabled = false,
        theme = 'onedark',
        section_separators = '',
        component_separators = '',
        path = 1,
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', {'diagnostics', sources = {"nvim_lsp"}}},
        lualine_d = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
    })
  }

end)
