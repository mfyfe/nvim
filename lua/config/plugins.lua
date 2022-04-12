local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  use { 'wbthomason/packer.nvim', opt = true }

  -- Styling
  use { 'marko-cerovac/material.nvim' }

  -- Telescope finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }

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
  use "terrortylor/nvim-comment"
  require('nvim_comment').setup()

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = 'auto',
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      disabled_filetypes = {},
      always_divide_middle = true,
      globalstatus = false,
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {'filename'},
      lualine_x = {'encoding', 'fileformat', 'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {},
    extensions = {}
  }

  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v1.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim" 
    },
    config = function ()
      -- See ":help neo-tree-highlights" for a list of available highlight groups
      vim.cmd([[
      hi link NeoTreeDirectoryName Directory
      hi link NeoTreeDirectoryIcon NeoTreeDirectoryName
      ]])

      require("neo-tree").setup({
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = true,
        filesystem = {
          filters = { --These filters are applied to both browsing and searching
          show_hidden = false,
          respect_gitignore = true,
        },
        follow_current_file = false, -- This will find and focus the file in the
        -- active buffer every time the current file is changed while the tree is open.
        use_libuv_file_watcher = false, -- This will use the OS level file watchers
        -- to detect changes instead of relying on nvim autocmd events.
        window = {
          position = "left",
          width = 40,
          mappings = {
            ["<2-LeftMouse>"] = "open",
            ["<cr>"] = "open",
            ["S"] = "open_split",
            ["s"] = "open_vsplit",
            ["C"] = "close_node",
            ["<bs>"] = "navigate_up",
            ["."] = "set_root",
            ["H"] = "toggle_hidden",
            ["I"] = "toggle_gitignore",
            ["R"] = "refresh",
            ["/"] = "filter_as_you_type",
            --["/"] = "none" -- Assigning a key to "none" will remove the default mapping
            ["f"] = "filter_on_submit",
            ["<c-x>"] = "clear_filter",
            ["a"] = "add",
            ["d"] = "delete",
            ["r"] = "rename",
            ["c"] = "copy_to_clipboard",
            ["x"] = "cut_to_clipboard",
            ["p"] = "paste_from_clipboard",
          }
        }
      },
      buffers = {
        show_unloaded = true,
        window = {
          position = "left",
          mappings = {
            ["<2-LeftMouse>"] = "open",
            ["<cr>"] = "open",
            ["S"] = "open_split",
            ["s"] = "open_vsplit",
            ["<bs>"] = "navigate_up",
            ["."] = "set_root",
            ["R"] = "refresh",
            ["a"] = "add",
            ["d"] = "delete",
            ["r"] = "rename",
            ["c"] = "copy_to_clipboard",
            ["x"] = "cut_to_clipboard",
            ["p"] = "paste_from_clipboard",
            ["bd"] = "buffer_delete",
          }
        },
      },
      git_status = {
        window = {
          position = "float",
          mappings = {
            ["<2-LeftMouse>"] = "open",
            ["<cr>"] = "open",
            ["S"] = "open_split",
            ["s"] = "open_vsplit",
            ["C"] = "close_node",
            ["R"] = "refresh",
            ["d"] = "delete",
            ["r"] = "rename",
            ["c"] = "copy_to_clipboard",
            ["x"] = "cut_to_clipboard",
            ["p"] = "paste_from_clipboard",
            ["A"]  = "git_add_all",
            ["gu"] = "git_unstage_file",
            ["ga"] = "git_add_file",
            ["gr"] = "git_revert_file",
            ["gc"] = "git_commit",
            ["gp"] = "git_push",
            ["gg"] = "git_commit_and_push",
          }
        }
      }
    })
  end
}

end)
