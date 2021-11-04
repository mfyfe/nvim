local remap = vim.api.nvim_set_keymap
local opts  = { noremap = true, silent = true }

-- Normal Mode

-- Toggle NvimTree.
remap('n', '<leader>d', ':NvimTreeToggle<CR>', opts)

-- Split window vertically and go to new pane.
remap('n', '<leader>v', '<C-w>v', opts)

-- Reload nvim config.
remap('n', '<leader>rc', ':so ~/.config/nvim/init.lua<CR>', opts)

-- TroubleToggle view
remap('n', '<leader>tt', ':TroubleToggle<CR>', opts)

-- Comment toggle current line.
remap('n', '<leader>c', ":CommentToggle<CR>", opts)

-- Alt+J/K: Move cursor 10 lines.
remap('n', '<A-j>', '10j', opts)
remap('n', '<A-k>', '10k', opts)
-- Ctrl+J/K: Move cursor 5 lines.
remap('n', '<C-j>', '5j', opts)
remap('n', '<C-k>', '5k', opts)

-- Alt+Shift+J/K: Move current line up or down by 1.
remap('n', '<A-J>', ':m .+1<CR>', opts)
remap('n', '<A-K>', ':m .-2<CR>', opts)

----

-- Visual mode

-- Alt+J/K: Move cursor 10 lines.
remap('v', '<A-j>', '10j', opts)
remap('v', '<A-k>', '10k', opts)
-- Ctrl+J/K: Move cursor 5 lines.
remap('v', '<C-j>', '5j', opts)
remap('v', '<C-k>', '5k', opts)

-- Alt+Shift+J/K: Move selection up or down by 1.
remap('v', '<A-J>', ":m '>+1<CR>gv=gv", opts)
remap('v', '<A-K>', ":m '<-2<CR>gv=gv", opts)

-- Comment toggle selection.
remap('v', '<leader>c', ":CommentToggle<CR>", opts)


----

-- Telescope
remap("n", "<leader>ff", ":Telescope find_files <CR>", opts) -- Find files
remap("n", "<leader>fb", ":Telescope buffers <CR>", opts) -- Find in buffers
remap("n", "<leader>fd", ":Telescope find_files cwd=%:h <CR>", opts) -- Find in directory
remap("n", "<leader>fc", ":Telescope find_files cwd=~/.config/nvim <CR>", opts) -- Find in nvim config.
-- remap("n", "<leader>o", ":Telescope lsp_document_symbols symbols='method' <CR>", opts)
-- remap("n", "<leader>tt", ":Telescope <CR>", opts)
-- remap("n", "<leader>tds", ":Telescope lsp_document_symbols <CR>", opts)
-- remap("n", "<leader>tof", ":Telescope oldfiles <CR>", opts)
-- remap("n", "<leader>tdd", ":Telescope lsp_document_diagnostics <CR>", opts)
-- remap("n", "<leader>twd", ":Telescope lsp_workspace_diagnostics <CR>", opts)
-- remap("n", "<leader>tlg", ":Telescope live_grep <CR>", opts)
-- remap("n", "<leader>tgs", ":Telescope git_status <CR>", opts)

