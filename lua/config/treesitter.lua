local read_query = function(filename)
  return table.concat(vim.fn.readfile(vim.fn.expand(filename)), "\n")
end

require('nvim-treesitter.configs').setup{
  ensure_installed = "maintained",
  highlight = { 
    enable = true,
    -- additional_vim_regex_highlighting = false,
  },
}

vim.treesitter.set_query("php", "folds", read_query("~/.config/nvim/queries/php/folds.scm"))
-- vim.treesitter.set_query("php", "highlights", read_query("~/.config/nvim/queries/php/highlights.scm"))
