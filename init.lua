
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

-- Material 
-- NOTE: style must be set before setting colorscheme.
vim.g.material_style = 'deep ocean'
vim.cmd 'colorscheme material'

-- Display relative numbers on each buffer.
vim.api.nvim_exec('au BufWinEnter c set relativenumber' , false)

vim.cmd('let g:neoformat_try_node_exe = 1')
