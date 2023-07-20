local telescope = require('telescope')
local actions = require('telescope.actions');
local action_set = require("telescope.actions.set")

telescope.load_extension("live_grep_args")

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
