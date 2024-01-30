-- Alias for global kemap command
local km = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Map windows commands, i.e., <C-w> commands to <leader>w
km("n", "<leader>w", "<C-w>", opts)

-- Buffer commands
km("n", "<leader>bb", ":ls<cr>", opts)
km("n", "<leader>bn", ":bn<cr>", opts)
km("n", "<leader>bd", ":bd<cr>", opts)
