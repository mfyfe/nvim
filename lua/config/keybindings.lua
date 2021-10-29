local remap = vim.api.nvim_set_keymap

-- Normal Mode

-- TroubleToggle view
remap('n', '<leader>tt', ':TroubleToggle<CR>', {noremap = true})

-- Alt+J/K: Move cursor 10 lines.
remap('n', '<A-j>', '10j', {noremap = true})
remap('n', '<A-k>', '10k', {noremap = true})
-- Ctrl+J/K: Move cursor 5 lines.
remap('n', '<C-j>', '5j', {noremap = true})
remap('n', '<C-k>', '5k', {noremap = true})

-- Alt+Shift+J/K: Move current line up or down by 1.
remap('n', '<A-J>', ':m .+1<CR>', {noremap = true})
remap('n', '<A-K>', ':m .-2<CR>', {noremap = true})

-- Split window vertically and go to new pane.
remap('n', '<leader>v', '<C-w>v', {noremap = true})

----

-- Visual mode

-- Alt+J/K: Move cursor 10 lines.
remap('v', '<A-j>', '10j', {noremap = true})
remap('v', '<A-k>', '10k', {noremap = true})
-- Ctrl+J/K: Move cursor 5 lines.
remap('v', '<C-j>', '5j', {noremap = true})
remap('v', '<C-k>', '5k', {noremap = true})

-- Alt+Shift+J/K: Move selection up or down by 1.
remap('v', '<A-J>', ":m '>+1<CR>gv=gv", {noremap = true})
remap('v', '<A-K>', ":m '<-2<CR>gv=gv", {noremap = true})

