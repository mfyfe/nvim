local remap = vim.api.nvim_set_keymap
local opts  = { noremap = true, silent = true }

-- Normal Mode

-- Toggle inline LSP diagnostics
remap('n', '<leader>D', ':ToggleDiagOn<CR>', opts) -- toggle diagnostics on
remap('n', '<leader>d-', ':ToggleDiagOff<CR>', opts) -- toggle diagnostics off

-- Write file
remap('n', '<leader>w', ':w<CR>', opts)

-- Jump to parent enclosure
remap('n', '^', '[{', opts);

-- Toggle NeoTree.
remap('n', '<leader>dd', ':NeoTreeRevealToggle<CR>', opts)

-- Split window vertically and go to new pane.
remap('n', '<leader>v', '<C-w>v', opts)

-- Reload nvim config.
remap('n', '<leader>rc', ':so ~/.config/nvim/init.lua<CR>:echo "Config Reloaded"<CR>', opts)

-- TroubleToggle view
remap('n', '<leader>tt', ':TroubleToggle document_diagnostics<CR>', opts)

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

-- Displays hover information about the symbol under the cursor.
remap('n', '<leader>k', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)

-- Open a floating window with the diagnostics from {line_nr}
remap('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)

-- Toggle invisible characters.
remap('n', '<leader>tw', ':set list!<CR>', opts);

-- Adjust indent size.
remap('n', '<leader>i2', ':set shiftwidth=2<CR>:set tabstop=2<CR>:echo "Indent 2 spaces"<CR>', opts)
remap('n', '<leader>i4', ':set shiftwidth=4<CR>:set tabstop=4<CR>:echo "Indent 4 spaces"<CR>', opts)

-- Prevent x and the delete key from overriding what's in the clipboard.
remap('n', 'x', '"_x', opts)
remap('n', 'X', '"_x', opts)
remap('n', '<Del>', '"_x', opts)

-- Jump to enclosing block
remap('n', '^', '[{', opts);

-- Change foldmethod
remap('n', '<leader>fmi', ':set foldmethod=indent<CR>', opts); -- fold method indent
remap('n', '<leader>fme', ':set foldmethod=expr<CR>', opts); -- fold method expr
remap('n', '<leader>fmm', ':set foldmethod=manual<CR>', opts); -- fold method manual
remap('n', '<leader>sfm', ':set foldmethod?<CR>', opts); -- show fold method

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
remap('v', '<C-_>', ":CommentToggle<CR>", opts) -- VSCode

-- Search within visual selection
remap('v', '/', '<Esc>/\\%V', opts)

----

-- Telescope
remap("n", "<leader>ff", ":Telescope find_files <CR>", opts) -- Find files
remap("n", "<leader>fg", ":Telescope git_status <CR>", opts) -- Find git files
remap("n", "<leader>fb", ":Telescope buffers <CR>", opts) -- Find in buffers
remap("n", "<leader>fd", ":Telescope find_files cwd=%:h <CR>", opts) -- Find in directory
remap("n", "<leader>fc", ":Telescope find_files cwd=~/.config/nvim <CR>", opts) -- Find in nvim config.
remap("n", "<leader>lg", ":Telescope live_grep <CR>", opts)
-- remap("n", "<leader>o", ":Telescope lsp_document_symbols symbols='method' <CR>", opts)
-- remap("n", "<leader>tt", ":Telescope <CR>", opts)
-- remap("n", "<leader>tds", ":Telescope lsp_document_symbols <CR>", opts)
-- remap("n", "<leader>tof", ":Telescope oldfiles <CR>", opts)
-- remap("n", "<leader>tdd", ":Telescope lsp_document_diagnostics <CR>", opts)
-- remap("n", "<leader>twd", ":Telescope lsp_workspace_diagnostics <CR>", opts)
-- remap("n", "<leader>tgs", ":Telescope git_status <CR>", opts)

