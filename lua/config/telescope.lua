local telescope = require('telescope')
local actions = require('telescope.actions');
local action_set = require("telescope.actions.set")

local files = {
  hidden = true,
  attach_mappings = function(_)
    action_set.select:enhance({
      post = function()
        vim.cmd(":normal! zx")
      end,
    })
    return true
  end,
}

telescope.setup({
  defaults = {
    file_ignore_patterns = {
      "%.git",
    },
    mappings = {
      i = {
        ["<C-]>"] = actions.close,
        ["<esc>"] = actions.close,
      },
      n = {
        ["<esc>"] = actions.close,
      },
    },
    layout_config = {
      horizontal = {
         height = 0.75,
         width  = 0.75,
         preview_width = 0.45,
      },
    },
  },
  pickers = {
    find_files = files,
    buffers = files,
    oldfiles = files,
    live_grep = files,
    gitstatus = files,
  },
})

local opts  = { noremap = true, silent = true }
local remap = vim.api.nvim_set_keymap

remap("n", "<leader>fb", ":Telescope buffers <CR>", opts)
remap("n", "<leader>ff", ":Telescope find_files <CR>", opts)

-- remap("n", "<leader>;", ":Telescope find_files cwd=%:h <CR>", opts)
-- remap("n", "<leader>o", ":Telescope lsp_document_symbols symbols='method' <CR>", opts)
-- remap("n", "<leader>tt", ":Telescope <CR>", opts)
-- remap("n", "<leader>tds", ":Telescope lsp_document_symbols <CR>", opts)
-- remap("n", "<leader>tof", ":Telescope oldfiles <CR>", opts)
-- remap("n", "<leader>t.", ":Telescope find_files cwd=~/.config/nvim <CR>", opts)
-- remap("n", "<leader>tdd", ":Telescope lsp_document_diagnostics <CR>", opts)
-- remap("n", "<leader>twd", ":Telescope lsp_workspace_diagnostics <CR>", opts)
-- remap("n", "<leader>tlg", ":Telescope live_grep <CR>", opts)
-- remap("n", "<leader>tgs", ":Telescope git_status <CR>", opts)


