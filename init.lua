
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
require "config.dap"

-- Material 
-- NOTE style must be set before setting colorscheme.
vim.g.material_style = 'deep ocean'
vim.cmd 'colorscheme material'

-- Display relative numbers on each buffer.
vim.api.nvim_exec('au BufWinEnter c set relativenumber' , false)

-- Prettier plugin
vim.cmd('let g:neoformat_try_node_exe = 1')

-- WSL yank support.
vim.api.nvim_exec(
[[
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
]],
true)
