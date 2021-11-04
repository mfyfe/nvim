
-- Skip cache, always reload plugins file.
package.loaded['config.plugins'] = nil
package.loaded['config.keybindings'] = nil

require('config.vim')
require('config.plugins')
require('config.telescope')
require('config.treesitter')
require('config.completion')
require('config.lsp')
require('config.keybindings')

-- Edge
-- vim.g.edge_style = 'default'
-- vim.g.edge_show_eob = 1
-- vim.g.edge_enable_italic = 1
-- vim.g.edge_transparent_background = 0
-- vim.g.edge_menu_selection_background = 'blue'
-- vim.g.edge_diagnostic_text_highlight = 0
-- vim.g.edge_diagnostic_line_highlight = 0
-- vim.g.edge_diagnostic_virtual_text = 'grey'
-- vim.cmd('colorscheme edge')

-- Material
vim.cmd 'colorscheme material'
vim.g.material_style = 'deep ocean'

-- WSL clipboard
-- vim.g.clipboard = {
--     name = "win32yank-wsl",
--     copy = {
--         ["+"] = "win32yank.exe -i --crlf",
--         ["*"] = "win32yank.exe -i --crlf"
--     },
--     paste = {
--         ["+"] = "win32yank.exe -o --lf",
--         ["*"] = "win32yank.exe -o --lf"
--     },
--     cache_enable = 0,
-- }
